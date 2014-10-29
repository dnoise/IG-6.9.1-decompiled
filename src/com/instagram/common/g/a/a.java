// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.a;

import com.instagram.common.analytics.b;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.instagram.common.g.a:
//            b

public final class a
{

    private final AtomicInteger a = new AtomicInteger();
    private final AtomicInteger b = new AtomicInteger();
    private final AtomicLong c = new AtomicLong();
    private final AtomicLong d = new AtomicLong();
    private final String e;
    private final com.instagram.common.p.b.a f = new com.instagram.common.g.a.b(this);
    private long g;

    public a(String s)
    {
        g = 0xfffffffffff6d840L;
        e = s;
    }

    static long a(a a1)
    {
        return a1.g;
    }

    static void b(a a1)
    {
        a1.d();
    }

    private void d()
    {
        int i = a.getAndSet(0);
        int j = i + b.getAndSet(0);
        long l = c.getAndSet(0L);
        long l1 = d.getAndSet(0L);
        com.instagram.common.y.b.a.a();
        g = com.instagram.common.y.b.a.c();
        if (j > 0)
        {
            (new b("cache_analytics", null)).a("name", e).a("hits", i).a("total", j).a("rInMB", l / 0x100000L).a("wInMB", l1 / 0x100000L).a();
        }
    }

    public final void a()
    {
        com.instagram.common.p.b.b.a().a(f);
    }

    public final void b()
    {
        a.incrementAndGet();
    }

    public final void c()
    {
        b.incrementAndGet();
    }
}
