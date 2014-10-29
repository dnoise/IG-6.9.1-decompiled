// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import com.instagram.api.k.a.b;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.common.a.c.a;
import com.instagram.common.y.e;
import com.instagram.feed.d.l;
import com.instagram.feed.d.o;

public final class p extends b
{

    private final l a;
    private final int b;

    public p(l l1, int i)
    {
        a = l1;
        b = i;
    }

    protected final d a(com.fasterxml.jackson.a.l l1)
    {
        return f.a(l1);
    }

    protected final void a(com.instagram.api.b.a a1)
    {
    }

    public final int c()
    {
        return a.a;
    }

    protected final String d_()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a.d();
        String s;
        if (b == o.a)
        {
            s = "like";
        } else
        {
            s = "unlike";
        }
        aobj[1] = s;
        return e.a("direct_share/%s/%s/", aobj);
    }

    public final boolean e_()
    {
        return true;
    }
}
