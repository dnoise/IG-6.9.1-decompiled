// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.b.a;

import com.instagram.api.g.n;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.common.g.b.h;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.b.a:
//            a, b

final class c
    implements Runnable
{

    final com.instagram.b.a.b a;

    c(com.instagram.b.a.b b1)
    {
        a = b1;
        super();
    }

    public final void run()
    {
        a a1 = com.instagram.l.b.a.a();
        b b1 = new b("device_info", null);
        int i;
        b b2;
        int j;
        b b3;
        boolean flag;
        int k;
        b b4;
        com.instagram.k.a a2;
        if (a1.v())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        b2 = b1.a("sound", i);
        if (a1.x())
        {
            j = 1;
        } else
        {
            j = 0;
        }
        b3 = b2.a("save_originals", j);
        flag = com.instagram.creation.c.a.c();
        k = 0;
        if (!flag)
        {
            k = 1;
        }
        b4 = b3.a("low_bandwidth", k).a("image_cache_size", h.a().b()).a("video_cache_size", com.instagram.common.g.c.a.a().b()).a("badge_count", a1.z());
        (new com.instagram.b.a.a(com.instagram.b.a.b.a(a))).a(b4);
        com.instagram.common.analytics.a.a().a(b4);
        n.a().b();
        a2 = com.instagram.k.a.a(com.instagram.b.a.b.a(a));
        com.instagram.common.analytics.a.a().a((new b("app_performance", null)).a("data_usage", a2.b()));
    }
}
