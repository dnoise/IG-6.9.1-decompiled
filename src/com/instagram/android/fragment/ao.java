// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

// Referenced classes of package com.instagram.android.fragment:
//            ac

final class ao extends Handler
{

    private WeakReference a;

    public ao(ac ac1)
    {
        a = new WeakReference(ac1);
    }

    public final void handleMessage(Message message)
    {
        super.handleMessage(message);
        ac ac1;
        for (ac1 = (ac)a.get(); ac1 == null || ac1.l() == null || message.what != 1;)
        {
            return;
        }

        ac.b(ac1);
    }
}
