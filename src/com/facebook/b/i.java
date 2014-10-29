// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;


public final class i extends RuntimeException
{

    private int a;
    private String b;

    public i(String s)
    {
        super(s);
        a = 0;
    }

    public i(String s, String s1, int j)
    {
        super(s);
        a = 0;
        b = s1;
        a = j;
    }
}
