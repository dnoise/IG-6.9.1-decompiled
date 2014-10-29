// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import com.fasterxml.jackson.a.g.a;
import com.fasterxml.jackson.a.g.b;
import com.fasterxml.jackson.a.g.c;
import com.fasterxml.jackson.a.g.o;

public final class d
{

    protected final Object a;
    protected com.fasterxml.jackson.a.d b;
    protected final boolean c;
    protected final a d;
    protected byte e[];
    protected byte f[];
    protected byte g[];
    protected char h[];
    protected char i[];
    protected char j[];

    public d(a a1, Object obj, boolean flag)
    {
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        j = null;
        d = a1;
        a = obj;
        c = flag;
    }

    private static void a(Object obj)
    {
        if (obj != null)
        {
            throw new IllegalStateException("Trying to call same allocXxx() method second time");
        } else
        {
            return;
        }
    }

    private static void a(Object obj, Object obj1)
    {
        if (obj != obj1)
        {
            throw new IllegalArgumentException("Trying to release buffer not owned by the context");
        } else
        {
            return;
        }
    }

    public final Object a()
    {
        return a;
    }

    public final void a(com.fasterxml.jackson.a.d d1)
    {
        b = d1;
    }

    public final void a(byte abyte0[])
    {
        if (abyte0 != null)
        {
            a(abyte0, e);
            e = null;
            d.a(b.a, abyte0);
        }
    }

    public final void a(char ac[])
    {
        if (ac != null)
        {
            a(ac, h);
            h = null;
            d.a(c.a, ac);
        }
    }

    public final char[] a(int k)
    {
        a(j);
        char ac[] = d.a(c.d, k);
        j = ac;
        return ac;
    }

    public final com.fasterxml.jackson.a.d b()
    {
        return b;
    }

    public final void b(byte abyte0[])
    {
        if (abyte0 != null)
        {
            a(abyte0, f);
            f = null;
            d.a(b.b, abyte0);
        }
    }

    public final void b(char ac[])
    {
        if (ac != null)
        {
            a(ac, i);
            i = null;
            d.a(c.b, ac);
        }
    }

    public final void c(byte abyte0[])
    {
        if (abyte0 != null)
        {
            a(abyte0, g);
            g = null;
            d.a(b.d, abyte0);
        }
    }

    public final void c(char ac[])
    {
        if (ac != null)
        {
            a(ac, j);
            j = null;
            d.a(c.d, ac);
        }
    }

    public final boolean c()
    {
        return c;
    }

    public final o d()
    {
        return new o(d);
    }

    public final byte[] e()
    {
        a(e);
        byte abyte0[] = d.a(b.a);
        e = abyte0;
        return abyte0;
    }

    public final byte[] f()
    {
        a(f);
        byte abyte0[] = d.a(b.b);
        f = abyte0;
        return abyte0;
    }

    public final byte[] g()
    {
        a(g);
        byte abyte0[] = d.a(b.d);
        g = abyte0;
        return abyte0;
    }

    public final char[] h()
    {
        a(h);
        char ac[] = d.a(c.a);
        h = ac;
        return ac;
    }

    public final char[] i()
    {
        a(i);
        char ac[] = d.a(c.b);
        i = ac;
        return ac;
    }
}
