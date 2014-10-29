// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;


public final class av extends Enum
{

    public static final av a;
    public static final av b;
    public static final av c;
    private static final av e[];
    int d;

    private av(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static av valueOf(String s)
    {
        return (av)Enum.valueOf(com/instagram/creation/video/f/av, s);
    }

    public static av[] values()
    {
        return (av[])e.clone();
    }

    static 
    {
        a = new av("FILTER", 0, 1);
        b = new av("COVER", 1, 2);
        c = new av("TRIM", 2, 3);
        av aav[] = new av[3];
        aav[0] = a;
        aav[1] = b;
        aav[2] = c;
        e = aav;
    }
}
