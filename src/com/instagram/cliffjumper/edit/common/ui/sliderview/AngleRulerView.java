// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui.sliderview;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.as;
import com.facebook.at;
import com.instagram.common.y.f;

public class AngleRulerView extends View
{

    private final Paint a;
    private final Paint b;
    private final android.graphics.Paint.FontMetrics c;
    private final int d;
    private final int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;

    public AngleRulerView(Context context)
    {
        super(context);
        a = new Paint();
        b = new Paint();
        c = new android.graphics.Paint.FontMetrics();
        d = getResources().getColor(as.grey_2);
        e = getResources().getColor(as.grey_4);
        a();
    }

    public AngleRulerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new Paint();
        b = new Paint();
        c = new android.graphics.Paint.FontMetrics();
        d = getResources().getColor(as.grey_2);
        e = getResources().getColor(as.grey_4);
        a();
    }

    public AngleRulerView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a = new Paint();
        b = new Paint();
        c = new android.graphics.Paint.FontMetrics();
        d = getResources().getColor(as.grey_2);
        e = getResources().getColor(as.grey_4);
        a();
    }

    private void a()
    {
        a.setColor(-1);
        a.setTextSize(getResources().getDimension(at.sliderview_ruler_angle_text_size));
        a.setTypeface(Typeface.DEFAULT_BOLD);
        a.setTextAlign(android.graphics.Paint.Align.CENTER);
        a.setAntiAlias(true);
        a.getFontMetrics(c);
        android.util.DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        g = (int)com.instagram.common.y.f.a(displaymetrics, 20);
        h = Math.max((int)com.instagram.common.y.f.a(displaymetrics, 1), 1);
        i = (int)com.instagram.common.y.f.a(displaymetrics, 3);
        j = (int)com.instagram.common.y.f.a(displaymetrics, 24);
        Resources resources = getResources();
        k = resources.getDimensionPixelSize(at.angle_ruler_padding_top);
        l = resources.getDimensionPixelSize(at.angle_ruler_padding_bottom);
        m = resources.getDimensionPixelSize(at.angle_ruler_small_line_min_height);
        int i1 = getResources().getDimensionPixelSize(at.sliderview_pointer_width);
        if (h % 2 != i1 % 2)
        {
            h = 1 + h;
        }
    }

    private void a(Canvas canvas, float f1, float f2)
    {
        b.setColor(d);
        canvas.drawRect(f1 - (float)h / 2.0F, f2, f1 + (float)h / 2.0F, getLineBottom(), b);
    }

    private void a(Canvas canvas, int i1, float f1, float f2)
    {
        String s = (new StringBuilder()).append(String.valueOf(i1)).append('\260').toString();
        if (i1 >= 0)
        {
            String s1 = String.valueOf(i1);
            f1 += (a.measureText(s) - a.measureText(s1)) / 2.0F;
        }
        canvas.drawText(s, f1, f2, a);
    }

    private void b(Canvas canvas, float f1, float f2)
    {
        b.setColor(e);
        canvas.drawRect(f1, f2, f1 + 1.0F, getLineBottom(), b);
    }

    private int getLineBottom()
    {
        return getHeight() - l;
    }

    public float getMaximumAngle()
    {
        return (float)(f / 2);
    }

    protected void onDraw(Canvas canvas)
    {
        float f1 = -c.ascent + (float)k;
        float f2 = f1 + c.bottom + (float)i;
        int i1 = 0;
        while (i1 <= f) 
        {
            int j1 = i1 - f / 2;
            float f3 = i1 * g;
            if (j1 % 5 == 0)
            {
                a(canvas, f3, f2);
                if ((float)Math.abs(j1) <= 30F)
                {
                    a(canvas, j1, f3, f1);
                }
            } else
            {
                b(canvas, f3, Math.min(f2 + (float)j, getHeight() - l - m));
            }
            i1++;
        }
    }

    public void onMeasure(int i1, int j1)
    {
        int k1 = android.view.View.MeasureSpec.getSize(i1) + 60 * g;
        f = k1 / g + (k1 / g) % 2;
        setMeasuredDimension(f * g, android.view.View.MeasureSpec.getSize(j1));
    }
}
