// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

public final class i
{

    private final Paint a = new Paint();
    private final Paint b = new Paint();
    private int c;
    private Rect d;
    private float e[];
    private float f[];
    private float g;

    public i(int j, float f1)
    {
        a.setColor(0x8fffffff);
        a.setStrokeWidth(f1);
        b.setColor(0x2c000000);
        b.setStrokeWidth(1.0F);
        g = f1;
        c = j;
        e = new float[j - 1];
        f = new float[j - 1];
    }

    private static void a(Canvas canvas, float af[], float f1, float f2, float f3, float f4, Paint paint)
    {
        int j = 0;
        canvas.drawLine(f2, f1, af[0] - f4, f1, paint);
        for (; j < -1 + af.length; j++)
        {
            canvas.drawLine(1.0F + af[j], f1, af[j + 1] - f4, f1, paint);
        }

        canvas.drawLine(1.0F + af[-1 + af.length], f1, f3, f1, paint);
    }

    private static void a(Canvas canvas, float af[], float f1, float f2, float f3, int j, float f4, Paint paint)
    {
        int k = 0;
        canvas.drawLine(f1, f2, f1, af[0] - f4, paint);
        for (; k < -1 + af.length; k++)
        {
            canvas.drawLine(f1, 1.0F + af[k] + (float)j, f1, af[k + 1] - f4, paint);
        }

        canvas.drawLine(f1, 1.0F + af[-1 + af.length] + (float)j, f1, f3, paint);
    }

    public final void a(Canvas canvas)
    {
        for (int j = 0; j < e.length; j++)
        {
            canvas.drawLine(d.left, e[j], d.right, e[j], a);
        }

        for (int k = 0; k < f.length; k++)
        {
            a(canvas, e, f[k], d.top, d.bottom, 0, g - 1.0F, a);
        }

        int l = 0;
        int j1;
        do
        {
            int i1 = e.length;
            j1 = 0;
            if (l >= i1)
            {
                break;
            }
            a(canvas, f, e[l] - g, d.left, d.right, g - 1.0F, b);
            a(canvas, f, 1.0F + e[l], d.left, d.right, g - 1.0F, b);
            l++;
        } while (true);
        for (; j1 < f.length; j1++)
        {
            a(canvas, e, f[j1] - g, d.top, d.bottom, 1, g, b);
            a(canvas, e, 1.0F + f[j1], d.top, d.bottom, 1, g, b);
        }

    }

    public final void a(Rect rect)
    {
        d = rect;
        float f1 = (float)(d.right - d.left) / (float)c;
        e[0] = f1 + (float)d.top;
        f[0] = f1 + (float)d.left;
        for (int j = 1; j < -1 + c; j++)
        {
            e[j] = f1 + e[j - 1];
            f[j] = f1 + f[j - 1];
        }

    }
}
