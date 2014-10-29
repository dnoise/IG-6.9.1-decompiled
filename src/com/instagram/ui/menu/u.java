// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;

// Referenced classes of package com.instagram.ui.menu:
//            x, w, aa, v

public final class u
{

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_switch_item, viewgroup, false);
        x x1 = new x();
        x1.a = (TextView)view.findViewById(av.row_simple_text_textview);
        x1.b = (CompoundButton)view.findViewById(av.row_menu_item_switch);
        view.setTag(x1);
        view.setOnClickListener(new w(x1));
        return view;
    }

    public static void a(View view, aa aa1)
    {
        x x1 = (x)view.getTag();
        if (aa1.b() != null)
        {
            x1.a.setText(aa1.b());
        } else
        {
            x1.a.setText(aa1.a());
        }
        x1.b.setTag(x1.a.getText());
        x1.b.setOnCheckedChangeListener(null);
        x1.b.setChecked(aa1.c());
        x1.b.setOnCheckedChangeListener(new v(aa1));
    }
}
