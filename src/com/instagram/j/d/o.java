// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.instagram.api.k.a.d;
import com.instagram.feed.f.a;
import com.instagram.feed.f.b;
import java.util.List;

// Referenced classes of package com.instagram.j.d:
//            p

public final class o extends d
{

    String a;
    p b;
    List c;
    List d;
    List e;
    List s;
    private a t;

    public o()
    {
        t = com.instagram.feed.f.a.a();
    }

    public final p b()
    {
        if (b == null)
        {
            b = new p();
        }
        return b;
    }

    public final int c()
    {
        return b().e;
    }

    public final a d()
    {
        return t;
    }

    final o e()
    {
        if (a != null)
        {
            t.a(b.c, a);
        }
        return this;
    }

    public final List f()
    {
        return c;
    }

    public final List t()
    {
        return d;
    }

    public final List u()
    {
        return e;
    }

    public final List v()
    {
        return s;
    }
}
