// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.switchbutton;

import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;

// Referenced classes of package com.instagram.ui.widget.switchbutton:
//            IgSwitch

final class a extends Animation
{

    final IgSwitch a;
    private final float b;
    private final float c;

    private a(IgSwitch igswitch, float f, float f1)
    {
        a = igswitch;
        super();
        b = f;
        c = f1 - b;
        setDuration((long)Math.abs((250F * c) / (float)IgSwitch.a(igswitch)));
        setInterpolator(new DecelerateInterpolator());
    }

    a(IgSwitch igswitch, float f, float f1, byte byte0)
    {
        this(igswitch, f, f1);
    }

    protected final void applyTransformation(float f, Transformation transformation)
    {
        IgSwitch.a(a, b + f * c);
        a.invalidate();
    }
}
