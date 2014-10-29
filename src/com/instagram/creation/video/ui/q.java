// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.os.SystemClock;
import com.instagram.creation.video.a.a;
import com.instagram.creation.video.gl.c;
import com.instagram.creation.video.gl.x;

public final class q
{

    private long a;
    private int b;
    private int c;
    private int d;

    public q()
    {
    }

    public final void a(int i)
    {
        d = i;
    }

    public final void a(int i, int j)
    {
        b = i;
        c = j;
    }

    public final boolean a(c c1, int i, int j, int k, int l, a a1, x x1)
    {
        long l1 = SystemClock.uptimeMillis() - a;
        if ((float)l1 > 400F)
        {
            return false;
        }
        float f = (float)l1 / 400F;
        float f1 = (float)i + (float)k / 2.0F;
        float f2 = (float)j + (float)l / 2.0F;
        float f3 = 1.0F - 0.2F * (1.0F - f);
        float f4 = f3 * (float)k;
        float f5 = f3 * (float)l;
        int i1 = Math.round(f1 - f4 / 2.0F);
        int j1 = Math.round(f2 - f5 / 2.0F);
        float f6 = 1.0F + 0.5F * f;
        float f7 = 1.0F;
        float f8;
        float f9;
        int k1;
        int i2;
        float f10;
        if (d != 0)
        {
            f7 = (float)k / (float)d;
        } else
        {
            com.facebook.e.a.a.a("SwitchAnimManager", "mPreviewFrameLayoutWidth is 0.");
        }
        f8 = f7 * (f6 * (float)b);
        f9 = f7 * (f6 * (float)c);
        k1 = Math.round(f1 - f8 / 2.0F);
        i2 = Math.round(f2 - f9 / 2.0F);
        f10 = c1.a();
        c1.a(f);
        a1.a(c1, i1, j1, Math.round(f4), Math.round(f5));
        c1.a(0.8F * (1.0F - f));
        x1.a(c1, k1, i2, Math.round(f8), Math.round(f9));
        c1.a(f10);
        return true;
    }

    public final boolean a(c c1, int i, int j, int k, int l, x x1)
    {
        float f = (float)i + (float)k / 2.0F;
        float f1 = (float)j + (float)l / 2.0F;
        float f2 = 1.0F;
        float f3;
        float f4;
        int i1;
        int j1;
        float f5;
        if (d != 0)
        {
            f2 = (float)k / (float)d;
        } else
        {
            com.facebook.e.a.a.a("SwitchAnimManager", "mPreviewFrameLayoutWidth is 0.");
        }
        f3 = f2 * (float)b;
        f4 = f2 * (float)c;
        i1 = Math.round(f - f3 / 2.0F);
        j1 = Math.round(f1 - f4 / 2.0F);
        f5 = c1.a();
        c1.a(0.8F);
        x1.a(c1, i1, j1, Math.round(f3), Math.round(f4));
        c1.a(f5);
        return true;
    }
}
