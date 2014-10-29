// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import com.facebook.as;
import com.facebook.au;
import com.instagram.common.ui.colorfilter.a;

public class CheckRadioButton extends RadioButton
{

    private Drawable a;

    public CheckRadioButton(Context context)
    {
        super(context);
        a();
    }

    public CheckRadioButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public CheckRadioButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        a = getResources().getDrawable(au.check);
        a.mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(getResources().getColor(as.accent_blue_medium)));
    }

    public void setChecked(boolean flag)
    {
        super.setChecked(flag);
        Drawable drawable;
        if (flag)
        {
            drawable = a;
        } else
        {
            drawable = null;
        }
        setCompoundDrawablesWithIntrinsicBounds(null, null, drawable, null);
    }
}
