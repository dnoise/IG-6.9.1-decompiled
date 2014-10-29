// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.flowlayout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class HorizontalFlowLayout extends ViewGroup
{

    public HorizontalFlowLayout(Context context)
    {
        super(context);
    }

    public HorizontalFlowLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public HorizontalFlowLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private int[] a(int i, boolean flag)
    {
        int j = getPaddingLeft();
        int k = getPaddingTop();
        int l = j + i;
        int i1 = 0x80000000;
        int j1 = j;
        int k1 = k;
        int l1 = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++)
        {
            View view = getChildAt(i2);
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
            int j2 = marginlayoutparams.leftMargin + view.getMeasuredWidth() + marginlayoutparams.rightMargin;
            int k2 = marginlayoutparams.topMargin + view.getMeasuredHeight() + marginlayoutparams.bottomMargin;
            if (i != -1 && j1 + j2 > l)
            {
                j1 = getPaddingLeft();
                k1 += l1;
                l1 = 0;
            }
            if (flag)
            {
                view.layout(j1 + marginlayoutparams.leftMargin, k1 + marginlayoutparams.topMargin, j1 + marginlayoutparams.leftMargin + view.getMeasuredWidth(), k1 + marginlayoutparams.topMargin + view.getMeasuredHeight());
            }
            l1 = Math.max(l1, k2);
            j1 += j2;
            i1 = Math.max(i1, j1);
        }

        int ai[] = new int[2];
        ai[0] = Math.max(getPaddingLeft(), i1) + getPaddingRight();
        ai[1] = Math.max(getPaddingTop(), l1 + k1) + getPaddingBottom();
        return ai;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams instanceof android.view.ViewGroup.MarginLayoutParams;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new android.view.ViewGroup.MarginLayoutParams(-2, -2);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new android.view.ViewGroup.MarginLayoutParams(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return new android.view.ViewGroup.MarginLayoutParams(layoutparams);
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        a(k - i, true);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i) - getPaddingLeft() - getPaddingRight();
        for (int l = 0; l < getChildCount(); l++)
        {
            View view = getChildAt(l);
            if (view.getVisibility() != 8)
            {
                measureChildWithMargins(view, i, 0, j, 0);
            }
        }

        int i1;
        int ai[];
        if (android.view.View.MeasureSpec.getMode(i) == 0)
        {
            i1 = -1;
        } else
        {
            i1 = k;
        }
        ai = a(i1, false);
        setMeasuredDimension(resolveSize(ai[0], i), resolveSize(ai[1], j));
    }
}
