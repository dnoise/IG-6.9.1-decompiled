// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.c;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.common.c:
//            e, a

final class f extends Handler
{

    private f()
    {
    }

    f(byte byte0)
    {
        this();
    }

    public final void handleMessage(Message message)
    {
        e e1 = (e)message.obj;
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            a.c(e1.a, e1.b[0]);
            return;

        case 2: // '\002'
            a _tmp = e1.a;
            break;
        }
        Object[] _tmp1 = e1.b;
        a.b();
    }
}
