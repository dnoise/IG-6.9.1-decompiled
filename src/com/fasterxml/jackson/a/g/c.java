// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;


public final class c extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    public static final c d;
    private static final c f[];
    protected final int e;

    private c(String s, int i, int j)
    {
        super(s, i);
        e = j;
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/fasterxml/jackson/a/g/c, s);
    }

    public static c[] values()
    {
        return (c[])f.clone();
    }

    static 
    {
        a = new c("TOKEN_BUFFER", 0, 2000);
        b = new c("CONCAT_BUFFER", 1, 2000);
        c = new c("TEXT_BUFFER", 2, 200);
        d = new c("NAME_COPY_BUFFER", 3, 200);
        c ac[] = new c[4];
        ac[0] = a;
        ac[1] = b;
        ac[2] = c;
        ac[3] = d;
        f = ac;
    }
}
