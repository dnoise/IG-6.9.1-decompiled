// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util.a;


public final class d extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d f[];
    public final boolean d;
    public final boolean e;

    private d(String s, int i, boolean flag, boolean flag1)
    {
        super(s, i);
        d = flag;
        e = flag1;
    }

    public static d valueOf(String s)
    {
        return (d)Enum.valueOf(com/instagram/cliffjumper/util/a/d, s);
    }

    public static d[] values()
    {
        return (d[])f.clone();
    }

    static 
    {
        a = new d("TOP", 0, true, true);
        b = new d("MIDDLE", 1, true, false);
        c = new d("BOTTOM", 2, false, false);
        d ad[] = new d[3];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        f = ad;
    }
}
