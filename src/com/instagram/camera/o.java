// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.camera:
//            m

final class o extends Handler
{

    final m a;

    private o(m m1)
    {
        a = m1;
        super();
    }

    o(m m1, byte byte0)
    {
        this(m1);
    }

    public final void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 0: // '\0'
            m.a(a);
            break;
        }
    }
}
