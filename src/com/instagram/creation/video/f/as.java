// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewStub;
import com.facebook.av;
import com.instagram.common.ui.widget.imageview.PunchedOverlayView;
import com.instagram.creation.video.l.g;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.creation.video.f:
//            ar, av, at

final class as
    implements Runnable
{

    final ar a;

    as(ar ar1)
    {
        a = ar1;
        super();
    }

    public final void run()
    {
        boolean flag = g.a(a.j(), a.W());
        com.instagram.creation.video.f.ar.a(a, a.j().getInt("VideoEditFragment.EDIT_MODE", com.instagram.creation.video.f.av.a.d));
        if (flag)
        {
            if (!com.instagram.l.b.a.a().r())
            {
                ViewStub viewstub = (ViewStub)a.E().findViewById(av.overlay_stub);
                com.instagram.creation.video.f.ar.a(a, (PunchedOverlayView)viewstub.inflate());
            }
            ar.c(a).postDelayed(new at(this), 500L);
        }
    }
}
