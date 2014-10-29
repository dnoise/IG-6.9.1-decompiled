// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.systrace;

import com.facebook.c.a.a.a;
import com.facebook.c.a.a.c;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.facebook.systrace:
//            i, f, g

final class e
{

    private static final Object a = new Object[0];
    private static final List b = new ArrayList();
    private static volatile boolean c = false;

    public static void a(i j)
    {
        synchronized (a)
        {
            b.add(j);
            if (c)
            {
                j.a();
            }
        }
    }

    public static boolean a()
    {
        return c;
    }

    public static void b()
    {
        com.facebook.c.a.a.c.a(true);
        e();
    }

    static void c()
    {
        e();
    }

    private static void d()
    {
        e();
        com.facebook.c.a.a.a.a(new f());
    }

    private static void e()
    {
        boolean flag = g();
        if (flag != c)
        {
            c = flag;
            f();
        }
    }

    private static void f()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        int j = 0;
_L2:
        i k;
        if (j >= b.size())
        {
            break MISSING_BLOCK_LABEL_62;
        }
        k = (i)b.get(j);
        if (c)
        {
            k.a();
            break MISSING_BLOCK_LABEL_65;
        }
        k.b();
        break MISSING_BLOCK_LABEL_65;
        Exception exception;
        exception;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
        return;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean g()
    {
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            return com.facebook.c.a.a.c.a(c.b);
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return com.facebook.systrace.g.a();
        } else
        {
            return false;
        }
    }

    static 
    {
        d();
    }
}
