// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.a;

import com.instagram.common.y.e;
import com.instagram.user.c.c;
import com.instagram.user.c.f;

public final class a
{

    public static boolean a(com.instagram.user.c.a a1)
    {
        String s = com.instagram.service.a.a.a().c();
        return a1.g() != null && s != null && s.equals(a1.g());
    }

    public static boolean a(String s)
    {
        String s1 = com.instagram.service.a.a.a().c();
        return !e.c(s) && !e.c(s1) && s1.equals(s);
    }

    public static boolean b(com.instagram.user.c.a a1)
    {
        while (a(a1) || a1.s() == null || !a1.s().equals(f.c) || a1.t() == null || a1.t().equals(c.d)) 
        {
            return true;
        }
        return false;
    }
}
