// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o;


public final class d extends Enum
{

    public static final int a;
    public static final int b;
    private static final int c[];

    public static int[] a()
    {
        return (int[])c.clone();
    }

    static 
    {
        a = 1;
        b = 2;
        int ai[] = new int[2];
        ai[0] = a;
        ai[1] = b;
        c = ai;
    }
}
