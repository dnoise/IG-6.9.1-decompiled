// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.widget;

import android.animation.AnimatorSet;

// Referenced classes of package com.instagram.creation.video.widget:
//            IgScrubberProgressIndicator

final class a
    implements Runnable
{

    final IgScrubberProgressIndicator a;

    a(IgScrubberProgressIndicator igscrubberprogressindicator)
    {
        a = igscrubberprogressindicator;
        super();
    }

    public final void run()
    {
        if (IgScrubberProgressIndicator.a(a) && !IgScrubberProgressIndicator.b(a).isStarted())
        {
            IgScrubberProgressIndicator.b(a).start();
        }
    }
}
