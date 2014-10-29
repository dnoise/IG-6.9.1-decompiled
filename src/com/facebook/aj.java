// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


public final class aj extends Enum
{

    public static final aj a;
    public static final aj b;
    public static final aj c;
    private static final aj d[];

    private aj(String s, int i)
    {
        super(s, i);
    }

    public static aj valueOf(String s)
    {
        return (aj)Enum.valueOf(com/facebook/aj, s);
    }

    public static aj[] values()
    {
        return (aj[])d.clone();
    }

    static 
    {
        a = new aj("GET", 0);
        b = new aj("POST", 1);
        c = new aj("DELETE", 2);
        aj aaj[] = new aj[3];
        aaj[0] = a;
        aaj[1] = b;
        aaj[2] = c;
        d = aaj;
    }
}
