// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;


public final class n extends Enum
{

    public static final n a;
    public static final n b;
    public static final n c;
    public static final n d;
    public static final n e;
    public static final n f;
    public static final n g;
    public static final n h;
    private static final n j[];
    private final boolean i;

    private n(String s, int k, boolean flag)
    {
        super(s, k);
        i = flag;
    }

    public static int a()
    {
        int k = 0;
        n an[] = values();
        int l = an.length;
        for (int i1 = 0; i1 < l; i1++)
        {
            n n1 = an[i1];
            if (n1.c())
            {
                k |= n1.b();
            }
        }

        return k;
    }

    private boolean c()
    {
        return i;
    }

    public static n valueOf(String s)
    {
        return (n)Enum.valueOf(com/fasterxml/jackson/a/n, s);
    }

    public static n[] values()
    {
        return (n[])j.clone();
    }

    public final int b()
    {
        return 1 << ordinal();
    }

    static 
    {
        a = new n("AUTO_CLOSE_SOURCE", 0, true);
        b = new n("ALLOW_COMMENTS", 1, false);
        c = new n("ALLOW_UNQUOTED_FIELD_NAMES", 2, false);
        d = new n("ALLOW_SINGLE_QUOTES", 3, false);
        e = new n("ALLOW_UNQUOTED_CONTROL_CHARS", 4, false);
        f = new n("ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER", 5, false);
        g = new n("ALLOW_NUMERIC_LEADING_ZEROS", 6, false);
        h = new n("ALLOW_NON_NUMERIC_NUMBERS", 7, false);
        n an[] = new n[8];
        an[0] = a;
        an[1] = b;
        an[2] = c;
        an[3] = d;
        an[4] = e;
        an[5] = f;
        an[6] = g;
        an[7] = h;
        j = an;
    }
}
