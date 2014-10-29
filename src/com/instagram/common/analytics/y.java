// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.instagram.common.t.b;
import com.instagram.common.y.b.a;

// Referenced classes of package com.instagram.common.analytics:
//            z, aa, b

public final class y
{

    private final a a;
    private final z b;
    private long c;
    private volatile long d;

    public y()
    {
        this(com.instagram.common.y.b.a.a(), new z());
        a _tmp = a;
        d = com.instagram.common.y.b.a.d();
    }

    private y(a a1, z z1)
    {
        c = -1L;
        a = a1;
        b = z1;
        a _tmp = a;
        d = com.instagram.common.y.b.a.d();
    }

    private static boolean a(long l, aa aa1)
    {
        return aa1.b == l % aa1.a;
    }

    public final com.instagram.common.analytics.b a(long l, String s)
    {
        long l1 = l / 1000L;
        if (l1 > c)
        {
            long l2 = 1000L * c;
            c = l1;
            aa aa1 = b.a(s);
            if (aa1 != null && aa1.a() && a(l1, aa1))
            {
                return (new com.instagram.common.analytics.b("immediate_active_seconds", com.instagram.common.t.b.a().b())).a("activity_time", l).a("last_activity_time", l2).a("last_foreground_time", d);
            }
        }
        return null;
    }

    public final void a()
    {
        b.a();
    }
}
