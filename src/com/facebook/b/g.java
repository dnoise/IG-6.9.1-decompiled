// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

// Referenced classes of package com.facebook.b:
//            h, b, f

final class g
    implements ServiceConnection
{

    final Messenger a = new Messenger(new h(this));
    final f b;
    final Context c;
    Messenger d;
    final b e;

    public g(b b1, Context context, f f)
    {
        e = b1;
        super();
        d = null;
        c = context;
        b = f;
    }

    private void a()
    {
        Bundle bundle = new Bundle();
        bundle.putString("access_token", com.facebook.b.b.b(e));
        Message message = Message.obtain();
        message.setData(bundle);
        message.replyTo = a;
        try
        {
            d.send(message);
            return;
        }
        catch (RemoteException remoteexception)
        {
            f _tmp = b;
        }
        new Error("Service connection error");
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        d = new Messenger(ibinder);
        a();
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        f _tmp = b;
        new Error("Service disconnected");
        c.unbindService(this);
    }
}
