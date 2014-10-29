// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;


// Referenced classes of package com.instagram.common.analytics:
//            q, g, a, d

public class b
{

    private final String a;
    private final q b = new q();
    private long c;
    private String d;

    public b(String s, g g1)
    {
        c = System.currentTimeMillis();
        a = s;
        if (g1 != null)
        {
            d = g1.j_();
        }
    }

    public final b a(String s)
    {
        return a("pk", s);
    }

    public final b a(String s, double d1)
    {
        b.a(s, d1);
        return this;
    }

    public final b a(String s, int i)
    {
        b.a(s, i);
        return this;
    }

    public final b a(String s, long l)
    {
        b.a(s, l);
        return this;
    }

    public final b a(String s, String s1)
    {
        b.a(s, s1);
        return this;
    }

    public final b a(String s, boolean flag)
    {
        b.a(s, flag);
        return this;
    }

    public final b a(String s, String as[])
    {
        b.a(s, as);
        return this;
    }

    public final void a()
    {
        com.instagram.common.analytics.a.a().a(this);
    }

    public final String b()
    {
        return d;
    }

    public final String b(String s)
    {
        return b.b(s);
    }

    public final String c()
    {
        return a;
    }

    public final long d()
    {
        return c;
    }

    final boolean e()
    {
        return !b.a();
    }

    final q f()
    {
        return b;
    }

    public String toString()
    {
        return (new StringBuilder("{\n| extra = {\n")).append(b.a("|   ")).append("| }\n| module = ").append(d).append("\n| name = ").append(a).append("\n| time = ").append(c).append("\n}").toString();
    }
}
