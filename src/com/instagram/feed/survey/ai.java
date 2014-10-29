// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.feed.survey:
//            q

final class ai extends Handler
{

    final q a;

    private ai(q q1)
    {
        a = q1;
        super();
    }

    ai(q q1, byte byte0)
    {
        this(q1);
    }

    public final void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 0 4: default 40
    //                   0 41
    //                   1 62
    //                   2 154
    //                   3 108
    //                   4 163;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L2:
        if (q.d(a) != null)
        {
            q.d(a).dismiss();
            return;
        }
          goto _L1
_L3:
        if (q.b(a).hasWindowFocus() && q.i(a))
        {
            a.a(q.j(a));
            return;
        } else
        {
            q.k(a);
            return;
        }
_L5:
        if (q.b(a).hasWindowFocus() && q.i(a))
        {
            a.a(q.l(a));
            return;
        } else
        {
            q.k(a);
            return;
        }
_L4:
        q.m(a);
        return;
_L6:
        q.n(a).setCanceledOnTouchOutside(true);
        return;
    }
}
