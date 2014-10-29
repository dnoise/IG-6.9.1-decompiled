// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;

// Referenced classes of package com.instagram.ui.menu:
//            c, m, b

public final class l
{

    public static View a(Context context)
    {
        c c1 = new c(context);
        m m1 = new m();
        m1.a = c1;
        m1.b = (TextView)c1.findViewById(av.row_simple_text_textview);
        c1.setTag(m1);
        return c1;
    }

    public static void a(View view, b b1)
    {
        m m1 = (m)view.getTag();
        m1.b.setCompoundDrawablesWithIntrinsicBounds(b1.c(), 0, 0, 0);
        m1.b.setText(b1.b());
        m1.a.setChecked(b1.a());
        view.setOnClickListener(b1.d());
    }
}
