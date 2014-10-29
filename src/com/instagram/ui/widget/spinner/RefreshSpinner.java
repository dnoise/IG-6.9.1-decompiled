// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.spinner;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.as;
import com.facebook.au;
import com.facebook.bb;
import com.instagram.common.ui.colorfilter.a;
import com.instagram.common.ui.widget.spinner.SpinnerImageView;

public class RefreshSpinner extends SpinnerImageView
{

    public RefreshSpinner(Context context)
    {
        super(context);
        a(null);
    }

    public RefreshSpinner(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(attributeset);
    }

    public RefreshSpinner(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(attributeset);
    }

    private void a(AttributeSet attributeset)
    {
        setImageResource(au.nav_spinner);
        if (attributeset != null)
        {
            TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, bb.RefreshSpinner);
            setDark(typedarray.getBoolean(bb.RefreshSpinner_dark, false));
            typedarray.recycle();
        }
    }

    public void setDark(boolean flag)
    {
        Drawable drawable = getDrawable().mutate();
        android.graphics.ColorFilter colorfilter;
        if (flag)
        {
            colorfilter = com.instagram.common.ui.colorfilter.a.a(getResources().getColor(as.grey_medium));
        } else
        {
            colorfilter = null;
        }
        drawable.setColorFilter(colorfilter);
    }
}
