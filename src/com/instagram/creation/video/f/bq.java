// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.animation.Animation;
import com.instagram.creation.video.ui.FilmstripScrollView;

// Referenced classes of package com.instagram.creation.video.f:
//            bp, bi

final class bq
    implements android.view.animation.Animation.AnimationListener
{

    final double a;
    final bp b;

    bq(bp bp1, double d)
    {
        b = bp1;
        a = d;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
    }

    public final void onAnimationRepeat(Animation animation)
    {
    }

    public final void onAnimationStart(Animation animation)
    {
        bi.m(b.a).setScrollX((int)a);
    }
}
