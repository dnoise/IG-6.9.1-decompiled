// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;


public final class c extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    public static final c d;
    public static final c e;
    public static final c f;
    private static final c g[];

    private c(String s, int i)
    {
        super(s, i);
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/instagram/feed/d/c, s);
    }

    public static c[] values()
    {
        return (c[])g.clone();
    }

    public final boolean a()
    {
        return this != d && this != e;
    }

    static 
    {
        a = new c("Unposted", 0);
        b = new c("Failure", 1);
        c = new c("Posting", 2);
        d = new c("Deleted", 3);
        e = new c("DeletePending", 4);
        f = new c("Success", 5);
        c ac[] = new c[6];
        ac[0] = a;
        ac[1] = b;
        ac[2] = c;
        ac[3] = d;
        ac[4] = e;
        ac[5] = f;
        g = ac;
    }
}
