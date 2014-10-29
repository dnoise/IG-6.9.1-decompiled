// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package android.support.v4.app:
//            bx, cg, ai, ch, 
//            ce

final class cf
    implements ServiceConnection, android.os.Handler.Callback
{

    private final Context a;
    private final HandlerThread b = new HandlerThread("NotificationManagerCompat");
    private final Handler c;
    private final Map d = new HashMap();
    private Set e;

    public cf(Context context)
    {
        e = new HashSet();
        a = context;
        b.start();
        c = new Handler(b.getLooper(), this);
    }

    private void a()
    {
        Set set = bx.b(a);
        if (!set.equals(e))
        {
            e = set;
            List list = a.getPackageManager().queryIntentServices((new Intent()).setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
            HashSet hashset = new HashSet();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ResolveInfo resolveinfo = (ResolveInfo)iterator.next();
                if (set.contains(resolveinfo.serviceInfo.packageName))
                {
                    ComponentName componentname1 = new ComponentName(resolveinfo.serviceInfo.packageName, resolveinfo.serviceInfo.name);
                    if (resolveinfo.serviceInfo.permission != null)
                    {
                        (new StringBuilder("Permission present on component ")).append(componentname1).append(", not adding listener record.");
                    } else
                    {
                        hashset.add(componentname1);
                    }
                }
            } while (true);
            Iterator iterator1 = hashset.iterator();
            do
            {
                if (!iterator1.hasNext())
                {
                    break;
                }
                ComponentName componentname = (ComponentName)iterator1.next();
                if (!d.containsKey(componentname))
                {
                    if (Log.isLoggable("NotifManCompat", 3))
                    {
                        (new StringBuilder("Adding listener record for ")).append(componentname);
                    }
                    d.put(componentname, new cg(componentname));
                }
            } while (true);
            Iterator iterator2 = d.entrySet().iterator();
            while (iterator2.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator2.next();
                if (!hashset.contains(entry.getKey()))
                {
                    if (Log.isLoggable("NotifManCompat", 3))
                    {
                        (new StringBuilder("Removing listener record for ")).append(entry.getKey());
                    }
                    b((cg)entry.getValue());
                    iterator2.remove();
                }
            }
        }
    }

    private void a(ComponentName componentname)
    {
        cg cg1 = (cg)d.get(componentname);
        if (cg1 != null)
        {
            b(cg1);
        }
    }

    private void a(ComponentName componentname, IBinder ibinder)
    {
        cg cg1 = (cg)d.get(componentname);
        if (cg1 != null)
        {
            cg1.c = ai.a(ibinder);
            cg1.e = 0;
            d(cg1);
        }
    }

    private boolean a(cg cg1)
    {
        if (cg1.b)
        {
            return true;
        }
        Intent intent = (new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL")).setComponent(cg1.a);
        cg1.b = a.bindService(intent, this, bx.a());
        if (cg1.b)
        {
            cg1.e = 0;
        } else
        {
            (new StringBuilder("Unable to bind to listener ")).append(cg1.a);
            a.unbindService(this);
        }
        return cg1.b;
    }

    private void b(ComponentName componentname)
    {
        cg cg1 = (cg)d.get(componentname);
        if (cg1 != null)
        {
            d(cg1);
        }
    }

    private void b(cg cg1)
    {
        if (cg1.b)
        {
            a.unbindService(this);
            cg1.b = false;
        }
        cg1.c = null;
    }

    private void b(ch ch1)
    {
        a();
        cg cg1;
        for (Iterator iterator = d.values().iterator(); iterator.hasNext(); d(cg1))
        {
            cg1 = (cg)iterator.next();
            cg1.d.add(ch1);
        }

    }

    private void c(cg cg1)
    {
        if (c.hasMessages(3, cg1.a))
        {
            return;
        }
        cg1.e = 1 + cg1.e;
        if (cg1.e > 6)
        {
            (new StringBuilder("Giving up on delivering ")).append(cg1.d.size()).append(" tasks to ").append(cg1.a).append(" after ").append(cg1.e).append(" retries");
            cg1.d.clear();
            return;
        }
        int i = 1000 * (1 << -1 + cg1.e);
        if (Log.isLoggable("NotifManCompat", 3))
        {
            (new StringBuilder("Scheduling retry for ")).append(i).append(" ms");
        }
        Message message = c.obtainMessage(3, cg1.a);
        c.sendMessageDelayed(message, i);
    }

    private void d(cg cg1)
    {
        if (Log.isLoggable("NotifManCompat", 3))
        {
            (new StringBuilder("Processing component ")).append(cg1.a).append(", ").append(cg1.d.size()).append(" queued tasks");
        }
        if (!cg1.d.isEmpty()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!a(cg1) || cg1.c == null)
        {
            c(cg1);
            return;
        }
_L4:
        ch ch1;
        ch1 = (ch)cg1.d.peek();
        if (ch1 == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        if (Log.isLoggable("NotifManCompat", 3))
        {
            (new StringBuilder("Sending task ")).append(ch1);
        }
        ch1.a(cg1.c);
        cg1.d.remove();
        if (true) goto _L4; else goto _L3
_L3:
        DeadObjectException deadobjectexception;
        deadobjectexception;
        if (Log.isLoggable("NotifManCompat", 3))
        {
            (new StringBuilder("Remote service has died: ")).append(cg1.a);
        }
_L5:
        if (!cg1.d.isEmpty())
        {
            c(cg1);
            return;
        }
          goto _L1
        RemoteException remoteexception;
        remoteexception;
        (new StringBuilder("RemoteException communicating with ")).append(cg1.a);
          goto _L5
    }

    public final void a(ch ch1)
    {
        c.obtainMessage(0, ch1).sendToTarget();
    }

    public final boolean handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return false;

        case 0: // '\0'
            b((ch)message.obj);
            return true;

        case 1: // '\001'
            ce ce1 = (ce)message.obj;
            a(ce1.a, ce1.b);
            return true;

        case 2: // '\002'
            a((ComponentName)message.obj);
            return true;

        case 3: // '\003'
            b((ComponentName)message.obj);
            break;
        }
        return true;
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        if (Log.isLoggable("NotifManCompat", 3))
        {
            (new StringBuilder("Connected to service ")).append(componentname);
        }
        c.obtainMessage(1, new ce(componentname, ibinder)).sendToTarget();
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        if (Log.isLoggable("NotifManCompat", 3))
        {
            (new StringBuilder("Disconnected from service ")).append(componentname);
        }
        c.obtainMessage(2, componentname).sendToTarget();
    }
}
