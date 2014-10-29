// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;

import android.os.SystemClock;
import com.facebook.d.e.a;
import com.facebook.d.e.d;
import com.facebook.d.g.b;
import java.util.IllegalFormatException;

// Referenced classes of package com.facebook.e.c:
//            h, i, n

public class g
{

    private static final a i = (new d(com/facebook/e/c/g, com.facebook.d.g.b.a())).a(new h(com/facebook/e/c/g)).a();
    private i a;
    private int b;
    private String c;
    private Object d[];
    private long e;
    private long f;
    private long g;
    private long h;

    private g()
    {
    }

    g(byte byte0)
    {
        this();
    }

    static g a(int j, String s, Object aobj[])
    {
        return a(i.e, j, s, aobj, -1L, -1L);
    }

    static g a(int j, String s, Object aobj[], boolean flag)
    {
        i k;
        if (flag)
        {
            k = i.c;
        } else
        {
            k = com.facebook.e.c.i.a;
        }
        return a(k, j, s, aobj, -1L, -1L);
    }

    static g a(g g1)
    {
        i j;
        if (g1.c() == com.facebook.e.c.i.a)
        {
            j = com.facebook.e.c.i.b;
        } else
        {
            j = com.facebook.e.c.i.d;
        }
        return a(j, g1.b, g1.c, g1.d, g1.e, g1.g);
    }

    private static g a(i j, int k, String s, Object aobj[], long l, long l1)
    {
        g g1 = (g)i.a();
        g1.a = j;
        g1.b = k;
        g1.d = aobj;
        g1.c = s;
        g1.g = SystemClock.currentThreadTimeMillis();
        g1.e = com.facebook.e.c.n.a();
        g1.f = l;
        g1.h = l1;
        return g1;
    }

    static String a(long l)
    {
        long l1 = Math.round(l);
        long l2 = Math.max(0L, (l1 / 1000L) % 60L);
        long l3 = Math.max(l1 % 1000L, 0L);
        return (new StringBuilder()).append(Long.toString(l2 + 100L).substring(1, 3)).append('.').append(Long.toString(l3 + 1000L).substring(1, 4)).toString();
    }

    private static String b(long l)
    {
        StringBuilder stringbuilder;
        long l1;
        stringbuilder = new StringBuilder(10);
        l1 = Math.round(l);
        if (l1 >= 10L) goto _L2; else goto _L1
_L1:
        stringbuilder.append("____");
_L4:
        stringbuilder.append(l1);
        return stringbuilder.toString();
_L2:
        if (l1 < 100L)
        {
            stringbuilder.append("___");
        } else
        if (l1 < 1000L)
        {
            stringbuilder.append("__");
        } else
        if (l1 < 10000L)
        {
            stringbuilder.append("_");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static String b(g g1)
    {
        g1.c = null;
        return null;
    }

    static Object[] c(g g1)
    {
        g1.d = null;
        return null;
    }

    final void a()
    {
        i.a(this);
    }

    final void a(StringBuilder stringbuilder, long l, long l1, int j)
    {
        int k;
        if (l1 == -1L)
        {
            stringbuilder.append("-----");
        } else
        {
            stringbuilder.append(b((e - l1) / 0xf4240L));
        }
        stringbuilder.append(" ");
        stringbuilder.append(a((e - l) / 0xf4240L));
        if (a != com.facebook.e.c.i.a) goto _L2; else goto _L1
_L1:
        stringbuilder.append(" Start    ...     ...   ");
_L4:
        for (k = 0; k < j; k++)
        {
            stringbuilder.append("|  ");
        }

        break; /* Loop/switch isn't completed */
_L2:
        if (a == i.c)
        {
            stringbuilder.append(" AStart   ...     ...   ");
        } else
        if (a == com.facebook.e.c.i.b || a == com.facebook.e.c.i.d)
        {
            stringbuilder.append(" Done ");
            long l2 = e - f;
            long l3 = g - h;
            stringbuilder.append(b(l2 / 0xf4240L));
            stringbuilder.append(" ms ");
            stringbuilder.append(b(l3));
            stringbuilder.append(" ms ");
        } else
        if (a != i.f)
        {
            stringbuilder.append(" Comment  ...     ...   ");
        }
        if (true) goto _L4; else goto _L3
_L3:
        stringbuilder.append(d());
        return;
    }

    public final int b()
    {
        return b;
    }

    public final i c()
    {
        return a;
    }

    public final String d()
    {
        if (d != null)
        {
            try
            {
                c = com.facebook.d.f.a.a(c, d);
                d = null;
            }
            catch (IllegalFormatException illegalformatexception)
            {
                com.facebook.e.a.a.b("TraceEvent", "Bad format string", illegalformatexception);
                d = null;
            }
        }
        return c;
    }

    public final long e()
    {
        return f;
    }

    public final long f()
    {
        return e;
    }

    public String toString()
    {
        return d();
    }

}
