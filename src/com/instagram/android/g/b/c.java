// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g.b;

import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.common.y.e;
import com.instagram.user.c.a;
import com.instagram.user.c.f;

public final class c
{

    public static int a = 1;
    public static int b = 2;
    public static int c = 3;
    private a d;
    private String e;
    private String f;
    private String g;
    private String h;
    private int i;

    public c()
    {
        i = c;
    }

    public static c a(JsonNode jsonnode)
    {
        c c1 = new c();
        c1.d = com.instagram.user.c.a.a(jsonnode, null);
        c1.e = jsonnode.get("phone_number").asText();
        c1.f = jsonnode.get("email").asText();
        c1.i = jsonnode.get("gender").asInt(c);
        if (!com.instagram.common.y.e.c(c1.e))
        {
            c1.g = jsonnode.get("country_code").asText();
            c1.h = jsonnode.get("national_number").asText();
        }
        return c1;
    }

    public final String a()
    {
        return d.c();
    }

    public final void a(int l)
    {
        i = l;
    }

    public final void a(f f1)
    {
        d.a(f1);
    }

    public final void a(String s)
    {
        d.b(s);
    }

    public final String b()
    {
        return d.b();
    }

    public final void b(String s)
    {
        d.a(s);
    }

    public final String c()
    {
        return d.k();
    }

    public final void c(String s)
    {
        d.f(s);
    }

    public final String d()
    {
        return d.j();
    }

    public final void d(String s)
    {
        d.e(s);
    }

    public final f e()
    {
        return d.s();
    }

    public final void e(String s)
    {
        e = s;
    }

    public final String f()
    {
        return e;
    }

    public final void f(String s)
    {
        f = s;
    }

    public final String g()
    {
        return g;
    }

    public final String h()
    {
        return h;
    }

    public final String i()
    {
        return f;
    }

    public final int j()
    {
        return i;
    }

    public final a k()
    {
        return d;
    }

}
