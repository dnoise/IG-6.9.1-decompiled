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

public class ShareTableButton extends CompoundButton
{

    private android.view.View.OnClickListener a;
    private boolean b;

    public ShareTableButton(Context context)
    {
        super(context);
    }

    public ShareTableButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ShareTableButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public final void a()
    {
        b = true;
        refreshDrawableState();
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        Drawable drawable = getCompoundDrawables()[0];
        if (isChecked())
        {
            int j = getResources().getColor(as.accent_blue_medium);
            drawable.mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(j));
            setTextColor(j);
            return;
        }
        if (!isEnabled() || b)
        {
            int i = getResources().getColor(as.grey_light);
            drawable.mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(i));
            setTextColor(i);
            return;
        } else
        {
            drawable.mutate().setColorFilter(null);
            setTextColor(getResources().getColor(as.grey_medium));
            return;
        }
    }

    public boolean performClick()
    {
        if (a != null)
        {
            a.onClick(this);
            return true;
        } else
        {
            return super.performClick();
        }
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        if (!isClickable())
        {
            setClickable(true);
        }
        a = onclicklistener;
    }
}
