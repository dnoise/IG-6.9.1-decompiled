// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;


public final class i extends Enum
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    public static final i f;
    private static final i g[];

    private i(String s, int j)
    {
        super(s, j);
    }

    public static i valueOf(String s)
    {
        return (i)Enum.valueOf(com/facebook/e/c/i, s);
    }

    public static i[] values()
    {
        return (i[])g.clone();
    }

    public final boolean a()
    {
        return this == a || this == c;
    }

    public final boolean b()
    {
        return this == b || this == d;
    }

    static 
    {
        a = new i("START", 0);
        b = new i("STOP", 1);
        c = new i("START_ASYNC", 2);
        d = new i("STOP_ASYNC", 3);
        e = new i("COMMENT", 4);
        f = new i("SPAWN", 5);
        i ai[] = new i[6];
        ai[0] = a;
        ai[1] = b;
        ai[2] = c;
        ai[3] = d;
        ai[4] = e;
        ai[5] = f;
        g = ai;
    }
}
