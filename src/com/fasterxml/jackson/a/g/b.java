// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;


public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    public static final b d;
    private static final b f[];
    protected final int e;

    private b(String s, int i, int j)
    {
        super(s, i);
        e = j;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/fasterxml/jackson/a/g/b, s);
    }

    public static b[] values()
    {
        return (b[])f.clone();
    }

    static 
    {
        a = new b("READ_IO_BUFFER", 0, 4000);
        b = new b("WRITE_ENCODING_BUFFER", 1, 4000);
        c = new b("WRITE_CONCAT_BUFFER", 2, 2000);
        d = new b("BASE64_CODEC_BUFFER", 3, 2000);
        b ab[] = new b[4];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        ab[3] = d;
        f = ab;
    }
}
