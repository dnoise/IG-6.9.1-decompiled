// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.view.View;
import com.instagram.android.feed.a.a;
import com.instagram.android.feed.a.h;

final class ag
    implements android.view.View.OnClickListener
{

    private final a a;
    private final View b;
    private final View c;

    public ag(a a1, View view, View view1)
    {
        a = a1;
        b = view;
        c = view1;
    }

    public final void onClick(View view)
    {
        boolean flag = true;
        a.d();
        View view1 = b;
        boolean flag1;
        View view2;
        if (a.o() == h.b)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        view1.setSelected(flag1);
        view2 = c;
        if (a.o() != h.a)
        {
            flag = false;
        }
        view2.setSelected(flag);
    }
}
