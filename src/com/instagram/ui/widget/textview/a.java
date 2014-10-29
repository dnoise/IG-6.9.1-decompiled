// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.util.AttributeSet;
import com.facebook.bb;
import com.instagram.ui.text.FreightSansTextView;

public class a extends FreightSansTextView
{

    private Drawable a;
    private int b;
    private boolean c;
    private float d;
    private float e;
    private int f;
    private int g;
    private float h;
    private float i;

    public a(Context context)
    {
        super(context);
        b = 0;
        c = true;
        d = 1.0F;
        e = 1.0F;
    }

    public a(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = 0;
        c = true;
        d = 1.0F;
        e = 1.0F;
        a(context, attributeset, 0);
    }

    public a(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        b = 0;
        c = true;
        d = 1.0F;
        e = 1.0F;
        a(context, attributeset, j);
    }

    private void a(Context context, AttributeSet attributeset, int j)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, bb.ImageWithTextView, j, 0);
        int k = typedarray.getResourceId(bb.ImageWithTextView_drawable, 0);
        if (k != 0)
        {
            setupDrawable(k);
        }
        b = typedarray.getDimensionPixelSize(bb.ImageWithTextView_innerSpacing, 0);
        typedarray.recycle();
    }

    private void a(Canvas canvas)
    {
        if (a == null)
        {
            return;
        } else
        {
            canvas.save();
            canvas.translate((float)getScrollX() + h, (float)getScrollY() + i);
            canvas.scale(d, e, (float)f / 2.0F, (float)g / 2.0F);
            a.draw(canvas);
            canvas.restore();
            return;
        }
    }

    private void setupDrawable(int j)
    {
        a = getResources().getDrawable(j);
        f = a.getIntrinsicWidth();
        g = a.getIntrinsicHeight();
        a.setBounds(0, 0, f, g);
    }

    public Drawable getDrawable()
    {
        return a;
    }

    public float getImageScaleX()
    {
        return d;
    }

    public float getImageScaleY()
    {
        return e;
    }

    public int getInnerSpacing()
    {
        return b;
    }

    protected void onDraw(Canvas canvas)
    {
        if (c)
        {
            a(canvas);
            canvas.save();
            canvas.translate((float)(f + b) / 2.0F, 0.0F);
        }
        super.onDraw(canvas);
        if (c)
        {
            canvas.restore();
        }
    }

    protected void onMeasure(int j, int k)
    {
        if (c)
        {
            j = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(j) - f - b, android.view.View.MeasureSpec.getMode(j));
        }
        super.onMeasure(j, k);
        if (c)
        {
            int l = Math.max(g, getMeasuredHeight());
            int i1 = f + b + getMeasuredWidth();
            setMeasuredDimension(i1, l);
            float f1 = (float)(f + b) + getLayout().getLineWidth(0);
            h = ((float)i1 - f1) / 2.0F;
            i = (float)(l - g) / 2.0F;
        }
    }

    public void setImageResource(int j)
    {
        if (j != 0)
        {
            setupDrawable(j);
            requestLayout();
        }
    }

    public void setImageScaleX(float f1)
    {
        if (Float.compare(d, f1) != 0)
        {
            d = f1;
            invalidate();
        }
    }

    public void setImageScaleY(float f1)
    {
        if (Float.compare(e, f1) != 0)
        {
            e = f1;
            invalidate();
        }
    }

    public void setInnerSpacing(int j)
    {
        b = j;
    }
}
