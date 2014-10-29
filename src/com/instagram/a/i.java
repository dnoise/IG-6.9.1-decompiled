// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.a;

import com.facebook.au;

public final class i extends Enum
{

    public static final i a;
    public static final i b;
    public static final i c;
    private static final i e[];
    private final int d;

    private i(String s, int j, int k)
    {
        super(s, j);
        d = k;
    }

    public static i valueOf(String s)
    {
        return (i)Enum.valueOf(com/instagram/a/i, s);
    }

    public static i[] values()
    {
        return (i[])e.clone();
    }

    public final int a()
    {
        return d;
    }

    static 
    {
        a = new i("SEARCH", 0, au.nav_search);
        b = new i("OVERFLOW", 1, au.nav_more);
        c = new i("NEXT", 2, au.nav_arrow_next);
        i ai[] = new i[3];
        ai[0] = a;
        ai[1] = b;
        ai[2] = c;
        e = ai;
    }
}
