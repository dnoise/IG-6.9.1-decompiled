// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.facebook.at;
import com.facebook.bb;
import com.instagram.common.ui.b.a;

// Referenced classes of package com.instagram.common.ui.widget.imageview:
//            IgImageView

public class ConstrainedImageView extends IgImageView
{

    private a b;
    private boolean c;
    private float d;

    public ConstrainedImageView(Context context)
    {
        super(context);
        c = false;
    }

    public ConstrainedImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = false;
        a(attributeset);
    }

    public ConstrainedImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        c = false;
        a(attributeset);
    }

    private void a(Canvas canvas)
    {
        Paint paint = new Paint();
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        Rect rect = new Rect(0, 0, getWidth(), getHeight());
        rect.inset(getPaddingLeft(), getPaddingTop());
        if (c)
        {
            int i = getResources().getDimensionPixelSize(at.frameinset);
            paint.setStrokeWidth(i);
            paint.setColor(0x40000000);
            float f = (float)i / 2.0F;
            canvas.drawRect(new RectF(f + (float)rect.left, f + (float)rect.top, (float)rect.right - f, (float)rect.bottom - f), paint);
        }
    }

    private void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, bb.ConstrainedImageView);
        c = typedarray.getBoolean(bb.ConstrainedImageView_decorate, false);
        d = typedarray.getFloat(bb.ConstrainedImageView_aspect, 1.0F);
        typedarray.recycle();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (a && c)
        {
            a(canvas);
        }
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        int k = getMeasuredWidth();
        setMeasuredDimension(k, Math.round((float)getMeasuredWidth() / d));
        if (b != null)
        {
            b.a(k);
        }
    }

    public void setDrawFrameDecoration(boolean flag)
    {
        c = flag;
        invalidate();
    }

    public void setImageBitmapAsLoaded(Bitmap bitmap)
    {
        a = true;
        super.setImageBitmap(bitmap);
    }

    public void setOnMeasureListener(a a1)
    {
        b = a1;
    }
}
