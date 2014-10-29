// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.squareframelayout;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class SquareFrameLayout extends FrameLayout
{

    public SquareFrameLayout(Context context)
    {
        super(context);
    }

    public SquareFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public SquareFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(j);
        int l = android.view.View.MeasureSpec.getSize(j);
        android.view.View.MeasureSpec.getMode(i);
        int i1 = android.view.View.MeasureSpec.getSize(i);
        if ((k == 0x80000000 || k == 0x40000000) && l < i1)
        {
            i1 = l;
        }
        int j1 = android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000);
        super.onMeasure(j1, j1);
    }
}
