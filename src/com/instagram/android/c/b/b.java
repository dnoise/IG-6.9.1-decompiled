// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.b;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.common.a.c.a;

// Referenced classes of package com.instagram.android.c.b:
//            d, c

public final class b extends c
{

    private final String a;
    private final String b;
    private final boolean d;

    public b(String s, String s1, boolean flag)
    {
        a = s1;
        b = s;
        d = flag;
    }

    private static com.instagram.android.c.b.c b(l l)
    {
        return com.instagram.android.c.b.d.a(l);
    }

    public final d a(l l)
    {
        return b(l);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("rank_token", a);
        b1.a("q", b);
        b1.a("is_typeahead", String.valueOf(d));
    }

    public final int c()
    {
        return a.c;
    }

    protected final String d_()
    {
        return "users/search/";
    }
}
