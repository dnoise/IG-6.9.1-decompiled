// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.c;

import android.content.Context;
import android.os.Build;
import com.instagram.common.s.b;

public final class a
{

    public static boolean a()
    {
        return android.os.Build.VERSION.SDK_INT < 14 || !com.instagram.common.s.b.d() && com.instagram.l.a.a.a().d();
    }

    public static boolean a(Context context)
    {
        return com.instagram.common.y.g.a.b(context) || c();
    }

    public static boolean b()
    {
        return !a();
    }

    public static boolean c()
    {
        com.instagram.l.b.a a1 = com.instagram.l.b.a.a();
        boolean flag;
        if (!a())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return a1.d(flag);
    }

    public static boolean d()
    {
        return android.os.Build.VERSION.SDK_INT >= 14 && !h();
    }

    public static boolean e()
    {
        return android.os.Build.VERSION.SDK_INT < 16 || !com.instagram.common.s.b.d() && com.instagram.l.a.a.a().e();
    }

    public static boolean f()
    {
        return !Build.MANUFACTURER.equalsIgnoreCase("nokia");
    }

    public static boolean g()
    {
        return android.os.Build.VERSION.SDK_INT >= 18;
    }

    private static boolean h()
    {
        return Build.MODEL.startsWith("LG-E61");
    }
}
