// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.b;

import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public final class a extends Animation
{

    private final int a;
    private final int b;
    private final boolean c = false;
    private float d;
    private float e;
    private float f;
    private float g;

    public a(int i, int j)
    {
        a = i;
        b = j;
    }

    protected final void applyTransformation(float f1, Transformation transformation)
    {
        float f2 = 1.0F;
        float f3;
        if (d != f2 || e != f2)
        {
            f3 = d + f1 * (e - d);
        } else
        {
            f3 = f2;
        }
        if (f != f2 || g != f2)
        {
            f2 = f + f1 * (g - f);
        }
        transformation.getMatrix().setScale(f3, f2);
    }

    public final void initialize(int i, int j, int k, int l)
    {
        super.initialize(i, j, k, l);
        d = (float)a / (float)i;
        f = (float)b / (float)j;
        e = 1.0F;
        g = 1.0F;
    }
}
