// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class SquarePreviewFrameLayout extends RelativeLayout
{

    private double a;

    public SquarePreviewFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        int l = android.view.View.MeasureSpec.getSize(j);
        int i1 = getPaddingLeft() + getPaddingRight();
        int j1 = getPaddingTop() + getPaddingBottom();
        int k1 = k - i1;
        int l1 = l - j1;
        int i2;
        int j2;
        if (k1 < l1)
        {
            i2 = k1 + i1;
            j2 = j1 + (int)(0.5D + (double)k1 / a);
        } else
        {
            i2 = l1 + i1;
            j2 = j1 + (int)(0.5D + (double)l1 / a);
        }
        super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x40000000));
        setMeasuredDimension(getMeasuredWidth(), getMeasuredWidth());
    }

    public void setAspectRatio(double d)
    {
        if (d <= 0.0D)
        {
            throw new IllegalArgumentException();
        }
        if (a != d)
        {
            a = d;
            requestLayout();
        }
    }
}
