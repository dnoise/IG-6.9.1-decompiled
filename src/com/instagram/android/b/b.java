// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.b;

import android.view.animation.Interpolator;

public final class b
    implements Interpolator
{

    public b()
    {
    }

    public final float getInterpolation(float f)
    {
        return Math.abs(f - 1.0F);
    }
}
