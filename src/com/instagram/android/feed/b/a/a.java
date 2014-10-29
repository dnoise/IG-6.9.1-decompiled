// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.b.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.common.a.c.b;

public final class a extends c
{

    private com.instagram.user.d.a a;

    public a(com.instagram.user.d.a a1)
    {
        a = a1;
    }

    protected final d a(l l)
    {
        return f.a(l);
    }

    public final void a(b b1)
    {
        b1.a("algorithm", a.d());
        b1.a("target_id", a.a().g());
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String d_()
    {
        return "discover/aysf_dismiss/";
    }
}
