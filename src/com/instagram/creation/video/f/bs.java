// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.MotionEvent;
import com.instagram.creation.b.a.a;
import com.instagram.creation.video.l.h;
import com.instagram.creation.video.ui.FilmstripScrollView;

// Referenced classes of package com.instagram.creation.video.f:
//            bi

final class bs extends android.view.GestureDetector.SimpleOnGestureListener
{

    final bi a;

    private bs(bi bi1)
    {
        a = bi1;
        super();
    }

    bs(bi bi1, byte byte0)
    {
        this(bi1);
    }

    public final boolean onDown(MotionEvent motionevent)
    {
        return true;
    }

    public final boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        double d = (float)bi.o(a) - f;
        double d1 = bi.p(a);
        double d2 = bi.j(a);
        if (d > d1)
        {
            bi.m(a).scrollBy((int)f, 0);
            d2 = bi.p(a);
        } else
        if (d < d2)
        {
            a.W();
        } else
        {
            d2 = d;
        }
        bi.d(a, (int)d2);
        bi.d(a).d((int)bi.c(a));
        com.instagram.creation.video.f.bi.a(a).i();
        com.instagram.creation.video.f.bi.a(a, true);
        return true;
    }
}
