// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;

import com.facebook.e.a.a;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.facebook.e.c:
//            e, f, g, i, 
//            n, j

final class d
{

    static final ThreadLocal a = new e();
    static int b = -1;
    private static final Comparator c = new f();
    private static final AtomicInteger d = new AtomicInteger(1);
    private final android.support.v4.c.d e = new android.support.v4.c.d();
    private g f[];
    private int g;
    private int h;

    d()
    {
        f = new g[100];
    }

    private int a(long l)
    {
        int k = 0;
        int ai[] = new int[10];
        int i1 = 0;
        int j1 = 0;
        while (k < g) 
        {
            g g1 = f[k];
            if (g1 != null)
            {
                if (g1.c() == com.facebook.e.c.i.a)
                {
                    if (j1 >= ai.length)
                    {
                        ai = Arrays.copyOf(ai, 1 + (3 * ai.length) / 2);
                    }
                    ai[j1] = k;
                    j1++;
                } else
                if (g1.c() == i.b)
                {
                    int k1 = ai[j1 - 1];
                    j1--;
                    if (g1.f() - g1.e() <= l)
                    {
                        g g2 = f[k1];
                        g1.a();
                        g2.a();
                        f[k] = null;
                        f[k1] = null;
                        h = 2 + h;
                        i1 += 2;
                    }
                }
            }
            k++;
        }
        Integer.valueOf(i1);
        return i1;
    }

    private void a(g g1)
    {
        if (8 * h > g)
        {
            g();
        }
        if (g >= f.length)
        {
            int l = 1 + 2 * f.length;
            f = (g[])Arrays.copyOf(f, l);
        }
        g ag[] = f;
        int k = g;
        g = k + 1;
        ag[k] = g1;
    }

    private long b(int k)
    {
        long l1;
        if (h() <= 1500)
        {
            l1 = -1L;
        } else
        {
            PriorityQueue priorityqueue = new PriorityQueue(g / 2, c);
            for (int l = 0; l < g; l++)
            {
                g g2 = f[l];
                if (g2 != null && g2.c() == i.b)
                {
                    priorityqueue.add(g2);
                }
            }

            int i1 = -1500 + h();
            Iterator iterator = priorityqueue.iterator();
            l1 = 0L;
            for (; iterator.hasNext() && i1 > 0; i1 -= 2)
            {
                g g1 = (g)iterator.next();
                l1 = g1.f() - g1.e();
            }

            if (i1 > 0)
            {
                return 0x7fffffffffffffffL;
            }
        }
        return l1;
    }

    private void b()
    {
        for (int k = 0; k < g; k++)
        {
            g g1 = f[k];
            if (g1 == null)
            {
                continue;
            }
            if (g1.c() == com.facebook.e.c.i.a)
            {
                e.b(g1.b());
            }
            g1.a();
        }

        g = 0;
        h = 0;
        e.b();
    }

    private int c(int k)
    {
        for (int l = 0; l < g; l++)
        {
            g g1 = f[l];
            if (g1 != null && g1.c().a() && g1.b() == k)
            {
                return l;
            }
        }

        return -1;
    }

    private void c()
    {
        int k;
        long l;
        k = 0;
        l = n.b();
        int i1 = h();
        if (i1 > 2000) goto _L2; else goto _L1
_L1:
        long l3 = n.b();
        if (l3 - l > 0xf4240L)
        {
            Integer.valueOf(0);
            Long.valueOf(Thread.currentThread().getId());
            Long.valueOf((l3 - l) / 0xf4240L);
        }
_L4:
        return;
_L2:
        k = 0 + d();
        k += e();
        if (h() > 1500)
        {
            k += f();
        }
        if (h() <= 2000)
        {
            break MISSING_BLOCK_LABEL_164;
        }
        com.facebook.e.a.a.b("ThreadTrace", "Resetting because hit couldn't get under hard limit after normal pruning");
        b();
_L5:
        long l2 = n.b();
        if (l2 - l <= 0xf4240L && k <= 0) goto _L4; else goto _L3
_L3:
        Integer.valueOf(k);
        Long.valueOf(Thread.currentThread().getId());
        Long.valueOf((l2 - l) / 0xf4240L);
        return;
        h();
          goto _L5
        Exception exception;
        exception;
        long l1 = n.b();
        if (l1 - l > 0xf4240L || k > 0)
        {
            Integer.valueOf(k);
            Long.valueOf(Thread.currentThread().getId());
            Long.valueOf((l1 - l) / 0xf4240L);
        }
        throw exception;
    }

    private int d()
    {
        int k;
        long l;
        int i1;
        int j1;
        int k1;
        k = 0;
        l = com.facebook.e.c.n.a();
        i1 = 0;
        j1 = 0;
        k1 = 0;
_L9:
        if (i1 >= g) goto _L2; else goto _L1
_L1:
        g g2 = f[i1];
        if (g2 == null) goto _L4; else goto _L3
_L3:
        i i2 = g2.c();
        if (i2 != com.facebook.e.c.i.a) goto _L6; else goto _L5
_L5:
        k1++;
_L7:
        if (l - g2.f() < 0x29e8d60800L)
        {
            break; /* Loop/switch isn't completed */
        }
        if (k1 == 0)
        {
            j1 = i1;
        }
_L4:
        i1++;
        continue; /* Loop/switch isn't completed */
_L6:
        if (i2 == i.b)
        {
            k1--;
        }
        if (true) goto _L7; else goto _L2
_L2:
        int l1;
        if (j1 > 0)
        {
            l1 = 0;
            for (; k < j1 + 1; k++)
            {
                g g1 = f[k];
                if (g1 != null)
                {
                    g1.a();
                    f[k] = null;
                    h = 1 + h;
                    l1++;
                }
            }

        } else
        {
            l1 = 0;
        }
        Integer.valueOf(l1);
        return l1;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private int d(int k)
    {
        for (int l = 0; l < g; l++)
        {
            g g1 = f[l];
            if (g1 != null && g1.c().b() && g1.b() == k)
            {
                return l;
            }
        }

        return -1 + g;
    }

    private int e()
    {
        long l = b(1500);
        if (l < 0L)
        {
            return 0;
        } else
        {
            return a(l);
        }
    }

    private int f()
    {
        int k = 0;
        int l = -1500 + h();
        int i1 = 0;
        for (; k < g && l > 0; k++)
        {
            g g1 = f[k];
            if (g1 != null && g1.c() == i.e)
            {
                g1.a();
                f[k] = null;
                h = 1 + h;
                i1++;
                l--;
            }
        }

        Integer.valueOf(i1);
        return i1;
    }

    private void g()
    {
        int k = 0;
        for (int l = 0; l < g; l++)
        {
            g g1 = f[l];
            if (g1 != null)
            {
                f[k] = g1;
                k++;
            }
        }

        g = k;
        h = 0;
    }

    private int h()
    {
        return g - h;
    }

    private static int i()
    {
        int k;
        for (k = d.incrementAndGet(); k == b || k == 0; k = d.incrementAndGet()) { }
        return k;
    }

    final int a(String s, Object aobj[], boolean flag)
    {
        c();
        int k = i();
        g g1 = com.facebook.e.c.g.a(k, s, aobj, flag);
        a(g1);
        e.b(k, g1);
        return g1.b();
    }

    final long a()
    {
        for (int k = -1 + g; k >= 0; k--)
        {
            g g1 = f[k];
            if (g1 != null)
            {
                return g1.f();
            }
        }

        return -1L;
    }

    final long a(int k, long l, boolean flag)
    {
        g g1;
        long l2;
        int j1;
        long l1 = com.facebook.e.c.n.a();
        int i1 = e.f(k);
        if (i1 < 0)
        {
            return -1L;
        }
        g1 = (g)e.e(i1);
        e.c(i1);
        l2 = l1 - g1.f();
        if (l2 >= 0x2dc6c0L)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        j1 = -1 + g;
_L5:
        if (j1 < 0) goto _L2; else goto _L1
_L1:
        if (f[j1] != g1) goto _L4; else goto _L3
_L3:
        f[j1] = null;
        h = 1 + h;
        g1.a();
_L2:
        return l2;
_L4:
        j1--;
          goto _L5
        a(com.facebook.e.c.g.a(g1));
          goto _L2
    }

    final List a(int k)
    {
        g();
        int l = c(k);
        if (l == -1)
        {
            return Collections.emptyList();
        } else
        {
            int i1 = d(k);
            return Collections.unmodifiableList(Arrays.asList(f).subList(l, i1 + 1));
        }
    }

    final void a(int k, int l, String s)
    {
        com.facebook.e.c.j.a(k, 3, s, Arrays.asList(f).subList(0, g), e);
    }

    final void a(String s, Object aobj[])
    {
        a(com.facebook.e.c.g.a(i(), s, aobj));
    }

}
