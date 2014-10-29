// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.facebook.as;
import com.instagram.common.ui.colorfilter.a;

public class ProfileMapButton extends ImageView
{

    public ProfileMapButton(Context context)
    {
        super(context);
    }

    public ProfileMapButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ProfileMapButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        Drawable drawable = getDrawable().mutate();
        android.graphics.ColorFilter colorfilter;
        if (isPressed())
        {
            colorfilter = a.a(getResources().getColor(as.accent_blue_medium));
        } else
        {
            colorfilter = null;
        }
        drawable.setColorFilter(colorfilter);
    }

    public void setUser(com.instagram.user.c.a a1)
    {
        if (!com.instagram.android.maps.f.a.a())
        {
            getDrawable().mutate().setAlpha(128);
            setClickable(true);
        } else
        if (com.instagram.user.a.a.a(a1) || com.instagram.user.a.a.b(a1) && a1.B() != null && a1.B().intValue() > 0)
        {
            getDrawable().mutate().setAlpha(255);
            setClickable(true);
        } else
        {
            getDrawable().mutate().setAlpha(128);
            setClickable(false);
        }
        invalidate();
    }
}
