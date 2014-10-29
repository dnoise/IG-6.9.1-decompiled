// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;


final class d extends Enum
{

    public static final d a;
    public static final d b;
    private static final d c[];

    private d(String s, int i)
    {
        super(s, i);
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/instagram/feed/c/d, s);
    }

    public static d[] values()
    {
        return (d[])c.clone();
    }

    static 
    {
        a = new d("IMPRESSION", 0);
        b = new d("VIEWED_IMPRESSION", 1);
        d ad[] = new d[2];
        ad[0] = a;
        ad[1] = b;
        c = ad;
    }
}
