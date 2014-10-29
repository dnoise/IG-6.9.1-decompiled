// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e.a.a;

import android.support.v4.app.an;
import android.view.View;
import android.view.animation.Animation;
import com.instagram.common.analytics.g;
import com.instagram.feed.e.a;
import com.instagram.feed.f.c;

// Referenced classes of package com.instagram.feed.e.a.a:
//            a, h, g

final class f
    implements android.view.animation.Animation.AnimationListener
{

    final g a;
    final com.instagram.feed.e.a.a.g b;
    final an c;
    final c d;
    final int e;
    final a f;
    final h g;

    f(g g1, com.instagram.feed.e.a.a.g g2, an an, c c1, int i, a a1, h h1)
    {
        a = g1;
        b = g2;
        c = an;
        d = c1;
        e = i;
        f = a1;
        g = h1;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        com.instagram.feed.e.a.a.a.a(a, b, c, d, e, f);
        com.instagram.feed.e.a.a.h.c(g).startAnimation(com.instagram.feed.e.a.a.a.a());
    }

    public final void onAnimationRepeat(Animation animation)
    {
    }

    public final void onAnimationStart(Animation animation)
    {
    }
}
