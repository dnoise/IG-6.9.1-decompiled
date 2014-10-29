// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.g.b.c;

final class ap extends ArrayAdapter
    implements SpinnerAdapter
{

    private final Context a;
    private final String b = "-";
    private final String c;
    private final String d;

    public ap(Context context)
    {
        super(context, aw.spinner_gender_selected);
        a = context;
        c = context.getString(az.gender_male);
        d = context.getString(az.gender_female);
    }

    public static int a(int i)
    {
        if (i == c.c)
        {
            return 0;
        }
        return i != c.a ? 2 : 1;
    }

    public static int b(int i)
    {
        if (i == 0)
        {
            return c.c;
        }
        if (i == 1)
        {
            return c.a;
        } else
        {
            return c.b;
        }
    }

    private CharSequence c(int i)
    {
        int j = b(i);
        if (j == c.c)
        {
            return b;
        }
        if (j == c.a)
        {
            return c;
        } else
        {
            return d;
        }
    }

    public final int getCount()
    {
        return 3;
    }

    public final View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = LayoutInflater.from(a).inflate(aw.spinner_gender_dropdown, viewgroup, false);
        }
        ((TextView)view).setText(c(i));
        return view;
    }

    public final Object getItem(int i)
    {
        return c(i);
    }
}
