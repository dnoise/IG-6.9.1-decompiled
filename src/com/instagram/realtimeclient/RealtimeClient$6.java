// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import com.a.a.a;
import com.facebook.l.a.d;
import java.net.Socket;
import org.apache.http.conn.ssl.SSLSocketFactory;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeClient

class this._cls0 extends a
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

                final RealtimeClient._cls6 this$1;

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
                this$1 = RealtimeClient._cls6.this;
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

    _cls1()
    {
        this$0 = RealtimeClient.this;
        super();
    }
}
