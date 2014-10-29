// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import java.io.Serializable;

// Referenced classes of package com.facebook.i:
//            n

public final class m
    implements Serializable
{

    private boolean a;
    private int b;
    private boolean c;
    private long d;
    private boolean e;
    private String f;
    private boolean g;
    private boolean h;
    private String i;
    private boolean j;
    private n k;
    private boolean l;
    private String m;

    public m()
    {
        b = 0;
        d = 0L;
        f = "";
        h = false;
        i = "";
        m = "";
        k = n.a;
    }

    private boolean a(m m1)
    {
        if (m1 != null)
        {
            if (this == m1)
            {
                return true;
            }
            if (b == m1.b && d == m1.d && f.equals(m1.f) && h == m1.h && i.equals(m1.i) && k == m1.k && m.equals(m1.m) && k() == m1.k())
            {
                return true;
            }
        }
        return false;
    }

    private boolean e()
    {
        return e;
    }

    private String f()
    {
        return f;
    }

    private boolean g()
    {
        return g;
    }

    private String h()
    {
        return i;
    }

    private boolean i()
    {
        return j;
    }

    private n j()
    {
        return k;
    }

    private boolean k()
    {
        return l;
    }

    private String l()
    {
        return m;
    }

    public final int a()
    {
        return b;
    }

    public final m a(int i1)
    {
        a = true;
        b = i1;
        return this;
    }

    public final m a(long l1)
    {
        c = true;
        d = l1;
        return this;
    }

    public final m a(String s)
    {
        if (s == null)
        {
            throw new NullPointerException();
        } else
        {
            e = true;
            f = s;
            return this;
        }
    }

    public final long b()
    {
        return d;
    }

    public final boolean c()
    {
        return h;
    }

    public final m d()
    {
        g = true;
        h = true;
        return this;
    }

    public final boolean equals(Object obj)
    {
        return (obj instanceof m) && a((m)obj);
    }

    public final int hashCode()
    {
        char c1 = '\u04CF';
        int i1 = 53 * (53 * (53 * (2173 + a()) + Long.valueOf(b()).hashCode()) + f().hashCode());
        char c2;
        int j1;
        if (c())
        {
            c2 = c1;
        } else
        {
            c2 = '\u04D5';
        }
        j1 = 53 * (53 * (53 * (53 * (c2 + i1) + h().hashCode()) + j().hashCode()) + l().hashCode());
        if (!k())
        {
            c1 = '\u04D5';
        }
        return j1 + c1;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Country Code: ").append(b);
        stringbuilder.append(" National Number: ").append(d);
        if (g() && c())
        {
            stringbuilder.append(" Leading Zero: true");
        }
        if (e())
        {
            stringbuilder.append(" Extension: ").append(f);
        }
        if (i())
        {
            stringbuilder.append(" Country Code Source: ").append(k);
        }
        if (k())
        {
            stringbuilder.append(" Preferred Domestic Carrier Code: ").append(m);
        }
        return stringbuilder.toString();
    }
}
