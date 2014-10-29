// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.a;


public final class c
{

    public static c a = new c(0, 0, 0);
    public static c b = new c(1, 2, 2);
    public static c c = new c(2, 2, 1);
    public static c d = new c(3, 1, 1);
    private int e;
    private int f;
    private int g;

    private c(int i, int j, int k)
    {
        e = i;
        f = j;
        g = k;
    }

    public static c a(int i)
    {
        if (i == a.e)
        {
            return a;
        }
        if (i == b.e)
        {
            return b;
        }
        if (i == c.e)
        {
            return c;
        }
        if (i == d.e)
        {
            return d;
        } else
        {
            return null;
        }
    }

    public final String toString()
    {
        return (new StringBuilder("ChromaFormat{\nid=")).append(e).append(",\n subWidth=").append(f).append(",\n subHeight=").append(g).append('}').toString();
    }

}
