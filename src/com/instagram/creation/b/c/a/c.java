// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.common.a.c.b;
import com.instagram.model.a.a;

public final class c extends com.instagram.api.k.a.c
{

    private final com.instagram.creation.b.a.b a;

    public c(com.instagram.creation.b.a.b b1)
    {
        a = b1;
    }

    protected final d a(l l)
    {
        return f.a(l);
    }

    public final void a(b b1)
    {
        b1.a("media_type", String.valueOf(a.b.a()));
        b1.a("upload_id", a.b());
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String d_()
    {
        return "upload/video/";
    }
}
