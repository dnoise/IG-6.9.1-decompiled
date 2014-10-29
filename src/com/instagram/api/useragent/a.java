// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.useragent;


public final class a
{

    private static String a;

    public static String a()
    {
        if (a == null)
        {
            a = com.instagram.common.a.h.a.a(com.instagram.common.h.a.a(), "Instagram");
        }
        return a;
    }

    public static void b()
    {
        a = null;
    }
}
