// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.bb;
import com.instagram.common.ui.colorfilter.a;

public class FindPeopleButton extends LinearLayout
    implements Checkable
{

    private String a;
    private String b;
    private String c;
    private String d;
    private ImageView e;
    private TextView f;
    private TextView g;
    private ImageView h;
    private boolean i;

    public FindPeopleButton(Context context)
    {
        super(context);
        a(context, null);
    }

    public FindPeopleButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    public FindPeopleButton(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        View view = LayoutInflater.from(getContext()).inflate(aw.layout_find_people_button, this);
        e = (ImageView)view.findViewById(av.find_people_imageview);
        f = (TextView)view.findViewById(av.find_people_title);
        g = (TextView)view.findViewById(av.find_people_subtitle);
        h = (ImageView)view.findViewById(av.find_people_chevron);
        if (attributeset != null)
        {
            TypedArray typedarray = context.obtainStyledAttributes(attributeset, bb.FindPeopleButton);
            if (typedarray.hasValue(bb.FindPeopleButton_icon))
            {
                e.setImageDrawable(typedarray.getDrawable(bb.FindPeopleButton_icon));
            }
            if (typedarray.hasValue(bb.FindPeopleButton_defaultTitle))
            {
                a = typedarray.getString(bb.FindPeopleButton_defaultTitle);
            }
            if (typedarray.hasValue(bb.FindPeopleButton_defaultSubtitle))
            {
                b = typedarray.getString(bb.FindPeopleButton_defaultSubtitle);
            }
            if (typedarray.hasValue(bb.FindPeopleButton_connectedTitle))
            {
                c = typedarray.getString(bb.FindPeopleButton_connectedTitle);
            }
            if (typedarray.hasValue(bb.FindPeopleButton_connectedSubtitle))
            {
                d = typedarray.getString(bb.FindPeopleButton_connectedSubtitle);
            }
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (isChecked())
        {
            int k = getResources().getColor(as.blue_medium);
            e.getDrawable().mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(k));
            f.setText(c);
            f.setTextColor(k);
            g.setText(d);
            g.setTextColor(k);
            h.getDrawable().mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(k));
            return;
        } else
        {
            int j = getResources().getColor(as.grey_light);
            e.getDrawable().mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(j));
            f.setText(a);
            f.setTextColor(j);
            g.setText(b);
            g.setTextColor(j);
            h.getDrawable().mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(j));
            return;
        }
    }

    public boolean isChecked()
    {
        return i;
    }

    public void setChecked(boolean flag)
    {
        i = flag;
        refreshDrawableState();
    }

    public void setConnectedSubtitle(String s)
    {
        d = s;
    }

    public void toggle()
    {
        boolean flag;
        if (!i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setChecked(flag);
    }
}
