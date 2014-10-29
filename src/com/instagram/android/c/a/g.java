// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;


public final class g extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    private static final g f[];
    public final String e;

    private g(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/instagram/android/c/a/g, s);
    }

    public static g[] values()
    {
        return (g[])f.clone();
    }

    final String a()
    {
        return e;
    }

    static 
    {
        a = new g("SEEN", 0, "seen");
        b = new g("CLICKED", 1, "clicked");
        c = new g("DISMISSED", 2, "dismiss");
        d = new g("NOT_SHOWN", 3, "not_shown");
        g ag[] = new g[4];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        f = ag;
    }
}
