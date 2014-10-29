// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;

import java.io.Serializable;

public class j
    implements Serializable
{

    public static final j a = new j("N/A", -1L, -1L, -1, -1);
    final long b;
    final long c;
    final int d;
    final int e;
    final transient Object f;

    public j(Object obj, long l, int i, int k)
    {
        this(obj, -1L, l, i, k);
    }

    public j(Object obj, long l, long l1, int i, int k)
    {
        f = obj;
        b = l;
        c = l1;
        d = i;
        e = k;
    }

    private long a()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (!(obj instanceof j))
            {
                return false;
            }
            j j1 = (j)obj;
            if (f == null)
            {
                if (j1.f != null)
                {
                    return false;
                }
            } else
            if (!f.equals(j1.f))
            {
                return false;
            }
            if (d != j1.d || e != j1.e || c != j1.c || a() != j1.a())
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i;
        if (f == null)
        {
            i = 1;
        } else
        {
            i = f.hashCode();
        }
        return ((i ^ d) + e ^ (int)c) + (int)b;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(80);
        stringbuilder.append("[Source: ");
        if (f == null)
        {
            stringbuilder.append("UNKNOWN");
        } else
        {
            stringbuilder.append(f.toString());
        }
        stringbuilder.append("; line: ");
        stringbuilder.append(d);
        stringbuilder.append(", column: ");
        stringbuilder.append(e);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

}
