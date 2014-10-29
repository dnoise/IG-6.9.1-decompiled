// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.d;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package com.instagram.f.d:
//            c, b

public final class a
{

    public List a;
    private List b;
    private List c;
    private boolean d;

    private a()
    {
        b = new CopyOnWriteArrayList();
        c = new CopyOnWriteArrayList();
        a = new CopyOnWriteArrayList();
    }

    a(byte byte0)
    {
        this();
    }

    public static a a()
    {
        return c.a;
    }

    public final void a(com.instagram.user.c.a a1)
    {
        c.add(a1);
        d = false;
    }

    public final void b(com.instagram.user.c.a a1)
    {
        c.remove(a1);
        d = false;
    }

    public final boolean b()
    {
        return c.isEmpty();
    }

    public final void c()
    {
        c.clear();
        d = false;
    }

    public final void c(com.instagram.user.c.a a1)
    {
        b.add(a1);
        d = false;
    }

    public final void d()
    {
        com.instagram.user.c.a aa[] = (com.instagram.user.c.a[])c.toArray(new com.instagram.user.c.a[c.size()]);
        Arrays.sort(aa, new b(this));
        c.clear();
        c.addAll(Arrays.asList(aa));
    }

    public final boolean e()
    {
        return b.isEmpty();
    }

    public final int f()
    {
        return b.size();
    }

    public final void g()
    {
        b.clear();
        d = false;
    }

    public final List h()
    {
        if (!d)
        {
            a.clear();
            a.addAll(b);
            a.addAll(c);
            d = true;
        }
        return new ArrayList(a);
    }
}
