// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;

// Referenced classes of package com.instagram.android.maps.ui:
//            IgAnimatingMapItem

public class FadingMapItem extends IgAnimatingMapItem
{

    public FadingMapItem(Context context)
    {
        super(context);
    }

    public FadingMapItem(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public FadingMapItem(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected final void a(AnimationSet animationset)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(100L);
        animationset.addAnimation(alphaanimation);
    }
}
