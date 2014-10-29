// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.facebook.as;
import com.instagram.common.ui.colorfilter.a;

public class ViewSwitcherButton extends ImageView
{

    public ViewSwitcherButton(Context context)
    {
        super(context);
    }

    public ViewSwitcherButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ViewSwitcherButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        Drawable drawable = getDrawable().mutate();
        char c;
        android.graphics.ColorFilter colorfilter;
        if (isEnabled())
        {
            c = '\377';
        } else
        {
            c = '\200';
        }
        drawable.setAlpha(c);
        if (isEnabled() && (isSelected() || isPressed()))
        {
            colorfilter = a.a(getResources().getColor(as.accent_blue_medium));
        } else
        {
            colorfilter = null;
        }
        drawable.setColorFilter(colorfilter);
    }
}
