// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.a.b:
//            d

public final class c
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_autocomplete_user, null);
        d d1 = new d();
        d1.a = (TextView)view.findViewById(av.row_user_fullname);
        d1.b = (TextView)view.findViewById(av.row_user_username);
        view.setTag(d1);
        return view;
    }

    public static void a(d d1, a a1)
    {
        d1.a.setText(a1.b());
        if (!TextUtils.isEmpty(a1.c()))
        {
            d1.b.setVisibility(0);
            d1.b.setText(a1.c());
            return;
        } else
        {
            d1.b.setVisibility(8);
            return;
        }
    }
}
