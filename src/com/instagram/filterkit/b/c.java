// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.b;


public final class c extends Enum
{

    public static final c a;
    public static final c b;
    private static final c d[];
    private final int c;

    private c(String s, int i, int j)
    {
        super(s, i);
        c = j;
    }

    static int a(c c1)
    {
        return c1.c;
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/instagram/filterkit/b/c, s);
    }

    public static c[] values()
    {
        return (c[])d.clone();
    }

    static 
    {
        a = new c("NEAREST", 0, 9728);
        b = new c("LINEAR", 1, 9729);
        c ac[] = new c[2];
        ac[0] = a;
        ac[1] = b;
        d = ac;
    }
}
