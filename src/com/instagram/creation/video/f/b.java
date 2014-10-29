// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.app.k;
import android.view.View;
import android.view.Window;
import com.facebook.av;
import com.instagram.camera.ui.FocusIndicatorView;
import com.instagram.camera.ui.RotateLayout;
import com.instagram.creation.video.a;
import com.instagram.creation.video.l.j;
import com.instagram.creation.video.ui.r;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class b extends Handler
{

    final com.instagram.creation.video.f.a a;

    b(com.instagram.creation.video.f.a a1)
    {
        a = a1;
        super();
    }

    public final void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 16: default 84
    //                   1 132
    //                   2 85
    //                   3 84
    //                   4 192
    //                   5 102
    //                   6 84
    //                   7 84
    //                   8 263
    //                   9 84
    //                   10 84
    //                   11 84
    //                   12 84
    //                   13 84
    //                   14 84
    //                   15 171
    //                   16 271;
           goto _L1 _L2 _L3 _L1 _L4 _L5 _L1 _L1 _L6 _L1 _L1 _L1 _L1 _L1 _L1 _L7 _L8
_L1:
        break; /* Loop/switch isn't completed */
_L8:
        break MISSING_BLOCK_LABEL_271;
_L9:
        return;
_L3:
        a.l().getWindow().clearFlags(128);
        return;
_L5:
        if (com.instagram.creation.video.f.a.a(a) != null)
        {
            ((FocusIndicatorView)com.instagram.creation.video.f.a.a(a).findViewById(av.focus_indicator)).d();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        com.instagram.creation.video.f.a.b(a).e();
        if (!com.instagram.creation.video.f.a.b(a).n())
        {
            com.instagram.creation.video.f.a.c(a).sendEmptyMessageDelayed(1, 40L);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        if (com.instagram.creation.video.f.a.d(a) != null)
        {
            com.instagram.creation.video.f.a.d(a).dismiss();
            return;
        }
        if (true) goto _L9; else goto _L4
_L4:
        if (j.a(a.l()) != com.instagram.creation.video.f.a.e(a) && !com.instagram.creation.video.f.a.f(a))
        {
            com.instagram.creation.video.f.a.g(a);
        }
        if (SystemClock.uptimeMillis() - com.instagram.creation.video.f.a.h(a) < 5000L)
        {
            com.instagram.creation.video.f.a.c(a).sendEmptyMessageDelayed(4, 100L);
            return;
        }
        if (true) goto _L9; else goto _L6
_L6:
        a.W();
        return;
        if (a.E().getWindowToken() == null)
        {
            sendEmptyMessageDelayed(16, 500L);
            return;
        } else
        {
            a.Y();
            return;
        }
    }
}
