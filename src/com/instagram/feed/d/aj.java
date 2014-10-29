// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.fasterxml.jackson.a.l;
import com.instagram.api.b.a;
import com.instagram.api.k.a.b;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.feed.d:
//            l

final class aj extends b
{

    private final com.instagram.feed.d.l a;
    private long b;

    aj(com.instagram.feed.d.l l1)
    {
        a = l1;
        b = l1.ao();
    }

    protected final d a(l l1)
    {
        return f.a(l1);
    }

    protected final void a(a a1)
    {
        a1.a("seen_up_to", Long.toString(b));
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String d_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        return e.a("direct_share/%s/seen/", aobj);
    }

    public final boolean e_()
    {
        return true;
    }

    final com.instagram.feed.d.l h()
    {
        return a;
    }

    final long j()
    {
        return b;
    }
}
