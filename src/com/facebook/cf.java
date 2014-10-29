// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


public final class cf extends Enum
{

    public static final cf a;
    public static final cf b;
    public static final cf c;
    public static final cf d;
    private static final cf f[];
    private final String e;

    private cf(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    public static cf valueOf(String s)
    {
        return (cf)Enum.valueOf(com/facebook/cf, s);
    }

    public static cf[] values()
    {
        return (cf[])f.clone();
    }

    final String a()
    {
        return e;
    }

    static 
    {
        a = new cf("NONE", 0, null);
        b = new cf("ONLY_ME", 1, "SELF");
        c = new cf("FRIENDS", 2, "ALL_FRIENDS");
        d = new cf("EVERYONE", 3, "EVERYONE");
        cf acf[] = new cf[4];
        acf[0] = a;
        acf[1] = b;
        acf[2] = c;
        acf[3] = d;
        f = acf;
    }
}
