// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;

import com.instagram.common.a.a.o;
import com.instagram.common.s.b;
import com.instagram.common.y.b.a;
import com.instagram.common.y.e;
import com.instagram.m.a.d;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.m:
//            i, c, b, p, 
//            e, l, f, n, 
//            j, d, o

public class k
    implements i
{

    private static final Class a = com/instagram/m/k;
    private final String b;
    private final com.instagram.m.e c;
    private final com.instagram.m.e d;
    private final Set e;
    private final Map f;
    private final a g;
    private final com.instagram.common.a.a.k h;
    private final l i;
    private boolean j;

    private k(String s)
    {
        int i1 = 0;
        super();
        e = new HashSet();
        f = new HashMap();
        j = false;
        b = s;
        com.instagram.m.b ab[] = com.instagram.m.c.o;
        for (int j1 = ab.length; i1 < j1; i1++)
        {
            com.instagram.m.b b1 = ab[i1];
            e.add(b1.c());
        }

        if (s == null)
        {
            c = null;
        } else
        {
            c = new f(e());
            c.a();
        }
        d = com.instagram.m.p.a();
        if (!com.instagram.common.s.b.d())
        {
            d.a();
        }
        g = com.instagram.common.y.b.a.a();
        h = new o();
        i = new l(this);
    }

    k(String s, byte byte0)
    {
        this(s);
    }

    static com.instagram.m.e a(k k1)
    {
        return k1.c;
    }

    static boolean a(k k1, boolean flag)
    {
        k1.j = flag;
        return flag;
    }

    static Set b(k k1)
    {
        return k1.e;
    }

    static String c(k k1)
    {
        return k1.b;
    }

    public static void c()
    {
        com.instagram.m.j.a(new n((byte)0));
    }

    static com.instagram.common.a.a.k d(k k1)
    {
        return k1.h;
    }

    static Class d()
    {
        return a;
    }

    private String e()
    {
        return (new StringBuilder("quick_experiment_cache_")).append(b).toString();
    }

    public final String a(com.instagram.m.b b1)
    {
        if (b == null)
        {
            return b1.e();
        }
        com.instagram.m.d d1 = d.a(b1.c());
        if (d1 != null && !com.instagram.common.y.e.c(d1.a(b1.d())))
        {
            return d1.a(b1.d());
        }
        com.instagram.m.d d2 = c.a(b1.c());
        if (d2 != null)
        {
            return d2.a(b1.d());
        } else
        {
            return b1.e();
        }
    }

    public final void a()
    {
        if (b != null && !e.isEmpty())
        {
            a _tmp = g;
            long l1 = com.instagram.common.y.b.a.d();
            if (l1 - c.b() >= 0x6ddd00L)
            {
                c.a(l1);
                c.c();
                d d1 = new d(b, e);
                d1.a(new com.instagram.m.o(this, (byte)0));
                h.a(d1);
                return;
            }
        }
    }

    public final void b(com.instagram.m.b b1)
    {
        if (b != null)
        {
            Long long1 = (Long)f.get(b1.c());
            a _tmp = g;
            long l1 = com.instagram.common.y.b.a.c();
            if (long1 == null || l1 - long1.longValue() >= 0x6ddd00L)
            {
                com.instagram.m.d d1 = c.a(b1.c());
                if (d1 != null && d1.a(b1.d()) != null)
                {
                    i.a(b1.c());
                    f.put(b1.c(), Long.valueOf(l1));
                    return;
                }
            }
        }
    }

    public final boolean b()
    {
        return j;
    }

}
