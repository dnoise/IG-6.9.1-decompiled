// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import com.a.a.f;
import com.a.a.j;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.instagram.common.y.c.e;
import com.instagram.common.y.g.a;
import java.net.URI;
import java.util.Arrays;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeSubscription, RealtimeEventHandler, RealtimePatchEvent, RealtimeSubscribedEvent, 
//            RealtimeUnsubscribedEvent, RealtimeKeepaliveEvent, RealtimeErrorEvent, RealtimeSubscribeCommand, 
//            RealtimeSubscribeCommand__JsonHelper, RealtimeEvent

public class RealtimeClient
    implements j
{

    private static final String NETWORK_CONNECTIVITY_CHANGE = "android.net.conn.CONNECTIVITY_CHANGE";
    private static final ObjectMapper sMapper = new ObjectMapper();
    private static final long sMaxBackoffIntervalMs;
    private static final Executor sParseExecutor = e.a().a("RealtimeClient").c();
    private static final long sSubscribeTimeoutMs;
    private long mBackoffIntervalMs;
    private final BroadcastReceiver mBroadcastReceiver = new _cls5();
    private Context mContext;
    private RealtimeEventHandler mEventHandler;
    private boolean mIsBroadcastReceiverRegistered;
    private long mPingTimeoutMs;
    private final Runnable mPingTimeoutRunnable = new _cls4();
    private final Handler mRealtimeHandler = new Handler();
    private final Runnable mReconnectRunnable = new _cls1();
    private final Runnable mRefreshRunnable = new _cls2();
    private final com.a.a.e mSocketFactory = new _cls6();
    private final Runnable mSubscribeTimeoutRunnable = new _cls3();
    private RealtimeSubscription mSubscription;
    private f mWebSocketClient;

    public RealtimeClient(Context context)
    {
        mPingTimeoutMs = TimeUnit.SECONDS.toMillis(30L);
        mWebSocketClient = null;
        mBackoffIntervalMs = 0L;
        mContext = context;
    }

    private void cancelDelayedRunnables()
    {
        mRealtimeHandler.removeCallbacks(mReconnectRunnable);
        mRealtimeHandler.removeCallbacks(mRefreshRunnable);
        mRealtimeHandler.removeCallbacks(mSubscribeTimeoutRunnable);
        mRealtimeHandler.removeCallbacks(mPingTimeoutRunnable);
    }

    private void connect()
    {
        if (mWebSocketClient != null || mSubscription == null)
        {
            return;
        } else
        {
            cancelDelayedRunnables();
            java.util.List list = Arrays.asList(new Object[0]);
            mWebSocketClient = new f(URI.create(mSubscription.getURL()), list, mSocketFactory);
            mWebSocketClient.a(this);
            mWebSocketClient.b();
            return;
        }
    }

    private void disconnect()
    {
        cancelDelayedRunnables();
        if (mWebSocketClient != null)
        {
            mWebSocketClient.a();
            mWebSocketClient.c();
            mWebSocketClient = null;
            mEventHandler.onConnectionStatusChanged(RealtimeEventHandler.Status.NOT_CONNECTED);
        }
    }

    private void handleRealtimeEvent(RealtimeEvent realtimeevent)
    {
        if (realtimeevent instanceof RealtimePatchEvent)
        {
            RealtimePatchEvent realtimepatchevent = (RealtimePatchEvent)realtimeevent;
            mSubscription.updateSequence(realtimepatchevent.sequence);
            mEventHandler.onPatchEvent(realtimepatchevent);
        } else
        if (realtimeevent instanceof RealtimeSubscribedEvent)
        {
            mBackoffIntervalMs = 0L;
            mRealtimeHandler.removeCallbacks(mSubscribeTimeoutRunnable);
            mSubscription.updateSequence(((RealtimeSubscribedEvent)realtimeevent).sequence);
            mEventHandler.onConnectionStatusChanged(RealtimeEventHandler.Status.SUBSCRIBED);
            if (((RealtimeSubscribedEvent)realtimeevent).mustRefresh)
            {
                mEventHandler.onFeedRefreshRequested();
                return;
            }
        } else
        {
            if (realtimeevent instanceof RealtimeUnsubscribedEvent)
            {
                mEventHandler.onConnectionStatusChanged(RealtimeEventHandler.Status.CONNECTED);
                sendSubscribeMessage();
                return;
            }
            if (realtimeevent instanceof RealtimeKeepaliveEvent)
            {
                mPingTimeoutMs = TimeUnit.SECONDS.toMillis((long)((RealtimeKeepaliveEvent)realtimeevent).interval);
                onPing();
                return;
            }
            if (realtimeevent instanceof RealtimeErrorEvent)
            {
                unsubscribe();
                performWithBackoff(mRefreshRunnable);
                return;
            } else
            {
                getClass();
                return;
            }
        }
    }

    private void performWithBackoff(Runnable runnable)
    {
        long l;
        if (mBackoffIntervalMs == 0L)
        {
            l = 500L;
        } else
        {
            l = Math.min(2L * mBackoffIntervalMs, sMaxBackoffIntervalMs);
        }
        mBackoffIntervalMs = l;
        mRealtimeHandler.removeCallbacks(runnable);
        mRealtimeHandler.postDelayed(runnable, mBackoffIntervalMs);
    }

    private void sendSubscribeMessage()
    {
        if (mWebSocketClient == null)
        {
            return;
        }
        try
        {
            mRealtimeHandler.removeCallbacks(mSubscribeTimeoutRunnable);
            mRealtimeHandler.postDelayed(mSubscribeTimeoutRunnable, sSubscribeTimeoutMs);
            mWebSocketClient.a(RealtimeSubscribeCommand__JsonHelper.serializeToJson(new RealtimeSubscribeCommand(mSubscription)));
            return;
        }
        catch (Exception exception)
        {
            getClass();
        }
    }

    public RealtimeSubscription getSubscription()
    {
        return mSubscription;
    }

    public void onConnect()
    {
        getClass();
        mSubscription.getURL();
        mEventHandler.onConnectionStatusChanged(RealtimeEventHandler.Status.CONNECTED);
        cancelDelayedRunnables();
        sendSubscribeMessage();
        onPing();
    }

    public void onDisconnect(int i, String s)
    {
        getClass();
        Integer.valueOf(i);
        if (mWebSocketClient != null)
        {
            mWebSocketClient.a();
            mWebSocketClient.c();
            mWebSocketClient = null;
        }
        cancelDelayedRunnables();
        mEventHandler.onConnectionStatusChanged(RealtimeEventHandler.Status.NOT_CONNECTED);
        if (i != 0 && a.a(mContext))
        {
            performWithBackoff(mReconnectRunnable);
        }
    }

    public void onError(Exception exception)
    {
        com.facebook.e.a.a.a(getClass(), "Error: ", exception);
        onDisconnect(-1000, exception.toString());
    }

    public void onMessage(final String message)
    {
        getClass();
        sParseExecutor.execute(new _cls7());
    }

    public void onMessage(byte abyte0[])
    {
    }

    public void onPing()
    {
        mRealtimeHandler.removeCallbacks(mPingTimeoutRunnable);
        if (mWebSocketClient != null)
        {
            mRealtimeHandler.postDelayed(mPingTimeoutRunnable, mPingTimeoutMs);
        }
    }

    public void setEventHandler(RealtimeEventHandler realtimeeventhandler)
    {
        mEventHandler = realtimeeventhandler;
    }

    public void setSubscription(RealtimeSubscription realtimesubscription)
    {
        if (mSubscription == null)
        {
            mSubscription = realtimesubscription;
            return;
        }
        if (realtimesubscription == null)
        {
            unsubscribe();
            mSubscription = null;
            return;
        }
        if (mSubscription.getTopic().equals(realtimesubscription.getTopic()))
        {
            mSubscription.updateWithSubscription(realtimesubscription);
            return;
        } else
        {
            unsubscribe();
            mSubscription = realtimesubscription;
            return;
        }
    }

    public void subscribe()
    {
        getClass();
        mBackoffIntervalMs = 0L;
        if (!mIsBroadcastReceiverRegistered)
        {
            mContext.registerReceiver(mBroadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            mIsBroadcastReceiverRegistered = true;
        }
        connect();
    }

    public void unsubscribe()
    {
        getClass();
        if (mIsBroadcastReceiverRegistered)
        {
            mContext.unregisterReceiver(mBroadcastReceiver);
            mIsBroadcastReceiverRegistered = false;
        }
        disconnect();
    }

    static 
    {
        sMaxBackoffIntervalMs = TimeUnit.SECONDS.toMillis(10L);
        sSubscribeTimeoutMs = TimeUnit.SECONDS.toMillis(10L);
    }







    private class _cls1
        implements Runnable
    {

        final RealtimeClient this$0;

        public void run()
        {
            connect();
        }

        _cls1()
        {
            this$0 = RealtimeClient.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        final RealtimeClient this$0;

        public void run()
        {
            mEventHandler.onFeedRefreshRequested();
        }

        _cls2()
        {
            this$0 = RealtimeClient.this;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        final RealtimeClient this$0;

        public void run()
        {
            getClass();
            disconnect();
            connect();
        }

        _cls3()
        {
            this$0 = RealtimeClient.this;
            super();
        }
    }


    private class _cls4
        implements Runnable
    {

        final RealtimeClient this$0;

        public void run()
        {
            getClass();
            disconnect();
            connect();
        }

        _cls4()
        {
            this$0 = RealtimeClient.this;
            super();
        }
    }


    private class _cls5 extends BroadcastReceiver
    {

        final RealtimeClient this$0;

        public void onReceive(Context context, Intent intent)
        {
            NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (networkinfo == null)
            {
                return;
            }
            if (networkinfo.isConnected())
            {
                getClass();
                connect();
                return;
            } else
            {
                getClass();
                return;
            }
        }

        _cls5()
        {
            this$0 = RealtimeClient.this;
            super();
        }
    }


    private class _cls6 extends com.a.a.a
    {

        private SSLSocketFactory mSSLSocketFactory;
        final RealtimeClient this$0;

        private void ensureSSLSocketFactoryInitialized()
        {
            this;
            JVM INSTR monitorenter ;
            if (mSSLSocketFactory == null)
            {
                mSSLSocketFactory = SSLSocketFactory.getSocketFactory();
                class _cls1
                    implements com.facebook.l.a.a
                {

                    final _cls6 this$1;

                    public void badVerifyInvoked(String s, String as[], String as1[])
                    {
                        getClass();
                        Object aobj[] = new Object[3];
                        aobj[0] = s;
                        aobj[1] = Arrays.asList(as);
                        aobj[2] = Arrays.asList(as1);
                    }

                _cls1()
                {
                    this$1 = _cls6.this;
                    super();
                }
                }

                mSSLSocketFactory.setHostnameVerifier(new d(new _cls1()));
                getClass();
            }
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        public void connectSocket(Socket socket, String s, int i)
        {
            com.instagram.common.y.h.a.a().a(socket, s);
            super.connectSocket(socket, s, i);
        }

        public Socket createSocket(boolean flag)
        {
            if (flag)
            {
                ensureSSLSocketFactoryInitialized();
                return mSSLSocketFactory.createSocket();
            } else
            {
                return super.createSocket(false);
            }
        }

        _cls6()
        {
            this$0 = RealtimeClient.this;
            super();
        }
    }


    private class _cls7
        implements Runnable
    {

        final RealtimeClient this$0;
        final String val$message;

        public void run()
        {
            try
            {
                final RealtimeEvent event = (RealtimeEvent)RealtimeClient.sMapper.readValue(message, com/instagram/realtimeclient/RealtimeEvent);
                class _cls1
                    implements Runnable
                {

                    final _cls7 this$1;
                    final RealtimeEvent val$event;

                    public void run()
                    {
                        handleRealtimeEvent(event);
                    }

                _cls1()
                {
                    this$1 = _cls7.this;
                    event = realtimeevent;
                    super();
                }
                }

                mRealtimeHandler.post(new _cls1());
                return;
            }
            catch (IOException ioexception)
            {
                com.facebook.e.a.a.a(getClass(), "Could not parse message", ioexception);
            }
        }

        _cls7()
        {
            this$0 = RealtimeClient.this;
            message = s;
            super();
        }
    }

}
