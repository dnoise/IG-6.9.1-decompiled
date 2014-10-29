// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class a extends Drawable
{

    protected final Paint a = new Paint(1);
    protected final RectF b = new RectF();
    private final Bitmap c;

    public a(Bitmap bitmap)
    {
        c = bitmap;
        a.setShader(new BitmapShader(bitmap, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP));
    }

    public final void draw(Canvas canvas)
    {
        b.set(getBounds());
        if (b.height() <= b.width()) goto _L2; else goto _L1
_L1:
        b.inset(0.0F, (b.height() - b.width()) / 2.0F);
_L4:
        canvas.drawOval(b, a);
        return;
_L2:
        if (b.height() < b.width())
        {
            b.inset((b.width() - b.height()) / 2.0F, 0.0F);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final int getIntrinsicHeight()
    {
        return c.getHeight();
    }

    public final int getIntrinsicWidth()
    {
        return c.getWidth();
    }

    public final int getOpacity()
    {
        return -3;
    }

    public final void setAlpha(int i)
    {
        a.setAlpha(i);
    }

    public final void setColorFilter(ColorFilter colorfilter)
    {
        a.setColorFilter(colorfilter);
    }
}
