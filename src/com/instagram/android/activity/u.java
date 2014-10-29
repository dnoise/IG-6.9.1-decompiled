// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.view.View;
import com.instagram.base.activity.tabactivity.g;
import com.instagram.ui.e.a;
import com.instagram.ui.e.d;
import java.util.LinkedList;

// Referenced classes of package com.instagram.android.activity:
//            t, MainTabActivity

final class u
    implements g
{

    final MainTabActivity a;

    private u(MainTabActivity maintabactivity)
    {
        a = maintabactivity;
        super();
    }

    u(MainTabActivity maintabactivity, byte byte0)
    {
        this(maintabactivity);
    }

    public final void a(String s)
    {
        t t1 = t.valueOf(s);
        if (MainTabActivity.f(a) == t.b && MainTabActivity.b(a).getVisibility() == 0 || MainTabActivity.f(a) == t.f && MainTabActivity.e(a).getVisibility() == 0)
        {
            MainTabActivity.b(a, MainTabActivity.f(a));
        }
        if (!MainTabActivity.h(a))
        {
            com.instagram.android.activity.MainTabActivity.a(a).remove(t1);
            com.instagram.android.activity.MainTabActivity.a(a).addFirst(MainTabActivity.f(a));
        }
        MainTabActivity.c(a, t1);
        d.a().c();
    }
}
