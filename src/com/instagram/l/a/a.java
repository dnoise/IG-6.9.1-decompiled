// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.l.a;

import android.content.Context;
import android.content.SharedPreferences;

public final class a
{

    private static a b;
    private SharedPreferences a;

    private a(Context context)
    {
        a = context.getSharedPreferences("devprefs", 0);
    }

    public static a a()
    {
        if (b == null)
        {
            b = new a(com.instagram.common.h.a.a());
        }
        return b;
    }

    public final void a(String s)
    {
        a.edit().putString("dev_server_name", s).commit();
    }

    public final void a(boolean flag)
    {
        a.edit().putBoolean("using_dev_server", flag).commit();
    }

    public final boolean b()
    {
        return a.getBoolean("using_dev_server", false);
    }

    public final String c()
    {
        return a.getString("dev_server_name", "");
    }

    public final boolean d()
    {
        return a.getBoolean("force_legacy_video", false);
    }

    public final boolean e()
    {
        return a.getBoolean("force_legacy_render", false);
    }

    public final boolean f()
    {
        return a.getBoolean("show_navigation_events", false);
    }

    public final boolean g()
    {
        return a.getBoolean("slow_network", false);
    }

    public final boolean h()
    {
        return a.getBoolean("show_realtime_connection_notification", true);
    }

    public final boolean i()
    {
        return a.getBoolean("disable_realtime_connection", false);
    }
}
