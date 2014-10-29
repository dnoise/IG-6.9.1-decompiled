// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.b.a;
import com.instagram.api.k.a.b;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.instagram.m.a:
//            c, b

public final class d extends b
{

    private final String a;
    private final Set b = new HashSet();

    public d(String s, Set set)
    {
        a = s;
        b.addAll(set);
    }

    private com.instagram.m.a.b b(l l)
    {
        return (new c(b)).a(l);
    }

    public final com.instagram.api.k.a.d a(l l)
    {
        return b(l);
    }

    protected final void a(a a1)
    {
        if (a != null)
        {
            a1.a("id", a);
        }
        a1.a("experiments", com.instagram.common.l.a.b.a().a(b));
    }

    protected final String d_()
    {
        return "qe/sync/";
    }
}
