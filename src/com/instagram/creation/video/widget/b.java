// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.widget;

import android.animation.Animator;

// Referenced classes of package com.instagram.creation.video.widget:
//            IgScrubberProgressIndicator

final class b
    implements android.animation.Animator.AnimatorListener
{

    final IgScrubberProgressIndicator a;

    b(IgScrubberProgressIndicator igscrubberprogressindicator)
    {
        a = igscrubberprogressindicator;
        super();
    }

    public final void onAnimationCancel(Animator animator)
    {
    }

    public final void onAnimationEnd(Animator animator)
    {
        if (IgScrubberProgressIndicator.a(a))
        {
            a.post(IgScrubberProgressIndicator.c(a));
        }
    }

    public final void onAnimationRepeat(Animator animator)
    {
    }

    public final void onAnimationStart(Animator animator)
    {
    }
}
