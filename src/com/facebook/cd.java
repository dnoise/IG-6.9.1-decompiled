// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.Date;

// Referenced classes of package com.facebook:
//            ce, bo, a, ao

final class cd
    implements ServiceConnection
{

    final Messenger a;
    Messenger b;
    final bo c;

    cd(bo bo1)
    {
        c = bo1;
        super();
        a = new Messenger(new ce(c, this));
        b = null;
    }

    static void a(cd cd1)
    {
        cd1.b();
    }

    private void b()
    {
        if (bo.d(c) == this)
        {
            bo.e(c);
        }
    }

    private void c()
    {
        Bundle bundle = new Bundle();
        bundle.putString("access_token", c.j().a());
        Message message = Message.obtain();
        message.setData(bundle);
        message.replyTo = a;
        try
        {
            b.send(message);
            return;
        }
        catch (RemoteException remoteexception)
        {
            b();
        }
    }

    public final void a()
    {
        android.content.Intent intent = ao.a(bo.h());
        if (intent != null && bo.k().bindService(intent, new cd(c), 1))
        {
            c.a(new Date());
            return;
        } else
        {
            b();
            return;
        }
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        b = new Messenger(ibinder);
        c();
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        b();
        bo.k().unbindService(this);
    }
}
