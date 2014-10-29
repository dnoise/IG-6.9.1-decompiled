// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    private static final b d[];
    private final String c;

    private b(String s, int i, String s1)
    {
        super(s, i);
        c = s1;
    }

    static String a(b b1)
    {
        return b1.c;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/instagram/f/a/a/b, s);
    }

    public static b[] values()
    {
        return (b[])d.clone();
    }

    static 
    {
        a = new b("HIDE", 0, "hide");
        b = new b("DELETE", 1, "delete");
        b ab[] = new b[2];
        ab[0] = a;
        ab[1] = b;
        d = ab;
    }
}
