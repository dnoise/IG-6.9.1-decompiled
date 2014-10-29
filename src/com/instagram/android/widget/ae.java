// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.view.View;
import com.instagram.android.feed.a.a;
import com.instagram.android.feed.a.h;

// Referenced classes of package com.instagram.android.widget:
//            af, ag

public final class ae
{

    static void a(int i, View view, View view1, a a1)
    {
        b(i, view, view1, a1);
    }

    public static void a(View view, View view1, a a1)
    {
        b(a1.o(), view, view1, a1);
        a1.a(new af(view, view1, a1));
    }

    private static void b(int i, View view, View view1, a a1)
    {
        boolean flag = true;
        boolean flag1;
        if (i == h.a)
        {
            view.setOnClickListener(new ag(a1, view, view1));
            view1.setOnClickListener(null);
        } else
        {
            view1.setOnClickListener(new ag(a1, view, view1));
            view.setOnClickListener(null);
        }
        if (i == h.b)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        view.setSelected(flag1);
        if (i != h.a)
        {
            flag = false;
        }
        view1.setSelected(flag);
        view1.setEnabled(a1.m());
        view.setEnabled(a1.m());
    }
}
