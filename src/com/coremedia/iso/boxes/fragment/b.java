// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;


public final class b
{

    private long a;
    private long b;
    private long c;
    private long d;
    private long e;

    public b()
    {
    }

    static long a(b b1)
    {
        return b1.a;
    }

    static long a(b b1, long l)
    {
        b1.a = l;
        return l;
    }

    static long b(b b1)
    {
        return b1.b;
    }

    static long b(b b1, long l)
    {
        b1.b = l;
        return l;
    }

    static long c(b b1)
    {
        return b1.c;
    }

    static long c(b b1, long l)
    {
        b1.c = l;
        return l;
    }

    static long d(b b1)
    {
        return b1.d;
    }

    static long d(b b1, long l)
    {
        b1.d = l;
        return l;
    }

    static long e(b b1)
    {
        return b1.e;
    }

    static long e(b b1, long l)
    {
        b1.e = l;
        return l;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            b b1 = (b)obj;
            if (b != b1.b)
            {
                return false;
            }
            if (e != b1.e)
            {
                return false;
            }
            if (a != b1.a)
            {
                return false;
            }
            if (c != b1.c)
            {
                return false;
            }
            if (d != b1.d)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return 31 * (31 * (31 * (31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32)) + (int)(c ^ c >>> 32)) + (int)(d ^ d >>> 32)) + (int)(e ^ e >>> 32);
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{time=")).append(a).append(", moofOffset=").append(b).append(", trafNumber=").append(c).append(", trunNumber=").append(d).append(", sampleNumber=").append(e).append('}').toString();
    }
}
