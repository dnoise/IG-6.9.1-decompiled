// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.f.a.b.e;
import com.instagram.feed.f.a;
import com.instagram.feed.f.b;

public final class l extends c
{

    private final a a;

    public l(a a1)
    {
        a = a1;
    }

    private static com.instagram.f.a.b.c b(com.fasterxml.jackson.a.l l1)
    {
        return e.a(l1);
    }

    public final d a(com.fasterxml.jackson.a.l l1)
    {
        return b(l1);
    }

    public final void a(com.instagram.common.a.c.b b1)
    {
        if (a != null)
        {
            b1.a(a.b().d, a.c());
        }
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    protected final String d_()
    {
        return "direct_share/inbox/";
    }

    public final boolean e_()
    {
        return true;
    }
}
