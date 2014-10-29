// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class b extends Drawable
{

    private final Paint a = new Paint(1);
    private final RectF b = new RectF();
    private final int c;

    public b(int i, int j)
    {
        c = (i + 1) / 2;
        a.setColor(j);
        a.setStyle(android.graphics.Paint.Style.STROKE);
        a.setStrokeWidth(i);
    }

    public final void draw(Canvas canvas)
    {
        canvas.drawOval(b, a);
    }

    public final int getOpacity()
    {
        return -3;
    }

    protected final void onBoundsChange(Rect rect)
    {
        super.onBoundsChange(rect);
        rect.left = rect.left + c;
        rect.top = rect.top + c;
        rect.right = rect.right - c;
        rect.bottom = rect.bottom - c;
        b.set(rect);
    }

    public final void setAlpha(int i)
    {
        if (a.getAlpha() != i)
        {
            a.setAlpha(i);
            invalidateSelf();
        }
    }

    public final void setColorFilter(ColorFilter colorfilter)
    {
    }
}
