// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.a;

import com.facebook.as;

public final class e extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    private static final e f[];
    private final int d;
    private final int e;

    private e(String s, int i, int j, int k)
    {
        super(s, i);
        d = j;
        e = k;
    }

    static int a(e e1)
    {
        return e1.e;
    }

    static int b(e e1)
    {
        return e1.d;
    }

    public static e valueOf(String s)
    {
        return (e)Enum.valueOf(com/instagram/a/e, s);
    }

    public static e[] values()
    {
        return (e[])f.clone();
    }

    static 
    {
        a = new e("DARK", 0, as.grey_medium, as.grey_8);
        b = new e("BLUE", 1, as.blue_4, as.blue_6);
        c = new e("WHITE", 2, as.grey_2, as.grey_1);
        e ae[] = new e[3];
        ae[0] = a;
        ae[1] = b;
        ae[2] = c;
        f = ae;
    }
}
