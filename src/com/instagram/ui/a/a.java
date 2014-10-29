// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.a;

import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public final class a extends Animation
{

    private int a;
    private int b;
    private int c;
    private int d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;

    public a(float f1, float f2)
    {
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0.0F;
        f = 0.0F;
        g = 0.0F;
        h = 0.0F;
        e = 0.0F;
        f = 0.0F;
        g = f1;
        h = f2;
        a = 0;
        b = 0;
        c = 0;
        d = 0;
    }

    public a(float f1, float f2, float f3)
    {
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0.0F;
        f = 0.0F;
        g = 0.0F;
        h = 0.0F;
        e = f1;
        f = 0.0F;
        g = f2;
        h = f3;
        a = 0;
        b = 0;
        c = 0;
        d = 0;
    }

    public final void a(float f1)
    {
        e = f1;
    }

    protected final void applyTransformation(float f1, Transformation transformation)
    {
        float f2 = i;
        float f3 = k;
        if (i != j)
        {
            f2 = i + f1 * (j - i);
        }
        if (k != l)
        {
            f3 = k + f1 * (l - k);
        }
        transformation.getMatrix().setTranslate(f2, f3);
    }

    public final void b(float f1)
    {
        g = f1;
    }

    public final void c(float f1)
    {
        h = f1;
    }

    public final void initialize(int i1, int j1, int k1, int l1)
    {
        super.initialize(i1, j1, k1, l1);
        i = resolveSize(a, e, i1, k1);
        j = resolveSize(b, f, i1, k1);
        k = resolveSize(c, g, j1, l1);
        l = resolveSize(d, h, j1, l1);
    }
}
