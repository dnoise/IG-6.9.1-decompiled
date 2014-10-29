// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.widget.q;
import com.instagram.common.ui.colorfilter.a;

public class ProfileTagsButton extends FrameLayout
{

    private ImageView a;
    private TextView b;

    public ProfileTagsButton(Context context)
    {
        super(context);
        a();
    }

    public ProfileTagsButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public ProfileTagsButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        LayoutInflater.from(getContext()).inflate(aw.layout_button_profile_tags, this);
        a = (ImageView)findViewById(av.button_profile_tags_imageview);
        b = (TextView)findViewById(av.button_profile_tags_textview);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        Drawable drawable = a.getDrawable().mutate();
        android.graphics.ColorFilter colorfilter;
        if (isPressed())
        {
            colorfilter = com.instagram.common.ui.colorfilter.a.a(getResources().getColor(as.accent_blue_medium));
        } else
        {
            colorfilter = null;
        }
        drawable.setColorFilter(colorfilter);
    }

    public void setPhotosOfYouCount(int i)
    {
        if (i > 0)
        {
            b.setVisibility(0);
            TextView textview = b;
            String s;
            if (i < 100)
            {
                s = String.valueOf(i);
            } else
            {
                s = "\u2022\u2022\u2022";
            }
            q.a(textview, s);
            return;
        } else
        {
            b.setVisibility(8);
            return;
        }
    }

    public void setUser(com.instagram.user.c.a a1)
    {
        boolean flag;
        Drawable drawable;
        char c;
        if (com.instagram.user.a.a.a(a1) || com.instagram.user.a.a.b(a1) && a1.C() != null && a1.C().intValue() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        drawable = a.getDrawable().mutate();
        if (flag)
        {
            c = '\377';
        } else
        {
            c = '\200';
        }
        drawable.setAlpha(c);
        setClickable(flag);
    }
}
