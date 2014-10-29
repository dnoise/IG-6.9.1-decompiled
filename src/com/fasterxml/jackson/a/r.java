// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;


public final class r extends Enum
{

    public static final r a;
    public static final r b;
    public static final r c;
    public static final r d;
    public static final r e;
    public static final r f;
    public static final r g;
    public static final r h;
    public static final r i;
    public static final r j;
    public static final r k;
    public static final r l;
    public static final r m;
    private static final r q[];
    final String n;
    final char o[];
    final byte p[];

    private r(String s, int i1, String s1)
    {
        super(s, i1);
        if (s1 == null)
        {
            n = null;
            o = null;
            p = null;
        } else
        {
            n = s1;
            o = s1.toCharArray();
            int j1 = o.length;
            p = new byte[j1];
            int k1 = 0;
            while (k1 < j1) 
            {
                p[k1] = (byte)o[k1];
                k1++;
            }
        }
    }

    public static r valueOf(String s)
    {
        return (r)Enum.valueOf(com/fasterxml/jackson/a/r, s);
    }

    public static r[] values()
    {
        return (r[])q.clone();
    }

    public final String a()
    {
        return n;
    }

    public final char[] b()
    {
        return o;
    }

    public final boolean c()
    {
        return this == i || this == j;
    }

    public final boolean d()
    {
        return ordinal() >= g.ordinal();
    }

    static 
    {
        a = new r("NOT_AVAILABLE", 0, null);
        b = new r("START_OBJECT", 1, "{");
        c = new r("END_OBJECT", 2, "}");
        d = new r("START_ARRAY", 3, "[");
        e = new r("END_ARRAY", 4, "]");
        f = new r("FIELD_NAME", 5, null);
        g = new r("VALUE_EMBEDDED_OBJECT", 6, null);
        h = new r("VALUE_STRING", 7, null);
        i = new r("VALUE_NUMBER_INT", 8, null);
        j = new r("VALUE_NUMBER_FLOAT", 9, null);
        k = new r("VALUE_TRUE", 10, "true");
        l = new r("VALUE_FALSE", 11, "false");
        m = new r("VALUE_NULL", 12, "null");
        r ar[] = new r[13];
        ar[0] = a;
        ar[1] = b;
        ar[2] = c;
        ar[3] = d;
        ar[4] = e;
        ar[5] = f;
        ar[6] = g;
        ar[7] = h;
        ar[8] = i;
        ar[9] = j;
        ar[10] = k;
        ar[11] = l;
        ar[12] = m;
        q = ar;
    }
}
