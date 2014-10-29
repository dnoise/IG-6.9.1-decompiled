// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.instagram.common.g.b:
//            m, h

final class n extends Handler
{

    final h a;

    private n(h h, Looper looper)
    {
        a = h;
        super(looper);
    }

    n(h h, Looper looper, byte byte0)
    {
        this(h, looper);
    }

    public final void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("Unknown message what = ")).append(message.what).toString());

        case 1: // '\001'
            m.a((m)message.obj);
            return;

        case 2: // '\002'
            m.b((m)message.obj);
            break;
        }
    }
}
