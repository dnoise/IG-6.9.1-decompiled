// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;

import com.facebook.systrace.a;
import java.util.IllegalFormatException;

// Referenced classes of package com.facebook.e.c:
//            b, l, o, m, 
//            c, d, n

public class k
{

    private static o a = new b();
    private static final ThreadLocal b = new l();

    private k()
    {
    }

    public static void a()
    {
        b();
    }

    public static void a(String s)
    {
        d(s, null);
    }

    public static transient void a(String s, Object aobj[])
    {
        c(s, aobj);
    }

    private static long b()
    {
        if (a.b())
        {
            com.facebook.systrace.a.a();
        }
        m m1 = (m)b.get();
        long l2;
        if (m1.b)
        {
            l2 = -1L;
        } else
        {
            if (m1.a.a() < 2)
            {
                com.facebook.e.a.a.b(com/facebook/e/c/k, "Tracer stack underflow. There's an extra stopTracer somewhere.");
                m1.b = true;
                return -1L;
            }
            long l1 = m1.a.b();
            int i = (int)m1.a.b();
            if (i != d.b)
            {
                l2 = ((d)com.facebook.e.c.d.a.get()).a(i, 0L, false);
            } else
            {
                l2 = -1L;
            }
            if (l2 == -1L)
            {
                return com.facebook.e.c.n.a() - l1;
            }
        }
        return l2;
    }

    public static transient void b(String s, Object aobj[])
    {
        d(s, aobj);
    }

    private static void c(String s, Object aobj[])
    {
        m m1 = (m)b.get();
        if (!m1.b) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (m1.a.a() >= 100)
        {
            com.facebook.e.a.a.b(com/facebook/e/c/k, "Tracer stack overflow. There is probably a missing stopTracer somewhere.");
            m1.a.c();
            m1.b = true;
            return;
        }
        String s1;
        if (a.a())
        {
            d d1 = (d)com.facebook.e.c.d.a.get();
            long l1 = d1.a(s, aobj, false);
            long l2 = d1.a();
            m1.a.a(l1);
            m1.a.a(l2);
        } else
        {
            m1.a.a(d.b);
            m1.a.a(com.facebook.e.c.n.a());
        }
        if (!a.b()) goto _L1; else goto _L3
_L3:
        if (!com.facebook.systrace.a.b())
        {
            break MISSING_BLOCK_LABEL_135;
        }
        s1 = com.facebook.d.f.a.a(s, aobj);
        s = s1;
_L5:
        com.facebook.systrace.a.a(s);
        return;
        IllegalFormatException illegalformatexception;
        illegalformatexception;
        com.facebook.e.a.a.b("Tracer", "Bad format string", illegalformatexception);
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void d(String s, Object aobj[])
    {
        if (a.a())
        {
            ((d)com.facebook.e.c.d.a.get()).a(s, aobj);
        }
    }

}
