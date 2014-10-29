// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class MediaOptionsButton extends ImageView
{

    public MediaOptionsButton(Context context)
    {
        super(context);
    }

    public MediaOptionsButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public MediaOptionsButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        Drawable drawable = getDrawable().mutate();
        char c;
        if (flag)
        {
            c = '\377';
        } else
        {
            c = '\200';
        }
        drawable.setAlpha(c);
    }
}
