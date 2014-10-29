// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.facebook.aw;
import com.instagram.feed.e.b;

// Referenced classes of package com.instagram.android.a.b:
//            j, i

public final class h
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.follow_destination_banner, null);
        j j1 = new j();
        j.a(j1, view);
        view.setTag(j1);
        return view;
    }

    public static void a(j j1, b b)
    {
        j.a(j1).setOnClickListener(new i(b));
    }
}
