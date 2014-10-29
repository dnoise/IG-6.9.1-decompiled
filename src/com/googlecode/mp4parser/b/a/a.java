// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.a;


public final class a
{

    public static final a a = new a(255);
    private int b;

    private a(int i)
    {
        b = i;
    }

    public static a a(int i)
    {
        if (i == a.b)
        {
            return a;
        } else
        {
            return new a(i);
        }
    }

}
