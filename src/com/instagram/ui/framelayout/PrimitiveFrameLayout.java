// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.framelayout;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

public class PrimitiveFrameLayout extends FrameLayout
{

    public PrimitiveFrameLayout(Context context)
    {
        super(context);
    }

    public PrimitiveFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public PrimitiveFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        if (android.os.Build.VERSION.SDK_INT > 10)
        {
            super.onMeasure(i, j);
            return;
        }
        boolean flag = getConsiderGoneChildrenWhenMeasuring();
        int k = getChildCount();
        int l = 0;
        int i1 = 0;
        int j1 = 0;
        while (l < k) 
        {
            View view = getChildAt(l);
            int k1;
            int l1;
            int i2;
            Drawable drawable;
            int k2;
            int l2;
            if (flag || view.getVisibility() != 8)
            {
                measureChildWithMargins(view, i, 0, j, 0);
                android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)view.getLayoutParams();
                if (layoutparams.width == -1 || layoutparams.height == -1)
                {
                    throw new IllegalStateException((new StringBuilder("match_parent not supported for ")).append(getClass().getSimpleName()).toString());
                }
                int j2 = Math.max(i1, view.getMeasuredWidth() + layoutparams.leftMargin + layoutparams.rightMargin);
                k2 = Math.max(j1, view.getMeasuredHeight() + layoutparams.topMargin + layoutparams.bottomMargin);
                l2 = j2;
            } else
            {
                l2 = i1;
                k2 = j1;
            }
            l++;
            i1 = l2;
            j1 = k2;
        }
        k1 = i1 + (getPaddingLeft() + getPaddingRight());
        l1 = Math.max(j1 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
        i2 = Math.max(k1, getSuggestedMinimumWidth());
        drawable = getForeground();
        if (drawable != null)
        {
            l1 = Math.max(l1, drawable.getMinimumHeight());
            i2 = Math.max(i2, drawable.getMinimumWidth());
        }
        setMeasuredDimension(resolveSize(i2, i), resolveSize(l1, j));
    }
}
