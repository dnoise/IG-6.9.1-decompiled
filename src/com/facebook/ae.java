// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


final class ae
{

    private final int a;
    private final int b;

    private ae(int i, int j)
    {
        a = i;
        b = j;
    }

    ae(int i, int j, byte byte0)
    {
        this(i, j);
    }

    final boolean a(int i)
    {
        return a <= i && i <= b;
    }
}
