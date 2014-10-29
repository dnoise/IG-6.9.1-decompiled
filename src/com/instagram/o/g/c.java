// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.g;


final class c extends Enum
{

    public static final int a;
    public static final int b;
    public static final int c;
    public static final int d;
    public static final int e;
    private static final int f[];

    public static int[] a()
    {
        return (int[])f.clone();
    }

    static 
    {
        a = 1;
        b = 2;
        c = 3;
        d = 4;
        e = 5;
        int ai[] = new int[5];
        ai[0] = a;
        ai[1] = b;
        ai[2] = c;
        ai[3] = d;
        ai[4] = e;
        f = ai;
    }
}
