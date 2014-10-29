// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class d extends LinearLayout
{

    private List a;

    public d(Context context)
    {
        super(context);
        a = new ArrayList();
        a();
    }

    private void a()
    {
        setBackgroundResource(au.notification_tooltip);
        setLayoutParams(new android.widget.LinearLayout.LayoutParams(-2, -2));
        LayoutInflater.from(getContext()).inflate(aw.view_custom_toast, this);
        a.add((TextView)findViewById(av.toast_inbox_textview_1));
        a.add((TextView)findViewById(av.toast_inbox_textview_2));
        a.add((TextView)findViewById(av.toast_inbox_textview_3));
    }

    private static void a(View view)
    {
        ((View)view.getParent()).setVisibility(8);
    }

    private static void a(TextView textview, int i, int j)
    {
        ((View)textview.getParent()).setVisibility(0);
        textview.setText(String.valueOf(i));
        textview.setCompoundDrawablesWithIntrinsicBounds(j, 0, 0, 0);
    }

    public final void a(int i, int j, int k, int l)
    {
        Iterator iterator = a.iterator();
        if (i > 0)
        {
            a((TextView)iterator.next(), i, au.notification_comment_icon);
        }
        if (j > 0)
        {
            a((TextView)iterator.next(), j, au.notification_like_icon);
        }
        if (k > 0 && (i == 0 || j == 0 || l == 0))
        {
            a((TextView)iterator.next(), k, au.notification_people_icon);
        }
        if (l > 0)
        {
            a((TextView)iterator.next(), l, au.notification_tag_icon);
        }
        for (; iterator.hasNext(); a((View)iterator.next())) { }
    }
}
