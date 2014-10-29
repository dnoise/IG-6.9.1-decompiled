// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.f;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    private static final b e[];
    public final String d;

    private b(String s, int i, String s1)
    {
        super(s, i);
        d = s1;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/instagram/feed/f/b, s);
    }

    public static b[] values()
    {
        return (b[])e.clone();
    }

    static 
    {
        a = new b("NONE", 0, null);
        b = new b("MAX_ID_INFERRED", 1, null);
        c = new b("MAX_ID", 2, "max_id");
        b ab[] = new b[3];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        e = ab;
    }
}
