// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;

import java.util.List;

// Referenced classes of package com.facebook.e.c:
//            d, n

public final class a
{

    private final d a;
    private final int b;
    private final long c;
    private final String d;
    private long e;

    private a(d d1, int i, long l, String s)
    {
        e = -1L;
        a = d1;
        b = i;
        c = l;
        d = s;
    }

    public static a a(String s)
    {
        return c(s);
    }

    private long c()
    {
        com.facebook.systrace.a.b(d, b);
        long l = a.a(b, 0L, false);
        if (l == -1L)
        {
            l = n.a() - c;
        }
        e = l;
        return l;
    }

    private static a c(String s)
    {
        d d1 = (d)d.a.get();
        a a1 = new a(d1, d1.a(s, null, true), n.a(), s);
        com.facebook.systrace.a.a(s, a1.b);
        return a1;
    }

    public final long a()
    {
        return c() / 0xf4240L;
    }

    public final List b()
    {
        return a.a(b);
    }

    public final void b(String s)
    {
        a.a(b, 3, s);
    }
}
