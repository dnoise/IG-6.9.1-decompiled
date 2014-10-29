// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.feed.a.a;
import com.instagram.android.g.c;
import com.instagram.android.util.d;
import com.instagram.android.widget.ae;

// Referenced classes of package com.instagram.android.feed.a.b:
//            i

public final class h
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.layout_button_group_view_switcher, null);
        i j = new i();
        com.instagram.android.feed.a.b.i.a(j, (TextView)view.findViewById(av.layout_button_group_view_switcher_text));
        j.a = view.findViewById(av.layout_button_group_view_switcher_button_grid);
        j.b = view.findViewById(av.layout_button_group_view_switcher_button_list);
        view.setTag(j);
        com.instagram.android.feed.a.b.i.a(j).setVisibility(0);
        view.findViewById(av.vertical_divider_1).setVisibility(0);
        view.findViewById(av.vertical_divider_2).setVisibility(0);
        return view;
    }

    public static void a(i j, c c1, Context context, a a1)
    {
        ae.a(j.a, j.b, a1);
        com.instagram.android.feed.a.b.i.a(j).setText(d.a(context.getResources(), c1.b()));
    }
}
