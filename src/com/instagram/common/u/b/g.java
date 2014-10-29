// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b;


public final class g extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    private static final g e[];
    private final String d;

    private g(String s, int i, String s1)
    {
        super(s, i);
        d = s1;
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/instagram/common/u/b/g, s);
    }

    public static g[] values()
    {
        return (g[])e.clone();
    }

    public final String a()
    {
        return d;
    }

    static 
    {
        a = new g("AMAZON", 0, "android_adm");
        b = new g("GCM", 1, "android_gcm");
        c = new g("NOKIA", 2, "android_nokia");
        g ag[] = new g[3];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        e = ag;
    }
}
