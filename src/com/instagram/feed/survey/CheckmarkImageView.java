// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.Context;
import android.util.AttributeSet;
import com.instagram.common.ui.colorfilter.ColorFilterAlphaImageView;

public class CheckmarkImageView extends ColorFilterAlphaImageView
{

    public CheckmarkImageView(Context context)
    {
        super(context);
        b();
    }

    public CheckmarkImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b();
    }

    public CheckmarkImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b();
    }

    private void b()
    {
        a = 0;
        b = 0;
    }

    protected final boolean a()
    {
        return isSelected();
    }
}
