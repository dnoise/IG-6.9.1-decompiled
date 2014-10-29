// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b;


public final class a
{

    private char a[];
    private int b;

    public a()
    {
        a = new char[50];
    }

    public final void a()
    {
        b = 0;
    }

    public final void a(char c)
    {
        if (b < -1 + a.length)
        {
            a[b] = c;
            b = 1 + b;
        }
    }

    public final int b()
    {
        return b;
    }

    public final String toString()
    {
        return new String(a, 0, b);
    }
}
