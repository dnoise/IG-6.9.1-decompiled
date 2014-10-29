// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.b.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.common.a.c.a;

// Referenced classes of package com.instagram.android.feed.b.a:
//            d, c

public final class b extends c
{

    private final String a;

    public b(String s)
    {
        a = s;
    }

    private static com.instagram.android.feed.b.a.c b(l l)
    {
        return com.instagram.android.feed.b.a.d.a(l);
    }

    protected final d a(l l)
    {
        return b(l);
    }

    public final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("url", a);
    }

    public final int c()
    {
        return a.c;
    }

    protected final String d_()
    {
        return "oembed/";
    }
}
