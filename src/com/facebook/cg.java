// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


public final class cg extends Enum
{

    public static final cg a;
    public static final cg b;
    public static final cg c;
    private static final cg f[];
    private final boolean d;
    private final boolean e;

    private cg(String s, int i, boolean flag, boolean flag1)
    {
        super(s, i);
        d = flag;
        e = flag1;
    }

    public static cg valueOf(String s)
    {
        return (cg)Enum.valueOf(com/facebook/cg, s);
    }

    public static cg[] values()
    {
        return (cg[])f.clone();
    }

    final boolean a()
    {
        return d;
    }

    final boolean b()
    {
        return e;
    }

    static 
    {
        a = new cg("SSO_WITH_FALLBACK", 0, true, true);
        b = new cg("SSO_ONLY", 1, true, false);
        c = new cg("SUPPRESS_SSO", 2, false, true);
        cg acg[] = new cg[3];
        acg[0] = a;
        acg[1] = b;
        acg[2] = c;
        f = acg;
    }
}
