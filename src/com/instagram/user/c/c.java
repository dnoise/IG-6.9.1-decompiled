// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.c;


public final class c extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    public static final c d;
    public static final c e;
    private static final c f[];

    private c(String s, int i)
    {
        super(s, i);
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/instagram/user/c/c, s);
    }

    public static c[] values()
    {
        return (c[])f.clone();
    }

    static 
    {
        a = new c("FollowStatusUnknown", 0);
        b = new c("FollowStatusFetching", 1);
        c = new c("FollowStatusNotFollowing", 2);
        d = new c("FollowStatusFollowing", 3);
        e = new c("FollowStatusRequested", 4);
        c ac[] = new c[5];
        ac[0] = a;
        ac[1] = b;
        ac[2] = c;
        ac[3] = d;
        ac[4] = e;
        f = ac;
    }
}
