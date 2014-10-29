// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    public static final b d;
    public static final b e;
    public static final b f;
    public static final b g;
    private static final b i[];
    private final boolean h;

    private b(String s, int j, boolean flag)
    {
        super(s, j);
        h = flag;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/facebook/b, s);
    }

    public static b[] values()
    {
        return (b[])i.clone();
    }

    final boolean a()
    {
        return h;
    }

    static 
    {
        a = new b("NONE", 0, false);
        b = new b("FACEBOOK_APPLICATION_WEB", 1, true);
        c = new b("FACEBOOK_APPLICATION_NATIVE", 2, true);
        d = new b("FACEBOOK_APPLICATION_SERVICE", 3, true);
        e = new b("WEB_VIEW", 4, false);
        f = new b("TEST_USER", 5, true);
        g = new b("CLIENT_TOKEN", 6, true);
        b ab[] = new b[7];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        ab[3] = d;
        ab[4] = e;
        ab[5] = f;
        ab[6] = g;
        i = ab;
    }
}
