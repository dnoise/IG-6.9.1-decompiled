// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.view.animation.Animation;

// Referenced classes of package android.support.v4.app:
//            Fragment, u

final class z
    implements android.view.animation.Animation.AnimationListener
{

    final Fragment a;
    final u b;

    z(u u1, Fragment fragment)
    {
        b = u1;
        a = fragment;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        if (a.k != null)
        {
            a.k = null;
            b.a(a, a.l, 0, 0, false);
        }
    }

    public final void onAnimationRepeat(Animation animation)
    {
    }

    public final void onAnimationStart(Animation animation)
    {
    }
}
