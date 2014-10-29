// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;


public final class n extends Enum
{

    public static final n a;
    public static final n b;
    public static final n c;
    public static final n d;
    private static final n e[];

    private n(String s, int i)
    {
        super(s, i);
    }

    public static n valueOf(String s)
    {
        return (n)Enum.valueOf(com/facebook/i/n, s);
    }

    public static n[] values()
    {
        return (n[])e.clone();
    }

    static 
    {
        a = new n("FROM_NUMBER_WITH_PLUS_SIGN", 0);
        b = new n("FROM_NUMBER_WITH_IDD", 1);
        c = new n("FROM_NUMBER_WITHOUT_PLUS_SIGN", 2);
        d = new n("FROM_DEFAULT_COUNTRY", 3);
        n an[] = new n[4];
        an[0] = a;
        an[1] = b;
        an[2] = c;
        an[3] = d;
        e = an;
    }
}
