// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.b.a;
import com.instagram.api.k.a.b;

// Referenced classes of package com.instagram.f.a.a:
//            f, e

public final class d extends b
{

    private final long a;

    public d(long l)
    {
        a = l;
    }

    private static e b(l l)
    {
        return com.instagram.f.a.a.f.a(l);
    }

    public final com.instagram.api.k.a.d a(l l)
    {
        return b(l);
    }

    protected final void a(a a1)
    {
        a1.a("counted_up_to", Long.toString(a));
    }

    protected final String d_()
    {
        return "direct_share/clear_new_count/";
    }

    public final boolean e_()
    {
        return true;
    }
}
