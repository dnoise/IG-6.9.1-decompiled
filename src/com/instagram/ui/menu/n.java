// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.ui.menu:
//            o, d

public final class n
{

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_header, viewgroup, false);
        o o1 = new o();
        o.a(o1, (TextView)view.findViewById(av.row_header_textview));
        view.setTag(o1);
        return view;
    }

    public static void a(View view, d d1, boolean flag, boolean flag1)
    {
        o o1 = (o)view.getTag();
        o.a(o1).setText(d1.a());
        int i;
        TextView textview;
        int j;
        if (flag)
        {
            i = view.getResources().getDimensionPixelSize(at.menu_separator_height);
        } else
        {
            i = 0;
        }
        f.b(view, i);
        textview = o.a(o1);
        j = 0;
        if (flag1)
        {
            j = view.getResources().getDimensionPixelSize(at.row_text_padding);
        }
        f.d(textview, j);
    }
}
