// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import com.instagram.api.k.a.b;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.common.y.e;
import com.instagram.feed.d.l;

public final class a extends b
{

    private final l a;

    public a(l l1)
    {
        a = l1;
    }

    protected final d a(com.fasterxml.jackson.a.l l1)
    {
        return f.a(l1);
    }

    protected final void a(com.instagram.api.b.a a1)
    {
        a1.a("media_id", a.d());
    }

    protected final String d_()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a.d();
        aobj[1] = a.w();
        return e.a("media/%s/delete/?media_type=%s", aobj);
    }
}
