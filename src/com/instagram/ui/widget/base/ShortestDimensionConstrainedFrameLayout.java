// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.base;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class ShortestDimensionConstrainedFrameLayout extends FrameLayout
{

    public ShortestDimensionConstrainedFrameLayout(Context context)
    {
        super(context);
    }

    public ShortestDimensionConstrainedFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ShortestDimensionConstrainedFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        int k = getMeasuredWidth();
        int l = getMeasuredHeight();
        if (k > l)
        {
            k = l;
        } else
        {
            l = k;
        }
        setMeasuredDimension(k, l);
        measureChildren(android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x40000000));
    }
}
