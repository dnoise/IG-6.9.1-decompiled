// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import com.instagram.android.g.e;
import com.instagram.android.g.f;
import com.instagram.api.k.a.c;
import com.instagram.api.k.a.d;
import com.instagram.common.a.c.a;
import com.instagram.common.a.c.b;

public final class l extends c
{

    private final String a;
    private final String b;

    public l(String s, String s1)
    {
        b = s1;
        a = s;
    }

    private static e b(com.fasterxml.jackson.a.l l1)
    {
        return f.a(l1);
    }

    public final d a(com.fasterxml.jackson.a.l l1)
    {
        return b(l1);
    }

    public final void a(b b1)
    {
        b1.a("challenge_type", a);
        b1.a("guid", b);
    }

    public final int c()
    {
        return a.c;
    }

    protected final String d_()
    {
        return "si/fetch_headers/";
    }
}
