// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.c;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.common.g.c:
//            d

final class c extends Handler
{

    private c()
    {
    }

    c(byte byte0)
    {
        this();
    }

    public final void handleMessage(Message message)
    {
        d d1 = (d)message.obj;
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            d1.f();
            return;

        case 2: // '\002'
            d1.g();
            break;
        }
    }
}
