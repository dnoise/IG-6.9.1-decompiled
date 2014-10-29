// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package com.instagram.android.maps.ui:
//            IgAnimatingMapItem, e

final class a extends Animation
{

    final IgAnimatingMapItem a;

    a(IgAnimatingMapItem iganimatingmapitem)
    {
        a = iganimatingmapitem;
        super();
    }

    protected final void applyTransformation(float f, Transformation transformation)
    {
        super.applyTransformation(f, transformation);
        if (f > 0.9F && a.e != null && IgAnimatingMapItem.a(a))
        {
            e e1 = a.e;
            IgAnimatingMapItem _tmp = a;
            e1.a();
        }
    }
}
