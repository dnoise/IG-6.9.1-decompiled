// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.d;

import android.animation.ValueAnimator;
import android.view.View;

// Referenced classes of package com.instagram.android.feed.d:
//            d

final class g
    implements android.animation.ValueAnimator.AnimatorUpdateListener
{

    final d a;

    g(d d1)
    {
        a = d1;
        super();
    }

    public final void onAnimationUpdate(ValueAnimator valueanimator)
    {
        Integer integer = (Integer)valueanimator.getAnimatedValue();
        d.j(a).getLayoutParams().height = integer.intValue();
        d.j(a).requestLayout();
    }
}
