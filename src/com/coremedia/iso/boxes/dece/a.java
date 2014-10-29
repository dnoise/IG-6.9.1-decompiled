// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.dece;


public final class a
{

    private int a;

    public a()
    {
    }

    public a(int i)
    {
        a = i;
    }

    private int a()
    {
        return 3 & a >> 6;
    }

    static int a(a a1)
    {
        return a1.a;
    }

    private int b()
    {
        return 0x3f & a;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Entry");
        stringbuilder.append("{picType=").append(a());
        stringbuilder.append(",dependencyLevel=").append(b());
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
