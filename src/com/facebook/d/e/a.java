// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.e;

import java.lang.reflect.Array;

// Referenced classes of package com.facebook.d.e:
//            b

public class a
{

    private static final Class a = com/facebook/d/e/a;
    private final Class b;
    private final int c;
    private final int d;
    private final int e;
    private final b f;
    private final com.facebook.d.g.a g;
    private final long h;
    private long i;
    private Object j[];
    private int k;

    public a(Class class1, int l, int i1, int j1, long l1, b b1, 
            com.facebook.d.g.a a1)
    {
        b = class1;
        c = Math.max(l, 0);
        d = Math.max(c, i1);
        e = Math.max(j1, 1);
        h = l1;
        f = b1;
        g = a1;
        j = (Object[])(Object[])Array.newInstance(b, c);
    }

    private void a(int l)
    {
        Object aobj[] = (Object[])(Object[])Array.newInstance(b, l);
        System.arraycopy(((Object) (j)), 0, ((Object) (aobj)), 0, Math.min(j.length, l));
        j = aobj;
        k = Math.min(k, l);
    }

    static Class b()
    {
        return a;
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
        long l = g.now();
        if (k < 2 * e)
        {
            i = l;
        }
        if (l - i > h)
        {
            a;
            d();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void d()
    {
        this;
        JVM INSTR monitorenter ;
        int l = Math.max(j.length - e, c);
        if (l != j.length)
        {
            a(l);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final Object a()
    {
        this;
        JVM INSTR monitorenter ;
        if (k <= 0) goto _L2; else goto _L1
_L1:
        Object obj1;
        k = -1 + k;
        obj1 = j[k];
        j[k] = null;
_L3:
        f;
        this;
        JVM INSTR monitorexit ;
        return obj1;
_L2:
        Object obj = f.a();
        obj1 = obj;
          goto _L3
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        c();
        f.a(obj);
        if (k < d)
        {
            if (1 + k > j.length)
            {
                a(Math.min(d, j.length + e));
            }
            Object aobj[] = j;
            int l = k;
            k = l + 1;
            aobj[l] = obj;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
