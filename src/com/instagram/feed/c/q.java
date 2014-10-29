// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import com.instagram.common.o.a;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.feed.c:
//            g, p

public final class q
{

    private static q a;
    private a b;

    private q()
    {
    }

    public static q a()
    {
        if (a == null)
        {
            c();
        }
        return a;
    }

    private void a(l l1, long l2)
    {
        String s = b(l1);
        a a1 = d();
        a1.b(s, l2);
        if (a1.a() > 200)
        {
            com.instagram.feed.c.g.a(a1);
        }
    }

    public static boolean a(l l1)
    {
        return l1.g();
    }

    private static String b(l l1)
    {
        return l1.d();
    }

    private long c(l l1)
    {
        String s = b(l1);
        return d().a(s, 0L);
    }

    private static void c()
    {
        com/instagram/feed/c/q;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new q();
        }
        com/instagram/feed/c/q;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private a d()
    {
        if (b == null)
        {
            b = com.instagram.common.o.a.c(com.instagram.feed.c.g.a("video_view"));
        }
        return b;
    }

    private boolean d(l l1)
    {
        String s = b(l1);
        return d().a(s);
    }

    public final void a(l l1, int i, com.instagram.feed.g.a a1)
    {
        long l2 = System.currentTimeMillis();
        if (!d(l1))
        {
            com.instagram.feed.c.p.a(l1, i, true, a1);
            a(l1, l2);
        } else
        if (l2 > 60000L + c(l1))
        {
            com.instagram.feed.c.p.a(l1, i, false, a1);
            a(l1, l2);
            return;
        }
    }

    public final void b()
    {
        if (b != null)
        {
            b.c();
        }
    }
}
