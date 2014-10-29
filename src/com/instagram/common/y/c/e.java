// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.c;

import com.facebook.d.b.b;
import com.instagram.common.i.c;
import com.instagram.common.y.b.a;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.y.c:
//            a, d

public final class e
{

    private final a a;
    private final b b;
    private final Executor c;
    private String d;
    private int e;
    private int f;
    private int g;

    private e(a a1, b b1, Executor executor)
    {
        a = a1;
        b = b1;
        c = executor;
        e = -1;
        f = -1;
        g = -1;
    }

    static a a(e e1)
    {
        return e1.a;
    }

    public static e a()
    {
        return new e(com.instagram.common.y.b.a.a(), com.instagram.common.i.c.a(), com.instagram.common.y.c.a.a());
    }

    static b b(e e1)
    {
        return e1.b;
    }

    static String c(e e1)
    {
        return e1.d;
    }

    static Executor d(e e1)
    {
        return e1.c;
    }

    static int e(e e1)
    {
        return e1.e;
    }

    static int f(e e1)
    {
        return e1.f;
    }

    static int g(e e1)
    {
        return e1.g;
    }

    public final e a(String s)
    {
        d = s;
        return this;
    }

    public final e b()
    {
        g = 10000;
        return this;
    }

    public final d c()
    {
        return new d(this, (byte)0);
    }
}
