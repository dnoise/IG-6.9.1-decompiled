// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;


public final class i extends Enum
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    public static final i f;
    public static final i g;
    private static final i j[];
    private final boolean h;
    private final int i = 1 << ordinal();

    private i(String s, int k, boolean flag)
    {
        super(s, k);
        h = flag;
    }

    public static int a()
    {
        int k = 0;
        i ai[] = values();
        int l = ai.length;
        for (int i1 = 0; i1 < l; i1++)
        {
            i j1 = ai[i1];
            if (j1.c())
            {
                k |= j1.b();
            }
        }

        return k;
    }

    private boolean c()
    {
        return h;
    }

    public static i valueOf(String s)
    {
        return (i)Enum.valueOf(com/fasterxml/jackson/a/i, s);
    }

    public static i[] values()
    {
        return (i[])j.clone();
    }

    public final int b()
    {
        return i;
    }

    static 
    {
        a = new i("AUTO_CLOSE_TARGET", 0, true);
        b = new i("AUTO_CLOSE_JSON_CONTENT", 1, true);
        c = new i("QUOTE_FIELD_NAMES", 2, true);
        d = new i("QUOTE_NON_NUMERIC_NUMBERS", 3, true);
        e = new i("WRITE_NUMBERS_AS_STRINGS", 4, false);
        f = new i("FLUSH_PASSED_TO_STREAM", 5, true);
        g = new i("ESCAPE_NON_ASCII", 6, false);
        i ai[] = new i[7];
        ai[0] = a;
        ai[1] = b;
        ai[2] = c;
        ai[3] = d;
        ai[4] = e;
        ai[5] = f;
        ai[6] = g;
        j = ai;
    }
}
