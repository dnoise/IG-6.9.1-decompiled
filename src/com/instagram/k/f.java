// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.k;


public final class f extends Enum
{

    public static final f a;
    public static final f b;
    private static final f e[];
    private final String c;
    private final String d;

    private f(String s, int i, String s1, String s2)
    {
        super(s, i);
        c = s1;
        d = s2;
    }

    static String a(f f1)
    {
        return f1.c;
    }

    static String b(f f1)
    {
        return f1.d;
    }

    public static f valueOf(String s)
    {
        return (f)Enum.valueOf(com/instagram/k/f, s);
    }

    public static f[] values()
    {
        return (f[])e.clone();
    }

    static 
    {
        a = new f("ColdStart", 0, "ColdStartPerformanceTracer", "launch_usable");
        b = new f("WarmStart", 1, "WarmStartPerformanceTracer", "foreground_usable");
        f af[] = new f[2];
        af[0] = a;
        af[1] = b;
        e = af;
    }
}
