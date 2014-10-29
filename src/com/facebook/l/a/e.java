// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.l.a;

import java.util.List;

public final class e
{

    private boolean a;
    private String b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private String g;
    private String h;
    private String i;
    private List j;

    public e(String s)
    {
        a = false;
        c = false;
        d = false;
        e = false;
        f = false;
        g = "";
        h = "";
        i = "";
        b = s;
    }

    public final void a(String s)
    {
        g = s;
    }

    public final void a(List list)
    {
        j = list;
    }

    public final boolean a()
    {
        return a;
    }

    public final e b()
    {
        a = true;
        return this;
    }

    public final void b(String s)
    {
        h = s;
    }

    public final e c()
    {
        a = false;
        return this;
    }

    public final void c(String s)
    {
        i = s;
    }

    public final void d()
    {
        c = true;
    }

    public final void e()
    {
        d = true;
    }

    public final void f()
    {
        e = true;
    }

    public final void g()
    {
        f = true;
    }
}
