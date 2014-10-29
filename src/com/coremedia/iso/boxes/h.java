// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


public final class h
{

    long a;
    long b;
    long c;

    public h(long l, long l1, long l2)
    {
        a = l;
        b = l1;
        c = l2;
    }

    public final long a()
    {
        return a;
    }

    public final long b()
    {
        return b;
    }

    public final long c()
    {
        return c;
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{firstChunk=")).append(a).append(", samplesPerChunk=").append(b).append(", sampleDescriptionIndex=").append(c).append('}').toString();
    }
}
