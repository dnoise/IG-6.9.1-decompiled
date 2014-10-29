// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.threegpp26244;


public final class a
{

    byte a;
    int b;
    long c;
    byte d;
    byte e;
    int f;

    public a()
    {
    }

    public final byte a()
    {
        return a;
    }

    public final void a(byte byte0)
    {
        a = byte0;
    }

    public final void a(int i)
    {
        b = i;
    }

    public final void a(long l)
    {
        c = l;
    }

    public final int b()
    {
        return b;
    }

    public final void b(byte byte0)
    {
        d = byte0;
    }

    public final void b(int i)
    {
        f = i;
    }

    public final long c()
    {
        return c;
    }

    public final void c(byte byte0)
    {
        e = byte0;
    }

    public final byte d()
    {
        return d;
    }

    public final byte e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (a != a1.a)
            {
                return false;
            }
            if (b != a1.b)
            {
                return false;
            }
            if (f != a1.f)
            {
                return false;
            }
            if (e != a1.e)
            {
                return false;
            }
            if (d != a1.d)
            {
                return false;
            }
            if (c != a1.c)
            {
                return false;
            }
        }
        return true;
    }

    public final int f()
    {
        return f;
    }

    public final int hashCode()
    {
        return 31 * (31 * (31 * (31 * (31 * a + b) + (int)(c ^ c >>> 32)) + d) + e) + f;
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{referenceType=")).append(a).append(", referencedSize=").append(b).append(", subsegmentDuration=").append(c).append(", startsWithSap=").append(d).append(", sapType=").append(e).append(", sapDeltaTime=").append(f).append('}').toString();
    }
}
