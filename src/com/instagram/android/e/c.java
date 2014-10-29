// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.e;


public final class c
    implements Comparable
{

    private final String a;
    private final String b;

    c(String s, String s1)
    {
        a = s;
        b = s1;
    }

    private int a(c c1)
    {
        return b.compareTo(c1.b);
    }

    public final String a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final int compareTo(Object obj)
    {
        return a((c)obj);
    }
}
