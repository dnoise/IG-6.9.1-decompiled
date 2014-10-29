// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.facebook.av;
import com.facebook.aw;

// Referenced classes of package com.instagram.ui.menu:
//            k, a

public final class j
{

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_button_item, viewgroup, false);
        k k1 = new k();
        k1.a = (Button)view.findViewById(av.button_item);
        view.setTag(k1);
        return view;
    }

    public static void a(View view, a a1)
    {
        k k1 = (k)view.getTag();
        k1.a.setText(a1.a());
        k1.a.setOnClickListener(a1.b());
    }
}
