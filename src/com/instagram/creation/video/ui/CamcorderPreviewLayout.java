// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.instagram.common.y.f;

public class CamcorderPreviewLayout extends FrameLayout
{

    private double a;

    public CamcorderPreviewLayout(Context context)
    {
        super(context);
    }

    public CamcorderPreviewLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public CamcorderPreviewLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        int k = f.a(getContext());
        int l = (int)((double)k * a);
        super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(k, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(l, 0x40000000));
        setMeasuredDimension(k, k);
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
