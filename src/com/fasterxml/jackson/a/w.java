// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;

import java.io.Serializable;

public final class w
    implements Serializable, Comparable
{

    private static final w g = new w(0, 0, 0, null, null, null);
    protected final int a;
    protected final int b;
    protected final int c;
    protected final String d;
    protected final String e;
    protected final String f;

    public w()
    {
        this(1, 0, 0, null, null, null);
    }

    public w(int i, int j, int k, String s, String s1, String s2)
    {
        a = i;
        b = j;
        c = k;
        f = s;
        if (s1 == null)
        {
            s1 = "";
        }
        d = s1;
        if (s2 == null)
        {
            s2 = "";
        }
        e = s2;
    }

    private int a(w w1)
    {
        int i;
        if (w1 == this)
        {
            i = 0;
        } else
        {
            i = d.compareTo(w1.d);
            if (i == 0)
            {
                i = e.compareTo(w1.e);
                if (i == 0)
                {
                    i = a - w1.a;
                    if (i == 0)
                    {
                        i = b - w1.b;
                        if (i == 0)
                        {
                            return c - w1.c;
                        }
                    }
                }
            }
        }
        return i;
    }

    public static w a()
    {
        return g;
    }

    private boolean c()
    {
        return f != null && f.length() > 0;
    }

    public final String b()
    {
        return e;
    }

    public final int compareTo(Object obj)
    {
        return a((w)obj);
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            w w1 = (w)obj;
            if (w1.a != a || w1.b != b || w1.c != c || !w1.e.equals(e) || !w1.d.equals(d))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return e.hashCode() ^ ((d.hashCode() + a) - b) + c;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(a).append('.');
        stringbuilder.append(b).append('.');
        stringbuilder.append(c);
        if (c())
        {
            stringbuilder.append('-').append(f);
        }
        return stringbuilder.toString();
    }

}
