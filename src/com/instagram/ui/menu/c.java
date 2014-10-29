// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.colorfilter.a;

public final class c extends FrameLayout
    implements Checkable
{

    TextView a;
    View b;

    public c(Context context)
    {
        super(context);
        a();
    }

    private void a()
    {
        LayoutInflater.from(getContext()).inflate(aw.row_check_item, this);
        a = (TextView)findViewById(av.row_simple_text_textview);
        b = findViewById(av.row_check_imageview);
    }

    public final boolean isChecked()
    {
        return b.getVisibility() == 0;
    }

    public final void setChecked(boolean flag)
    {
        int i;
        if (flag)
        {
            i = as.accent_blue_medium;
            b.setVisibility(0);
        } else
        {
            i = as.grey_medium;
            b.setVisibility(8);
        }
        a.getCompoundDrawables()[0].mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(a.getResources().getColor(i)));
        a.setTextColor(a.getResources().getColor(i));
    }

    public final void toggle()
    {
        boolean flag;
        if (!isChecked())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setChecked(flag);
    }
}
