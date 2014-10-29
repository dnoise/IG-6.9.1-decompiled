// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.j;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.instagram.common.j:
//            b

final class c extends Handler
{

    final b a;

    c(b b1, Looper looper)
    {
        a = b1;
        super(looper);
    }

    public final void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            super.handleMessage(message);
            return;

        case 1: // '\001'
            b.a(a);
            break;
        }
    }
}
