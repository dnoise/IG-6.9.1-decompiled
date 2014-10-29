// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a;

import java.util.Date;

public final class f
    implements Cloneable
{

    int a;
    private String b;
    private long c;
    private Date d;
    private Date e;
    private double f;
    private double g;
    private float h;
    private long i;
    private int j;
    private long k[] = {
        0x10000L, 0L, 0L, 0L, 0x10000L, 0L, 0L, 0L, 0x40000000L
    };

    public f()
    {
        d = new Date();
        e = new Date();
        i = 1L;
        j = 0;
    }

    public final String a()
    {
        return b;
    }

    public final void a(double d1)
    {
        f = d1;
    }

    public final void a(int l)
    {
        a = l;
    }

    public final void a(long l)
    {
        c = l;
    }

    public final void a(String s)
    {
        b = s;
    }

    public final void a(Date date)
    {
        d = date;
    }

    public final void a(long al[])
    {
        k = al;
    }

    public final long b()
    {
        return c;
    }

    public final void b(double d1)
    {
        g = d1;
    }

    public final void b(long l)
    {
        i = l;
    }

    public final void b(Date date)
    {
        e = date;
    }

    public final Date c()
    {
        return e;
    }

    public final Object clone()
    {
        Object obj;
        try
        {
            obj = super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return null;
        }
        return obj;
    }

    public final double d()
    {
        return f;
    }

    public final long[] e()
    {
        return k;
    }

    public final double f()
    {
        return g;
    }

    public final long g()
    {
        return i;
    }

    public final int h()
    {
        return a;
    }

    public final float i()
    {
        return h;
    }

    public final int j()
    {
        return j;
    }
}
