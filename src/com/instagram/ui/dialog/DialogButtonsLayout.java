// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

public class DialogButtonsLayout extends LinearLayout
{

    public DialogButtonsLayout(Context context)
    {
        super(context);
    }

    public DialogButtonsLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public DialogButtonsLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        int k = 0;
        super.onMeasure(i, android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        int l = getChildCount();
        for (int i1 = 0; i1 < l; i1++)
        {
            if (getChildAt(i1).getMeasuredHeight() > k)
            {
                k = getChildAt(i1).getMeasuredHeight();
            }
        }

        super.onMeasure(i, android.view.View.MeasureSpec.makeMeasureSpec(k, 0x40000000));
    }
}
