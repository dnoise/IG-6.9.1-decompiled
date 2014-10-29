// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;

// Referenced classes of package com.instagram.ui.menu:
//            q, f

public final class p
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_menu_item, null);
        q q1 = new q();
        q1.a = (TextView)view.findViewById(av.row_simple_text_textview);
        q1.b = view.findViewById(av.row_divider);
        view.setTag(q1);
        return view;
    }

    public static void a(View view, f f1, boolean flag, boolean flag1)
    {
        q q1 = (q)view.getTag();
        View view1;
        byte byte0;
        if (f1.a() != null)
        {
            view.setOnClickListener(f1.a());
        } else
        {
            view.setClickable(false);
        }
        if (f1.c() != null)
        {
            q1.a.setText(f1.c());
        } else
        {
            q1.a.setText(f1.b());
        }
        if (flag)
        {
            if (flag1)
            {
                view.setBackgroundResource(au.dialog_row_single);
            } else
            {
                view.setBackgroundResource(au.dialog_row_top);
            }
        } else
        if (flag1)
        {
            view.setBackgroundResource(au.dialog_row_bottom);
        } else
        {
            view.setBackgroundResource(au.bg_simple_row);
        }
        view1 = q1.b;
        if (flag1)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view1.setVisibility(byte0);
    }
}
