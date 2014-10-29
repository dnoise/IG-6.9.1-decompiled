// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.io.Serializable;
import java.util.List;

// Referenced classes of package com.facebook:
//            u, cg, cf

final class k
    implements Serializable
{

    private final transient u a;
    private cg b;
    private int c;
    private boolean d;
    private List e;
    private cf f;
    private String g;
    private String h;

    k(cg cg, int j, boolean flag, List list, cf cf, String s, String s1, 
            u u)
    {
        d = false;
        b = cg;
        c = j;
        d = flag;
        e = list;
        f = cf;
        g = s;
        h = s1;
        a = u;
    }

    final u a()
    {
        return a;
    }

    final void a(List list)
    {
        e = list;
    }

    final List b()
    {
        return e;
    }

    final cg c()
    {
        return b;
    }

    final int d()
    {
        return c;
    }

    final cf e()
    {
        return f;
    }

    final String f()
    {
        return g;
    }

    final boolean g()
    {
        return d;
    }

    final String h()
    {
        return h;
    }

    final boolean i()
    {
        return h != null && !d;
    }
}
