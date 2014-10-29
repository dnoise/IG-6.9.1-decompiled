// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.a;


public class a
{

    private String a;
    private long b;
    private int c;
    private int d;
    private float e;
    private int f;
    private int g;
    private int h;
    private int i;
    private float j;

    public a()
    {
        b = -1L;
        e = 0.5F;
    }

    public final a a(float f1)
    {
        e = f1;
        return this;
    }

    public final a a(int i1)
    {
        c = i1;
        return this;
    }

    public final a a(long l1)
    {
        b = l1;
        return this;
    }

    public final a a(String s)
    {
        a = s;
        return this;
    }

    public final void a(int i1, int j1)
    {
        h = i1;
        i = j1;
        j = (float)i1 / (float)j1;
    }

    public final boolean a()
    {
        return h < i;
    }

    public final a b(int i1)
    {
        d = i1;
        return this;
    }

    public final String b()
    {
        return a;
    }

    public final void b(int i1, int j1)
    {
        if (d == 1 || d == 3)
        {
            a(j1, i1);
            return;
        } else
        {
            a(i1, j1);
            return;
        }
    }

    public final int c()
    {
        return c;
    }

    public final a c(int i1)
    {
        f = i1;
        return this;
    }

    public final int d()
    {
        return d;
    }

    public final a d(int i1)
    {
        g = i1;
        return this;
    }

    public final float e()
    {
        return e;
    }

    public final int f()
    {
        return f;
    }

    public final int g()
    {
        return g;
    }

    public final long h()
    {
        return b;
    }

    public final int i()
    {
        return g - f;
    }

    public final float j()
    {
        return j;
    }

    public final int k()
    {
        return h;
    }

    public final int l()
    {
        return i;
    }
}
