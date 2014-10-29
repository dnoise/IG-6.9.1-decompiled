// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import com.instagram.common.o.a;
import com.instagram.feed.d.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.feed.c:
//            d, g, s, e, 
//            l

public final class c
{

    private static a a;
    private static a b;
    private final Map c = new HashMap();
    private final Map d = new HashMap();
    private final com.instagram.feed.g.a e;

    public c(com.instagram.feed.g.a a1)
    {
        e = a1;
    }

    private String a(l l1, d d1)
    {
        if (c(l1) != null)
        {
            if (com.instagram.feed.c.d.a.equals(d1))
            {
                return c(l1);
            }
            if (d.b.equals(d1))
            {
                return (new StringBuilder()).append(c(l1)).append("_LAST_VIEWED_IMPRESSION_TIME").toString();
            }
        }
        return null;
    }

    public static void a()
    {
        a = null;
        b = null;
    }

    private void a(l l1, long l2, int i, com.instagram.feed.g.a a1)
    {
        long l3 = System.currentTimeMillis();
        if (e(l1) && l3 - l2 >= 1000L)
        {
            if (!c(l1, d.b))
            {
                com.instagram.feed.c.g.a("viewed_impression", l1, i, a1);
                a(l1, d.b, l3);
                return;
            }
            if (l3 - b(l1, d.b) > 60000L)
            {
                com.instagram.feed.c.g.a("sub_viewed_impression", l1, i, a1);
                a(l1, d.b, l3);
                return;
            }
        }
    }

    private void a(l l1, d d1, long l2)
    {
        String s1 = a(l1, d1);
        a a1 = d(l1);
        a1.b(s1, l2);
        if (a1.a() > 200)
        {
            com.instagram.feed.c.g.a(a1);
        }
    }

    private long b(l l1, d d1)
    {
        String s1 = a(l1, d1);
        return d(l1).a(s1, 0L);
    }

    private String c(l l1)
    {
        if (g.b(l1, e))
        {
            return Integer.toHexString(l1.ai().hashCode());
        }
        if (g.c(l1, e))
        {
            return l1.d();
        } else
        {
            return null;
        }
    }

    private boolean c(l l1, d d1)
    {
        String s1 = a(l1, d1);
        return d(l1).a(s1, 0xffffffff80000000L) != 0xffffffff80000000L;
    }

    private a d(l l1)
    {
        e();
        if (g.b(l1, e))
        {
            return a;
        }
        if (g.c(l1, e))
        {
            return b;
        } else
        {
            return null;
        }
    }

    private static void e()
    {
        com/instagram/feed/c/c;
        JVM INSTR monitorenter ;
        if (a == null) goto _L2; else goto _L1
_L1:
        a a1 = b;
        if (a1 == null) goto _L2; else goto _L3
_L3:
        com/instagram/feed/c/c;
        JVM INSTR monitorexit ;
        return;
_L2:
        a = com.instagram.common.o.a.c(com.instagram.feed.c.g.a("starred_view"));
        b = com.instagram.common.o.a.c(com.instagram.feed.c.g.a("organic_view"));
        if (true) goto _L3; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    private boolean e(l l1)
    {
        return c(l1) != null && d(l1) != null;
    }

    public final void a(l l1)
    {
        s s1;
        long l2;
        if (e(l1))
        {
            if ((s1 = (s)d.remove(c(l1))) != null && ((l2 = System.currentTimeMillis() - s1.b.longValue()) > 500L && com.instagram.feed.c.g.a(l1, e)))
            {
                com.instagram.feed.c.g.a(com.instagram.feed.c.g.a("time_spent", l1, e).a(s1.d).a(l2).a(), l1, e);
                return;
            }
        }
    }

    public final void a(l l1, int i)
    {
        if (e(l1))
        {
            long l2 = System.currentTimeMillis();
            if (!c(l1, com.instagram.feed.c.d.a))
            {
                com.instagram.feed.c.g.a("impression", l1, i, e);
                a(l1, com.instagram.feed.c.d.a, l2);
                com.instagram.feed.c.l.a().a(l1.ae());
                return;
            }
            if (l2 > 60000L + b(l1, com.instagram.feed.c.d.a))
            {
                com.instagram.feed.c.g.a("sub_impression", l1, i, e);
                a(l1, com.instagram.feed.c.d.a, l2);
                com.instagram.feed.c.l.a().a(l1.ae());
                return;
            }
        }
    }

    public final void b()
    {
        Iterator iterator = c.entrySet().iterator();
        long l1 = System.currentTimeMillis();
        s s1;
        for (; iterator.hasNext(); a(s1.a, l1 - s1.b.longValue(), s1.d, e))
        {
            s1 = (s)((java.util.Map.Entry)iterator.next()).getValue();
        }

        d.clear();
        if (b != null)
        {
            b.c();
        }
        if (a != null)
        {
            a.c();
        }
    }

    public final void b(l l1)
    {
        if (!e(l1))
        {
            return;
        }
        s s1 = (s)c.remove(c(l1));
        if (s1 == null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = c(l1);
            com.facebook.e.a.a.a("ImpressionTracker", "Viewable info missing for media with key %s", aobj);
            return;
        } else
        {
            long l2 = System.currentTimeMillis();
            d.put(c(l1), new s(l1, s1.b, Long.valueOf(l2), s1.d));
            a(l1, s1.b.longValue(), s1.d, e);
            return;
        }
    }

    public final void b(l l1, int i)
    {
        if (!e(l1))
        {
            return;
        } else
        {
            c.put(c(l1), new s(l1, Long.valueOf(System.currentTimeMillis()), null, i));
            return;
        }
    }

    public final void c()
    {
        long l1 = System.currentTimeMillis();
        HashMap hashmap = new HashMap();
        String s1;
        s s2;
        for (Iterator iterator = c.entrySet().iterator(); iterator.hasNext(); hashmap.put(s1, new s(s2.a, Long.valueOf(l1), null, s2.d)))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            s1 = (String)entry.getKey();
            s2 = (s)entry.getValue();
        }

        c.clear();
        c.putAll(hashmap);
    }

    public final void d()
    {
        c.clear();
        d.clear();
    }
}
