// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.b;
import com.instagram.api.k.a.d;
import com.instagram.api.k.a.f;

public final class a extends b
{

    private final String a;
    private final String b;
    private final String d = null;

    public a(String s, String s1, String s2)
    {
        a = s;
        b = s1;
    }

    protected final d a(l l)
    {
        return f.a(l);
    }

    protected final void a(com.instagram.api.b.a a1)
    {
        if (a != null)
        {
            a1.a("id", a);
        }
        a1.a("experiment", b);
        if (d != null)
        {
            a1.a("data", d);
        }
    }

    protected final String d_()
    {
        return "qe/expose/";
    }
}
