// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


public final class g
{

    private int a;

    public g(int i)
    {
        a = i;
    }

    static int a(g g1)
    {
        return g1.a;
    }

    private int b()
    {
        return 3 & a >> 6;
    }

    private int c()
    {
        return 3 & a >> 2;
    }

    private int d()
    {
        return 3 & a;
    }

    public final int a()
    {
        return 3 & a >> 4;
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{reserved=")).append(b()).append(", sampleDependsOn=").append(a()).append(", sampleIsDependentOn=").append(c()).append(", sampleHasRedundancy=").append(d()).append('}').toString();
    }
}
