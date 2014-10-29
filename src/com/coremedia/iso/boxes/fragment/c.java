// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;


// Referenced classes of package com.coremedia.iso.boxes.fragment:
//            a

public final class c
{

    private long a;
    private long b;
    private a c;
    private int d;

    public c()
    {
    }

    static int a(c c1, int i)
    {
        c1.d = i;
        return i;
    }

    static long a(c c1)
    {
        return c1.a;
    }

    static long a(c c1, long l)
    {
        c1.a = l;
        return l;
    }

    static a a(c c1, a a1)
    {
        c1.c = a1;
        return a1;
    }

    static long b(c c1)
    {
        return c1.b;
    }

    static long b(c c1, long l)
    {
        c1.b = l;
        return l;
    }

    static a c(c c1)
    {
        return c1.c;
    }

    static int d(c c1)
    {
        return c1.d;
    }

    public final long a()
    {
        return a;
    }

    public final long b()
    {
        return b;
    }

    public final a c()
    {
        return c;
    }

    public final int d()
    {
        return d;
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{sampleDuration=")).append(a).append(", sampleSize=").append(b).append(", sampleFlags=").append(c).append(", sampleCompositionTimeOffset=").append(d).append('}').toString();
    }
}
