// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.b.d;

import com.facebook.d.g.a;
import com.instagram.common.analytics.d;
import com.instagram.common.analytics.g;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.instagram.b.d:
//            d, b, e, a

public final class c
{

    private static c a;
    private final a b;
    private final Map c = new ConcurrentHashMap(20, 0.75F, 2);
    private final d d;

    private c(d d1, a a1)
    {
        b = a1;
        d = d1;
    }

    public static c a()
    {
        return a;
    }

    private static String a(String s, g g1)
    {
        if (g1 == null)
        {
            return s;
        } else
        {
            return (new StringBuilder()).append(g1.j_()).append(":").append(s).toString();
        }
    }

    public static void a(d d1, a a1)
    {
        a = new c(d1, a1);
    }

    private void a(String s, g g1, long l)
    {
        String s1 = a(s, ((g) (null)));
        com.instagram.b.d.d d1 = new com.instagram.b.d.d(s, null, l);
        c.put(s1, d1);
    }

    private void b(String s, g g1, long l)
    {
        String s1 = a(s, ((g) (null)));
        com.instagram.b.d.d d1 = (com.instagram.b.d.d)c.remove(s1);
        if (d1 == null)
        {
            return;
        } else
        {
            long l1 = l - d1.a();
            b b1 = d1.b();
            b1.a("elapsed_time", l1);
            d.a(b1);
            return;
        }
    }

    private void d(String s)
    {
        a(s, null, b.now());
    }

    private void e(String s)
    {
        b(s, null, b.now());
    }

    private com.instagram.b.d.a f(String s)
    {
        String s1 = a(s, ((g) (null)));
        if (!c.containsKey(s1))
        {
            return null;
        } else
        {
            return new e((com.instagram.b.d.d)c.get(s1));
        }
    }

    public final void a(String s)
    {
        d(s);
    }

    public final void b(String s)
    {
        e(s);
    }

    public final com.instagram.b.d.a c(String s)
    {
        return f(s);
    }
}
