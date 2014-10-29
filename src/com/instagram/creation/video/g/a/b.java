// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.a;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    private static final b e[];
    public final String c;
    public final int d;

    private b(String s, int i, String s1, int j)
    {
        super(s, i);
        c = s1;
        d = j;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/instagram/creation/video/g/a/b, s);
    }

    public static b[] values()
    {
        return (b[])e.clone();
    }

    static 
    {
        a = new b("RGBA", 0, "rgba", 6408);
        b = new b("BGRA", 1, "bgra", 32993);
        b ab[] = new b[2];
        ab[0] = a;
        ab[1] = b;
        e = ab;
    }
}
