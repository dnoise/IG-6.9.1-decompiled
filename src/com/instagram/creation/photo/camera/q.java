// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.facebook.az;
import com.instagram.camera.h;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class q extends Handler
{

    final c a;

    private q(c c1)
    {
        a = c1;
        super();
    }

    q(c c1, byte byte0)
    {
        this(c1);
    }

    public final void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 5: default 40
    //                   1 41
    //                   2 57
    //                   3 40
    //                   4 49
    //                   5 118;
           goto _L1 _L2 _L3 _L1 _L4 _L5
_L1:
        return;
_L2:
        c.a(a);
        return;
_L4:
        c.b(a);
        return;
_L3:
        if (h.a(a.l()) != c.c(a))
        {
            c.d(a);
        }
        if (SystemClock.uptimeMillis() - c.e(a) < 5000L)
        {
            c.f(a).sendEmptyMessageDelayed(2, 100L);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (a.u())
        {
            h.b(a.l(), az.cannot_connect_camera);
            return;
        }
        if (true) goto _L1; else goto _L6
_L6:
    }
}
