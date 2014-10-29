// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;


public final class p extends Enum
{

    public static final int a;
    public static final int b;
    public static final int c;
    private static final int d[];

    public static int[] a()
    {
        return (int[])d.clone();
    }

    static 
    {
        a = 1;
        b = 2;
        c = 3;
        int ai[] = new int[3];
        ai[0] = a;
        ai[1] = b;
        ai[2] = c;
        d = ai;
    }
}
