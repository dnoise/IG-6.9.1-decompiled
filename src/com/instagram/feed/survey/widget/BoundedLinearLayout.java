// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.facebook.bb;

public class BoundedLinearLayout extends LinearLayout
{

    private final int a;
    private final int b;

    public BoundedLinearLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, bb.BoundedView);
        a = typedarray.getDimensionPixelSize(bb.BoundedView_maxWidth, 0);
        b = typedarray.getDimensionPixelSize(bb.BoundedView_maxHeight, 0);
        typedarray.recycle();
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        if (a > 0 && a < k)
        {
            int j1 = android.view.View.MeasureSpec.getMode(i);
            i = android.view.View.MeasureSpec.makeMeasureSpec(a, j1);
        }
        int l = android.view.View.MeasureSpec.getSize(j);
        if (b > 0 && b < l)
        {
            int i1 = android.view.View.MeasureSpec.getMode(j);
            j = android.view.View.MeasureSpec.makeMeasureSpec(b, i1);
        }
        super.onMeasure(i, j);
    }
}
