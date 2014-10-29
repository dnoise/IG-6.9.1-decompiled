// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;


public final class c
{

    private long a[];
    private int b;

    public c()
    {
        b = -1;
        a = new long[20];
    }

    private void d()
    {
        long al[] = new long[2 * a.length];
        System.arraycopy(a, 0, al, 0, a.length);
        a = al;
    }

    public final int a()
    {
        return 1 + b;
    }

    public final void a(long l)
    {
        if (a.length == 1 + b)
        {
            d();
        }
        long al[] = a;
        int i = 1 + b;
        b = i;
        al[i] = l;
    }

    public final long b()
    {
        long al[] = a;
        int i = b;
        b = i - 1;
        return al[i];
    }

    public final void c()
    {
        b = -1;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<LongStack vector:[");
        for (int i = 0; i < a.length; i++)
        {
            if (i != 0)
            {
                stringbuilder.append(" ");
            }
            if (i == b)
            {
                stringbuilder.append(">>");
            }
            stringbuilder.append(a[i]);
            if (i == b)
            {
                stringbuilder.append("<<");
            }
        }

        stringbuilder.append("]>");
        return stringbuilder.toString();
    }
}
