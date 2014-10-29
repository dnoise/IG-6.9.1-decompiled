// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

// Referenced classes of package com.facebook:
//            bo, cd

final class ce extends Handler
{

    private WeakReference a;
    private WeakReference b;

    ce(bo bo1, cd cd1)
    {
        super(Looper.getMainLooper());
        a = new WeakReference(bo1);
        b = new WeakReference(cd1);
    }

    public final void handleMessage(Message message)
    {
        String s = message.getData().getString("access_token");
        bo bo1 = (bo)a.get();
        if (bo1 != null && s != null)
        {
            bo1.a(message.getData());
        }
        cd cd1 = (cd)b.get();
        if (cd1 != null)
        {
            bo.k().unbindService(cd1);
            cd.a(cd1);
        }
    }
}
