// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.widget.FindPeopleButton;

// Referenced classes of package com.instagram.android.a.b:
//            f, g

public final class e
{

    public static View a(Context context, f f1)
    {
        com.instagram.android.widget.e e1 = f1.b();
        View view = LayoutInflater.from(context).inflate(aw.row_find_people_buttons, null);
        g g1 = new g();
        g1.a = (FindPeopleButton)view.findViewById(av.facebook_button);
        g1.a.setConnectedSubtitle(e1.c());
        g1.b = (FindPeopleButton)view.findViewById(av.contacts_button);
        g1.b.setConnectedSubtitle(e1.g());
        view.setTag(g1);
        return view;
    }

    public static void a(g g1, f f1)
    {
        com.instagram.android.widget.e e1 = f1.b();
        g1.a.setOnClickListener(e1.a());
        g1.a.setChecked(com.instagram.android.widget.e.b());
        g1.b.setOnClickListener(e1.e());
        g1.b.setChecked(com.instagram.android.widget.e.f());
    }
}
