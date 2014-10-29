// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


public final class ak extends Enum
{

    public static final ak a;
    public static final ak b;
    public static final ak c;
    public static final ak d;
    public static final ak e;
    private static final ak f[];

    private ak(String s, int i)
    {
        super(s, i);
    }

    public static ak valueOf(String s)
    {
        return (ak)Enum.valueOf(com/facebook/ak, s);
    }

    public static ak[] values()
    {
        return (ak[])f.clone();
    }

    static 
    {
        a = new ak("REQUESTS", 0);
        b = new ak("INCLUDE_ACCESS_TOKENS", 1);
        c = new ak("INCLUDE_RAW_RESPONSES", 2);
        d = new ak("CACHE", 3);
        e = new ak("DEVELOPER_ERRORS", 4);
        ak aak[] = new ak[5];
        aak[0] = a;
        aak[1] = b;
        aak[2] = c;
        aak[3] = d;
        aak[4] = e;
        f = aak;
    }
}
