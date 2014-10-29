// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.b;

import java.util.Arrays;

// Referenced classes of package com.facebook.d.b:
//            g

public final class f
{

    private final String a;
    private final String b;
    private final Throwable c;
    private final boolean d;
    private final int e;
    private final boolean f;

    f(g g1)
    {
        a = g1.a();
        b = g1.b();
        c = g1.c();
        d = g1.d();
        e = g1.f();
        f = g1.g();
    }

    private static transient int a(Object aobj[])
    {
        return Arrays.hashCode(aobj);
    }

    public static g a(String s, String s1)
    {
        return (new g()).a(s).b(s1);
    }

    private static boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    public static f b(String s, String s1)
    {
        return (new g()).a(s).b(s1).h();
    }

    public final String a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final Throwable c()
    {
        return c;
    }

    public final boolean d()
    {
        return d;
    }

    public final int e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            f f1 = (f)obj;
            if (d != f1.d)
            {
                return false;
            }
            if (f != f1.f)
            {
                return false;
            }
            if (e != f1.e)
            {
                return false;
            }
            if (!a(a, f1.a))
            {
                return false;
            }
            if (!a(c, f1.c))
            {
                return false;
            }
            if (!a(b, f1.b))
            {
                return false;
            }
        }
        return true;
    }

    public final boolean f()
    {
        return f;
    }

    public final int hashCode()
    {
        Object aobj[] = new Object[4];
        aobj[0] = a;
        aobj[1] = b;
        aobj[2] = Boolean.valueOf(d);
        aobj[3] = Integer.valueOf(e);
        return a(aobj);
    }
}
