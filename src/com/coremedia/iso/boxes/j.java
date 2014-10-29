// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


public final class j
{

    private long a;
    private int b;
    private int c;
    private long d;

    public j()
    {
    }

    public final long a()
    {
        return a;
    }

    public final void a(int i)
    {
        b = i;
    }

    public final void a(long l)
    {
        a = l;
    }

    public final int b()
    {
        return b;
    }

    public final void b(int i)
    {
        c = i;
    }

    public final void b(long l)
    {
        d = l;
    }

    public final int c()
    {
        return c;
    }

    public final long d()
    {
        return d;
    }

    public final String toString()
    {
        return (new StringBuilder("SubsampleEntry{subsampleSize=")).append(a).append(", subsamplePriority=").append(b).append(", discardable=").append(c).append(", reserved=").append(d).append('}').toString();
    }
}
