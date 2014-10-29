// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u;

import com.instagram.common.analytics.d;
import com.instagram.common.l.a.f;
import com.instagram.common.u.c.a;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.u:
//            j, a, f, k, 
//            d, c, h, g, 
//            e, i

public final class b
{

    private final Executor a;
    private final Map b = new HashMap();

    private b(Executor executor)
    {
        a = executor;
    }

    public static b a()
    {
        return new b(com.instagram.common.u.j.a());
    }

    static Map a(b b1)
    {
        return b1.b;
    }

    private com.instagram.common.u.a c(String s)
    {
        com.instagram.common.u.a a1 = (com.instagram.common.u.a)b.get(s);
        f.a(a1, (new StringBuilder("category ")).append(s).append(" does not exist").toString());
        return a1;
    }

    public final void a(String s)
    {
        com.instagram.common.u.a a1 = c(s);
        a.execute(new com.instagram.common.u.f(this, a1));
    }

    public final void a(String s, i i, d d1)
    {
        com.instagram.common.u.a a1 = new com.instagram.common.u.a(com.instagram.common.u.k.a(), i, d1);
        b.put(s, a1);
    }

    public final void a(String s, String s1)
    {
        com.instagram.common.u.a a1 = c(s);
        a.execute(new com.instagram.common.u.d(this, a1, s1));
    }

    public final void a(String s, String s1, a a1)
    {
        com.instagram.common.u.a a2 = c(s);
        a.execute(new c(this, a2, s1, a1));
    }

    public final void b()
    {
        a.execute(new h(this));
    }

    public final void b(String s)
    {
        com.instagram.common.u.a a1 = c(s);
        a.execute(new g(this, a1));
    }

    public final void b(String s, String s1)
    {
        com.instagram.common.u.a a1 = c(s);
        a.execute(new e(this, a1, s1));
    }
}
