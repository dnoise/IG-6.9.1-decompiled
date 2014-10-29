// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;


public final class p extends Enum
{

    public static final p a;
    public static final p b;
    private static final p c[];

    private p(String s, int i)
    {
        super(s, i);
    }

    public static p valueOf(String s)
    {
        return (p)Enum.valueOf(com/facebook/g/p, s);
    }

    public static p[] values()
    {
        return (p[])c.clone();
    }

    static 
    {
        a = new p("READ", 0);
        b = new p("PUBLISH", 1);
        p ap[] = new p[2];
        ap[0] = a;
        ap[1] = b;
        c = ap;
    }
}
