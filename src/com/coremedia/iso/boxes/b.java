// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;


public final class b
{

    int a;
    int b;

    public b(int i, int j)
    {
        a = i;
        b = j;
    }

    public final int a()
    {
        return a;
    }

    public final void a(int i)
    {
        a = i;
    }

    public final int b()
    {
        return b;
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{count=")).append(a).append(", offset=").append(b).append('}').toString();
    }
}
