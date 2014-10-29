// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.e;


final class e
{

    private final String a;
    private final e b;
    private final int c;

    public e(String s, e e1)
    {
        a = s;
        b = e1;
        int i;
        if (e1 == null)
        {
            i = 1;
        } else
        {
            i = 1 + e1.c;
        }
        c = i;
    }

    public final String a()
    {
        return a;
    }

    public final String a(char ac[], int i, int j)
    {
        String s = a;
        e e1 = b;
        do
        {
            if (s.length() == j)
            {
                int k;
                for (k = 0; s.charAt(k) == ac[i + k] && ++k < j;) { }
                if (k == j)
                {
                    return s;
                }
            }
            if (e1 != null)
            {
                s = e1.a();
                e1 = e1.b();
            } else
            {
                return null;
            }
        } while (true);
    }

    public final e b()
    {
        return b;
    }

    public final int c()
    {
        return c;
    }
}
