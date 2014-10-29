// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

// Referenced classes of package com.facebook:
//            ah, ai, ao

final class ag
    implements ServiceConnection
{

    final Context a;
    final String b;
    final Handler c = new ah(this);
    ai d;
    boolean e;
    Messenger f;

    ag(Context context, String s)
    {
        Context context1 = context.getApplicationContext();
        if (context1 != null)
        {
            context = context1;
        }
        a = context;
        b = s;
    }

    private void a(Bundle bundle)
    {
        if (e)
        {
            e = false;
            ai ai1 = d;
            if (ai1 != null)
            {
                ai1.a(bundle);
                return;
            }
        }
    }

    private void a(Message message)
    {
        if (message.what == 0x10001)
        {
            Bundle bundle = message.getData();
            if (bundle.getString("com.facebook.platform.status.ERROR_TYPE") != null)
            {
                a(((Bundle) (null)));
            } else
            {
                a(bundle);
            }
            a.unbindService(this);
        }
    }

    static void a(ag ag1, Message message)
    {
        ag1.a(message);
    }

    private void c()
    {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", b);
        Message message = Message.obtain(null, 0x10000);
        message.arg1 = 0x133060d;
        message.setData(bundle);
        message.replyTo = new Messenger(c);
        try
        {
            f.send(message);
            return;
        }
        catch (RemoteException remoteexception)
        {
            a(((Bundle) (null)));
        }
    }

    final void a(ai ai1)
    {
        d = ai1;
    }

    final boolean a()
    {
        Intent intent = new Intent("com.facebook.platform.PLATFORM_SERVICE");
        intent.addCategory("android.intent.category.DEFAULT");
        Intent intent1 = ao.a(a, intent);
        if (intent1 == null)
        {
            a(((Bundle) (null)));
            return false;
        } else
        {
            e = true;
            a.bindService(intent1, this, 1);
            return true;
        }
    }

    final void b()
    {
        e = false;
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        f = new Messenger(ibinder);
        c();
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        f = null;
        a.unbindService(this);
        a(((Bundle) (null)));
    }
}
