// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.b;

import java.io.InputStream;

public class a
{

    protected static int b;
    int a;
    protected com.googlecode.mp4parser.b.a c;
    private InputStream d;
    private int e;
    private int f;

    public a(InputStream inputstream)
    {
        c = new com.googlecode.mp4parser.b.a();
        d = inputstream;
        e = inputstream.read();
        f = inputstream.read();
    }

    private void d()
    {
        e = f;
        f = d.read();
        a = 0;
    }

    public final int a()
    {
        if (a == 8)
        {
            d();
            if (e == -1)
            {
                return -1;
            }
        }
        int i = 1 & e >> 7 - a;
        a = 1 + a;
        com.googlecode.mp4parser.b.a a1 = c;
        char c1;
        if (i == 0)
        {
            c1 = '0';
        } else
        {
            c1 = '1';
        }
        a1.a(c1);
        b = 1 + b;
        return i;
    }

    public final long a(int i)
    {
        if (i > 64)
        {
            throw new IllegalArgumentException("Can not readByte more then 64 bit");
        }
        long l = 0L;
        for (int j = 0; j < i; j++)
        {
            l = l << 1 | (long)a();
        }

        return l;
    }

    public final boolean b()
    {
        if (a == 8)
        {
            d();
        }
        int i = 1 << -1 + (8 - a);
        boolean flag;
        if ((-1 + (i << 1) & e) == i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return e != -1 && (f != -1 || !flag);
    }

    public final long c()
    {
        return a(8 - a);
    }
}
