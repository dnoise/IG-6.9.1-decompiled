// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.az;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.android.creation.a:
//            b, c

final class a
{

    private final TextView a;
    private final TextView b;

    a(View view)
    {
        a = (TextView)view.findViewById(av.view_switcher_button_first);
        a.setText(az.followers);
        b = (TextView)view.findViewById(av.view_switcher_button_second);
        b.setText(az.direct);
        b.setTextColor(view.getResources().getColorStateList(as.view_switcher_text_selected_green));
    }

    static void b(int i)
    {
        c(i);
    }

    private static void c(int i)
    {
        boolean flag = true;
        Intent intent = new Intent("MetadataFragment.INTENT_ACTION_SHARE_MODE_CHANGE");
        boolean flag1;
        if (i == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        intent.putExtra("MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED", flag1);
        if (i != flag)
        {
            flag = false;
        }
        intent.putExtra("MetadataFragment.IS_DIRECT_SHARE_SELECTED", flag);
        d.b(intent);
    }

    final void a()
    {
        a.setOnClickListener(new b(this));
        b.setOnClickListener(new c(this));
    }

    final void a(int i)
    {
        boolean flag = true;
        TextView textview = a;
        boolean flag1;
        TextView textview1;
        if (i == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        textview.setSelected(flag1);
        textview1 = b;
        if (i != flag)
        {
            flag = false;
        }
        textview1.setSelected(flag);
    }
}
