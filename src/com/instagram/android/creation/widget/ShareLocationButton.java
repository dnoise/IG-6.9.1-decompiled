// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import com.facebook.as;
import com.instagram.common.ui.colorfilter.a;

public class ShareLocationButton extends CompoundButton
{

    public ShareLocationButton(Context context)
    {
        super(context);
    }

    public ShareLocationButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ShareLocationButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        int i;
        if (isChecked())
        {
            i = as.accent_blue_medium;
        } else
        {
            i = as.grey_light;
        }
        getBackground().mutate().setColorFilter(a.a(getResources().getColor(i)));
    }
}
