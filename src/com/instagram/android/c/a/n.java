// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.d;
import com.instagram.common.y.e;
import com.instagram.feed.a.h;
import com.instagram.feed.f.a;

// Referenced classes of package com.instagram.android.c.a:
//            p, o

public final class n extends h
{

    private final String a;

    public n(a a1, boolean flag, String s)
    {
        super(a1, flag);
        a = s;
    }

    private static o b(l l)
    {
        return com.instagram.android.c.a.p.a(l);
    }

    protected final d a(l l)
    {
        return b(l);
    }

    protected final String e()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a;
        return com.instagram.common.y.e.a("usertags/%s/feed/", aobj);
    }
}
