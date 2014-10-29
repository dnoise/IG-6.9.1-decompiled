// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.c;

import com.facebook.d.b.b;
import com.instagram.common.y.b.a;

// Referenced classes of package com.instagram.common.y.c:
//            d

final class f
    implements Runnable
{

    final d a;
    private final Runnable b;
    private final long c = com.instagram.common.y.b.a.c();
    private volatile long d;
    private volatile long e;

    f(d d1, Runnable runnable)
    {
        a = d1;
        super();
        b = runnable;
        com.instagram.common.y.c.d.a(d1);
        d = -1L;
        e = -1L;
    }

    public final void run()
    {
        com.instagram.common.y.c.d.a(a);
        d = com.instagram.common.y.b.a.c();
        if (com.instagram.common.y.c.d.b(a) != -1 && d - c > (long)com.instagram.common.y.c.d.b(a))
        {
            com.instagram.common.y.c.d.d(a).b("dispatch time exceeded limit", com.instagram.common.y.c.d.c(a));
        }
        com.instagram.common.y.c.d.a(a);
        long l = com.instagram.common.y.b.a.b();
        b.run();
        com.instagram.common.y.c.d.a(a);
        long l1 = com.instagram.common.y.b.a.b();
        com.instagram.common.y.c.d.a(a);
        long l2 = com.instagram.common.y.b.a.c();
        if (com.instagram.common.y.c.d.e(a) != -1 && l1 - l > (long)com.instagram.common.y.c.d.e(a))
        {
            com.instagram.common.y.c.d.d(a).b("compute time exceeded limit", com.instagram.common.y.c.d.c(a));
        }
        if (com.instagram.common.y.c.d.f(a) != -1 && l2 - d > (long)com.instagram.common.y.c.d.f(a))
        {
            com.instagram.common.y.c.d.d(a).b("wall clock runtime exceeded limit", com.instagram.common.y.c.d.c(a));
        }
        com.instagram.common.y.c.d.g(a);
    }
}
