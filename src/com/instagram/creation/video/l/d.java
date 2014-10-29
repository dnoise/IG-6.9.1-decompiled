// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;


public final class d
{

    private int a[];
    private int b;

    public d()
    {
        a = new int[8];
        b = 0;
    }

    public final int a()
    {
        return b;
    }

    public final void a(int i)
    {
        if (a.length == b)
        {
            int ai1[] = new int[b + b];
            System.arraycopy(a, 0, ai1, 0, b);
            a = ai1;
        }
        int ai[] = a;
        int j = b;
        b = j + 1;
        ai[j] = i;
    }

    public final int[] b()
    {
        return a;
    }

    public final void c()
    {
        b = 0;
        if (a.length != 8)
        {
            a = new int[8];
        }
    }
}
