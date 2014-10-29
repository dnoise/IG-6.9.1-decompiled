// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.c;
import com.instagram.common.a.c.a;
import com.instagram.common.a.c.b;
import com.instagram.feed.f.d;

// Referenced classes of package com.instagram.android.c.a:
//            g

public final class f extends c
{

    private d a;
    private g b;

    public f(d d1, g g1)
    {
        a = d1;
        b = g1;
    }

    public final f a(String s)
    {
        a().a("reason", s);
        return this;
    }

    protected final com.instagram.api.k.a.d a(l l)
    {
        return com.instagram.api.k.a.f.a(l);
    }

    public final void a(b b1)
    {
        b1.a("type", a.a());
        b1.a("action", b.a());
    }

    public final int c()
    {
        return a.a;
    }

    protected final String d_()
    {
        return "megaphone/log/";
    }
}
