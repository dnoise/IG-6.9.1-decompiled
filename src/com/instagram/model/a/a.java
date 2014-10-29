// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.model.a;

import java.util.HashMap;
import java.util.Map;

public final class a extends Enum
{

    public static final a a;
    public static final a b;
    private static final Map c;
    private static final a e[];
    private final int d;

    private a(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static a a(int i)
    {
        return (a)c.get(Integer.valueOf(i));
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/instagram/model/a/a, s);
    }

    public static a[] values()
    {
        return (a[])e.clone();
    }

    public final int a()
    {
        return d;
    }

    static 
    {
        int i = 0;
        a = new a("PHOTO", 0, 1);
        b = new a("VIDEO", 1, 2);
        a aa[] = new a[2];
        aa[0] = a;
        aa[1] = b;
        e = aa;
        c = new HashMap();
        a aa1[] = values();
        for (int j = aa1.length; i < j; i++)
        {
            a a1 = aa1[i];
            c.put(Integer.valueOf(a1.d), a1);
        }

    }
}
