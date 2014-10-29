// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.f;


public final class d extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d e[];
    public String d;

    private d(String s, int i, String s1)
    {
        super(s, i);
        d = s1;
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/instagram/feed/f/d, s);
    }

    public static d[] values()
    {
        return (d[])e.clone();
    }

    public final String a()
    {
        return d;
    }

    static 
    {
        a = new d("PEPPER", 0, "pepper");
        b = new d("FOLLOW_DESTINATION", 1, "follow_destination");
        c = new d("FEED_AYSF", 2, "feed_aysf");
        d ad[] = new d[3];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        e = ad;
    }
}
