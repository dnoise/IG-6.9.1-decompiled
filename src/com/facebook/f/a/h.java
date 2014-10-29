// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.f.a;


public final class h extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    private static final h f[];
    private int e;

    private h(String s, int i, int j)
    {
        super(s, i);
        e = j;
    }

    public static h valueOf(String s)
    {
        return (h)Enum.valueOf(com/facebook/f/a/h, s);
    }

    public static h[] values()
    {
        return (h[])f.clone();
    }

    public final int a()
    {
        return e;
    }

    public final boolean a(int i)
    {
        return (i & e) == e;
    }

    public final boolean b()
    {
        return this == c || this == d;
    }

    public final boolean c()
    {
        return this == a || this == b;
    }

    static 
    {
        a = new h("UP", 0, 1);
        b = new h("DOWN", 1, 2);
        c = new h("LEFT", 2, 4);
        d = new h("RIGHT", 3, 8);
        h ah[] = new h[4];
        ah[0] = a;
        ah[1] = b;
        ah[2] = c;
        ah[3] = d;
        f = ah;
    }
}
