// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.e;

import java.util.ArrayList;

public class b
{

    private ArrayList a;
    private ArrayList b;
    private String c;
    private String d;

    public b()
    {
    }

    static String a(b b1, String s)
    {
        b1.c = s;
        return s;
    }

    static ArrayList a(b b1)
    {
        return b1.b;
    }

    static ArrayList a(b b1, ArrayList arraylist)
    {
        b1.b = arraylist;
        return arraylist;
    }

    static String b(b b1, String s)
    {
        b1.d = s;
        return s;
    }

    static ArrayList b(b b1)
    {
        return b1.a;
    }

    static ArrayList b(b b1, ArrayList arraylist)
    {
        b1.a = arraylist;
        return arraylist;
    }

    static String c(b b1)
    {
        return b1.c;
    }

    static String d(b b1)
    {
        return b1.d;
    }
}
