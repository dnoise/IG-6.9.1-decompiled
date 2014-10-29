// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.b;
import com.instagram.api.k.a.d;
import com.instagram.common.a.c.a;
import com.instagram.common.y.e;

public final class k extends b
{

    private final String a;

    public k(String s)
    {
        a = s;
    }

    private static com.instagram.f.a.b.a b(l l)
    {
        return com.instagram.f.a.b.b.a(l);
    }

    protected final d a(l l)
    {
        return b(l);
    }

    protected final void a(com.instagram.api.b.a a1)
    {
    }

    public final int c()
    {
        return a.c;
    }

    protected final String d_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a;
        return e.a("direct_share/%s/", aobj);
    }

    public final boolean e_()
    {
        return true;
    }
}
