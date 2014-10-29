// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.e;

import com.fasterxml.jackson.a.h;
import com.instagram.common.y.b.a;

// Referenced classes of package com.instagram.ui.e:
//            b, a

final class c
{

    final com.instagram.ui.e.a a;
    private final String b;
    private boolean c;
    private int d;
    private long e;
    private long f;

    private c(com.instagram.ui.e.a a1, String s)
    {
        a = a1;
        super();
        b = s;
    }

    c(com.instagram.ui.e.a a1, String s, byte byte0)
    {
        this(a1, s);
    }

    private void a()
    {
        c = true;
        d = com.instagram.ui.e.b.a;
        e = 0L;
        com.instagram.ui.e.a.a(a);
        f = com.instagram.common.y.b.a.c();
    }

    private void a(long l)
    {
        if (c && (d == b.b || d == b.c || d == b.d))
        {
            e = e + (l - f);
        }
        f = l;
    }

    private void a(h h1)
    {
        if (e > 10L)
        {
            h1.writeStartObject();
            h1.writeStringField("category", b);
            h1.writeNumberField("wait_time_ms", e);
            h1.writeEndObject();
        }
        e = 0L;
    }

    static void a(c c1)
    {
        c1.a();
    }

    static void a(c c1, h h1)
    {
        c1.a(h1);
    }

    static void a(c c1, boolean flag, long l)
    {
        c1.a(flag, l);
    }

    private void a(boolean flag, long l)
    {
        if (flag == c)
        {
            return;
        } else
        {
            a(l);
            c = flag;
            return;
        }
    }

    static String b(c c1)
    {
        return c1.b;
    }

    static long c(c c1)
    {
        return c1.e;
    }

    public final void a(int i)
    {
        if (i == d)
        {
            return;
        } else
        {
            com.instagram.ui.e.a.a(a);
            a(com.instagram.common.y.b.a.c());
            d = i;
            return;
        }
    }
}
