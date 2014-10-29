// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.h;

import com.instagram.common.s.b;
import com.instagram.common.y.e;
import com.instagram.l.a.a;

public final class c
{

    public static String a()
    {
        String s = "i.instagram.com";
        if (b())
        {
            s = com.instagram.l.a.a.a().c();
        }
        return s;
    }

    public static String a(String s, boolean flag)
    {
        String s1;
        Object aobj[];
        if (flag)
        {
            s1 = "https";
        } else
        {
            s1 = "http";
        }
        if (b())
        {
            s1 = "http";
        }
        aobj = new Object[3];
        aobj[0] = s1;
        aobj[1] = a();
        aobj[2] = s;
        return e.a("%s://%s%s", aobj);
    }

    public static boolean b()
    {
        return !com.instagram.common.s.b.d() && com.instagram.l.a.a.a().b();
    }
}
