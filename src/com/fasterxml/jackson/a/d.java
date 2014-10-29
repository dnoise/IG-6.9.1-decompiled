// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;


public final class d extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    public static final d d;
    public static final d e;
    private static final d h[];
    protected final String f;
    protected final boolean g;

    private d(String s, int i, String s1, boolean flag)
    {
        super(s, i);
        f = s1;
        g = flag;
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/fasterxml/jackson/a/d, s);
    }

    public static d[] values()
    {
        return (d[])h.clone();
    }

    public final String a()
    {
        return f;
    }

    public final boolean b()
    {
        return g;
    }

    static 
    {
        a = new d("UTF8", 0, "UTF-8", false);
        b = new d("UTF16_BE", 1, "UTF-16BE", true);
        c = new d("UTF16_LE", 2, "UTF-16LE", false);
        d = new d("UTF32_BE", 3, "UTF-32BE", true);
        e = new d("UTF32_LE", 4, "UTF-32LE", false);
        d ad[] = new d[5];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        ad[3] = d;
        ad[4] = e;
        h = ad;
    }
}
