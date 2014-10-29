// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.View;

public class PunchedOverlayView extends View
{

    private final int a;
    private Bitmap b;

    public PunchedOverlayView(Context context)
    {
        super(context);
        a = Color.argb(192, 0, 0, 0);
    }

    public PunchedOverlayView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = Color.argb(192, 0, 0, 0);
    }

    public PunchedOverlayView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = Color.argb(192, 0, 0, 0);
    }

    public final void a(int i, int j, float f)
    {
        if (f <= 0.0F)
        {
            if (b != null)
            {
                b.recycle();
                b = null;
            }
        } else
        {
            Paint paint = new Paint(1);
            paint.setColor(-1);
            paint.setStyle(android.graphics.Paint.Style.FILL);
            paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.CLEAR));
            if (b == null || b.getWidth() != getWidth() || b.getHeight() != getHeight())
            {
                b = Bitmap.createBitmap(getWidth(), getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                b.eraseColor(0);
            }
            Canvas canvas = new Canvas(b);
            canvas.drawColor(a);
            canvas.drawCircle(i, j, f, paint);
        }
        invalidate();
    }

    public void draw(Canvas canvas)
    {
        if (b != null)
        {
            canvas.drawBitmap(b, 0.0F, 0.0F, null);
            return;
        } else
        {
            canvas.drawColor(a);
            return;
        }
    }

    protected void onWindowVisibilityChanged(int i)
    {
        super.onWindowVisibilityChanged(i);
        if (i != 0 && b != null)
        {
            b.recycle();
            b = null;
        }
    }
}
