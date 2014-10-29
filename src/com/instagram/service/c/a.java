// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.service.c;

import android.os.Build;
import com.instagram.common.s.b;
import com.instagram.service.persistentcookiestore.PersistentCookieStore;

public final class a
{

    private static Boolean a;
    private static Boolean b;
    private static Boolean c;

    public static void a()
    {
        a = null;
        b = null;
        c = null;
    }

    public static boolean b()
    {
        if (b == null)
        {
            b = Boolean.valueOf(PersistentCookieStore.c().a("quarantined", "yes"));
        }
        return b.booleanValue();
    }

    public static boolean c()
    {
        if (c == null)
        {
            c = Boolean.valueOf(PersistentCookieStore.c().a("is_starred_enabled", "yes"));
        }
        return c.booleanValue();
    }

    public static boolean d()
    {
        return Build.MODEL.equals("Nexus 4") && com.instagram.common.s.b.b();
    }
}
