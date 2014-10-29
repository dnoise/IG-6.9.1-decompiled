// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.notifications.c2dm;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;
import com.instagram.common.a.c.a;
import com.instagram.common.u.b.g;

final class b extends c
{

    private final String a;
    private final String b;

    private b(String s, g g1)
    {
        a = s;
        b = g1.a();
    }

    b(String s, g g1, byte byte0)
    {
        this(s, g1);
    }

    protected final d a(l l)
    {
        return f.a(l);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("device_token", a);
        b1.a("device_type", b);
    }

    public final int c()
    {
        return a.a;
    }

    protected final String d_()
    {
        return "push/register/";
    }
}
