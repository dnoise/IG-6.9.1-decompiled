// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.d;

import com.instagram.common.analytics.a;
import com.instagram.common.analytics.d;
import com.instagram.common.analytics.g;

// Referenced classes of package com.instagram.user.d:
//            a

public final class b
{

    public static void a(g g, com.instagram.user.d.a a1, int i)
    {
        a(g, "recommended_user_dismissed", a1, i, false);
    }

    public static void a(g g, com.instagram.user.d.a a1, int i, boolean flag)
    {
        a(g, "recommended_user_impression", a1, i, flag);
    }

    private static void a(g g, String s, com.instagram.user.d.a a1, int i, boolean flag)
    {
        d d1 = com.instagram.common.analytics.a.a();
        com.instagram.common.analytics.b b1 = (new com.instagram.common.analytics.b(s, g)).a("uid", a1.a().g()).a("position", i);
        String s1;
        if (flag)
        {
            s1 = "fullscreen";
        } else
        {
            s1 = "feed_aysf";
        }
        d1.a(b1.a("view", s1).a("algorithm", a1.d()));
    }

    public static void b(g g, com.instagram.user.d.a a1, int i, boolean flag)
    {
        a(g, "recommended_username_tapped", a1, i, flag);
    }

    public static void c(g g, com.instagram.user.d.a a1, int i, boolean flag)
    {
        a(g, "recommended_follow_button_tapped", a1, i, flag);
    }
}
