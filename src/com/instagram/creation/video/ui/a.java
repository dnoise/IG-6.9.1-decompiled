// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.os.SystemClock;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.instagram.creation.video.gl.c;
import com.instagram.creation.video.gl.x;

public final class a
{

    private final Interpolator a = new DecelerateInterpolator();
    private final Interpolator b = new AccelerateInterpolator();
    private final Interpolator c = new AccelerateDecelerateInterpolator();
    private int d;
    private long e;
    private float f;
    private float g;
    private float h;
    private int i;
    private int j;
    private float k;

    public a()
    {
    }

    private float a(float f1)
    {
        if (f1 <= 0.5F)
        {
            return 1.0F - 0.2F * a.getInterpolation(f1 * 2.0F);
        } else
        {
            return 0.8F + 0.2F * b.getInterpolation(2.0F * (f1 - 0.5F));
        }
    }

    public final boolean a(c c1, com.instagram.creation.video.a.a a1, x x1)
    {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i2;
        int k2;
        int l2;
        int i3;
        long l = SystemClock.uptimeMillis() - e;
        if ((float)l > 700F)
        {
            return false;
        }
        float f1 = (float)l / 700F;
        f2 = a(f1);
        f3 = f;
        f4 = g;
        int i1;
        int j1;
        int k1;
        int l1;
        float f7;
        int j3;
        int k3;
        if (d == 0 || d == 180)
        {
            f3 = f + h * c.getInterpolation(f1);
        } else
        {
            f4 = g + h * c.getInterpolation(f1);
        }
        f5 = f2 * (float)j;
        f6 = f2 * (float)i;
        i1 = (int)f3;
        j1 = (int)f4;
        k1 = (int)f3;
        l1 = (int)f4;
        d;
        JVM INSTR lookupswitch 4: default 176
    //                   0: 286
    //                   90: 346
    //                   180: 402
    //                   270: 462;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        k2 = l1;
        l2 = k1;
        i2 = j1;
        i3 = i1;
_L7:
        f7 = c1.a();
        c1.a(f1);
        a1.a(c1, i3, i2, Math.round(f6), Math.round(f5));
        c1.a(f7);
        j3 = (int)f6;
        k3 = (int)f5;
        x1.a(c1, l2, k2, j3, k3);
        return true;
_L2:
        i3 = Math.round(f3 - f6 - f2 * k);
        int k4 = Math.round(f4 - f5 / 2.0F);
        int l4 = Math.round(f3 + f2 * k);
        k2 = k4;
        l2 = l4;
        i2 = k4;
        continue; /* Loop/switch isn't completed */
_L3:
        i2 = Math.round(f4 + f2 * k);
        int j4 = Math.round(f3 - f6 / 2.0F);
        k2 = Math.round(f4 - f5 - f2 * k);
        l2 = j4;
        i3 = j4;
        continue; /* Loop/switch isn't completed */
_L4:
        i3 = Math.round(f3 + f6 + f2 * k);
        int l3 = Math.round(f4 - f5 / 2.0F);
        int i4 = Math.round(f3 - f2 * k);
        k2 = l3;
        l2 = i4;
        i2 = l3;
        continue; /* Loop/switch isn't completed */
_L5:
        i2 = Math.round(f4 - f5 - f2 * k);
        int j2 = Math.round(f3 - f6 / 2.0F);
        k2 = Math.round(f4 + f2 * k);
        l2 = j2;
        i3 = j2;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
