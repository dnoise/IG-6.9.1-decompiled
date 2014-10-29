// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.common.a.c.a;
import com.instagram.common.a.c.b;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.c.a:
//            m, l

public final class k extends c
{

    private l a;

    public k(l l1)
    {
        a = l1;
    }

    private static com.instagram.android.c.a.l b(com.fasterxml.jackson.a.l l1)
    {
        return com.instagram.android.c.a.m.a(l1);
    }

    protected final d a(com.fasterxml.jackson.a.l l1)
    {
        return b(l1);
    }

    public final void a(b b1)
    {
    }

    public final int c()
    {
        return a.c;
    }

    protected final String d_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        return String.format("media/%s/permalink/", aobj);
    }
}
