// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.instagram.camera:
//            e

final class f extends Handler
{

    final e a;

    f(e e1, Looper looper)
    {
        a = e1;
        super(looper);
    }

    public final void handleMessage(Message message)
    {
        e e1;
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            e1 = a;
            break;
        }
        e1;
        JVM INSTR monitorenter ;
        if (e.a(a) == 0)
        {
            e.b(a);
        }
        e1;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        e1;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
