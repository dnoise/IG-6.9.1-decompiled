// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

public class TrimHandle extends View
{

    public TrimHandle(Context context)
    {
        super(context);
    }

    public TrimHandle(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public TrimHandle(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        setMeasuredDimension(getBackground().getIntrinsicWidth(), android.view.View.MeasureSpec.getSize(j));
    }
}
