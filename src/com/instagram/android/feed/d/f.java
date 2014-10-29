// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.d;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.instagram.android.feed.d:
//            d

final class f
    implements android.view.animation.Animation.AnimationListener
{

    final d a;

    f(d d1)
    {
        a = d1;
        super();
    }

    public final void onAnimationEnd(Animation animation)
    {
        d.h(a).setVisibility(8);
    }

    public final void onAnimationRepeat(Animation animation)
    {
    }

    public final void onAnimationStart(Animation animation)
    {
        d.h(a).setVisibility(0);
    }
}
