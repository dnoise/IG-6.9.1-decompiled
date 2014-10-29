// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Handler;
import android.view.View;
import com.facebook.av;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class q
    implements Runnable
{

    final com.instagram.creation.video.f.a a;

    q(com.instagram.creation.video.f.a a1)
    {
        a = a1;
        super();
    }

    public final void run()
    {
        if (a.E() != null)
        {
            a.E().findViewById(av.camcorder_spinner).setVisibility(8);
            a.E().findViewById(av.camcorder_content).setVisibility(0);
            a.a(a.E());
            if (!com.instagram.l.b.a.a().t())
            {
                com.instagram.creation.video.f.a.c(a).sendEmptyMessageDelayed(16, 500L);
            }
            if (com.instagram.creation.video.f.a.l(a))
            {
                com.instagram.creation.video.f.a.g(a);
                com.instagram.creation.video.f.a.m(a);
            }
            com.instagram.creation.video.f.a.n(a);
        }
    }
}
