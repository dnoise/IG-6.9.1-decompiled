// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


public final class f
{

    long a;
    long b;

    public f(long l, long l1)
    {
        a = l;
        b = l1;
    }

    public final long a()
    {
        return a;
    }

    public final long b()
    {
        return b;
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{rate=")).append(a).append(", initialDelay=").append(b).append('}').toString();
    }
}
