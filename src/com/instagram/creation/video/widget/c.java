// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.widget;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.facebook.as;
import com.instagram.common.y.f;

public final class c extends Drawable
{

    private final Paint a = new Paint();
    private final int b;
    private final int c;
    private final int d;
    private final float e;
    private final float f;
    private final RectF g = new RectF();
    private final RectF h = new RectF();
    private final RectF i = new RectF();
    private Bitmap j;
    private int k;
    private int l;

    public c(Resources resources)
    {
        a.setAntiAlias(true);
        b = resources.getColor(as.accent_blue_medium);
        c = resources.getColor(as.black);
        d = resources.getColor(as.white);
        e = com.instagram.common.y.f.a(resources.getDisplayMetrics(), 2.0F);
        f = com.instagram.common.y.f.a(resources.getDisplayMetrics(), 1.5F);
    }

    public final void a(int i1, int j1)
    {
        l = i1;
        k = j1;
    }

    public final void a(Bitmap bitmap)
    {
        j = bitmap;
        invalidateSelf();
    }

    public final void draw(Canvas canvas)
    {
        a.setStyle(android.graphics.Paint.Style.STROKE);
        a.setStrokeWidth(e);
        a.setColor(b);
        canvas.drawRoundRect(g, 4F, 4F, a);
        a.setStrokeWidth(f);
        a.setColor(c);
        canvas.drawRect(h, a);
        a.setStyle(android.graphics.Paint.Style.FILL);
        if (j != null)
        {
            canvas.drawBitmap(j, null, i, a);
            return;
        } else
        {
            a.setColor(d);
            canvas.drawRect(i, a);
            return;
        }
    }

    public final int getIntrinsicHeight()
    {
        return k;
    }

    public final int getIntrinsicWidth()
    {
        return l;
    }

    public final int getOpacity()
    {
        return -3;
    }

    protected final void onBoundsChange(Rect rect)
    {
        super.onBoundsChange(rect);
        float f1 = e / 2.0F;
        g.set(rect);
        g.inset(f1, f1);
        float f2 = e + f / 2.0F;
        h.set(rect);
        h.inset(f2, f2);
        float f3 = e + f;
        i.set(rect);
        i.inset(f3, f3);
    }

    public final void setAlpha(int i1)
    {
        throw new UnsupportedOperationException("setAlpha not implemented");
    }

    public final void setColorFilter(ColorFilter colorfilter)
    {
        throw new UnsupportedOperationException("setColorFilter not implemented");
    }
}
