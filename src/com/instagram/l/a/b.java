// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.l.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Date;

public final class b
{

    private static String a = null;
    private static b c;
    private SharedPreferences b;

    private b(Context context)
    {
        b = PreferenceManager.getDefaultSharedPreferences(context);
        k();
    }

    public static b a()
    {
        return c;
    }

    public static void a(Context context)
    {
        if (c == null)
        {
            c = new b(context);
        }
    }

    private void b(long l)
    {
        b.edit().putLong("first_run_time", l).commit();
    }

    private void c(long l)
    {
        b.edit().putLong("last_registration_time", l).commit();
    }

    private static String d(String s)
    {
        return (new StringBuilder("system_message_")).append(s).toString();
    }

    private void k()
    {
        if (!b.contains("first_run_time"))
        {
            long l;
            if (b.contains("media_mode"))
            {
                l = 0L;
            } else
            {
                l = System.currentTimeMillis();
            }
            b(l);
        }
    }

    public final Float a(String s)
    {
        String s1 = d(s);
        boolean flag = b.contains(s1);
        Float float1 = null;
        if (flag)
        {
            float1 = Float.valueOf(b.getFloat(s1, -1F));
        }
        return float1;
    }

    public final void a(int l)
    {
        b.edit().putInt("used_double_tap_hint_impressions", l).commit();
    }

    public final void a(long l)
    {
        b.edit().putLong("push_reg_date", l).commit();
    }

    public final void a(String s, Float float1)
    {
        b.edit().putFloat(d(s), float1.floatValue()).commit();
    }

    public final boolean a(boolean flag)
    {
        return b.getBoolean("advanced_camera_enabled", flag);
    }

    public final int b()
    {
        return b.getInt("used_double_tap_hint_impressions", 0);
    }

    public final void b(String s)
    {
        b.edit().putString("current", s).commit();
    }

    public final boolean b(boolean flag)
    {
        return b.edit().putBoolean("advanced_camera_enabled", flag).commit();
    }

    public final void c(String s)
    {
        b.edit().putString("fb_attribution_id", s).commit();
    }

    public final boolean c()
    {
        return b.getBoolean("used_double_tap", false);
    }

    public final boolean c(boolean flag)
    {
        return b.getBoolean("advanced_resize_enabled", flag);
    }

    public final void d()
    {
        b.edit().putBoolean("used_double_tap", true).commit();
    }

    public final boolean d(boolean flag)
    {
        return b.edit().putBoolean("advanced_resize_enabled", flag).commit();
    }

    public final boolean e()
    {
        while (!b.contains("push_reg_date") || Math.abs(b.getLong("push_reg_date", 0L) - (new Date()).getTime()) > 0xa4cb800L) 
        {
            return true;
        }
        return false;
    }

    public final boolean f()
    {
        return a(false);
    }

    public final boolean g()
    {
        return c(false);
    }

    public final String h()
    {
        return b.getString("current", null);
    }

    public final String i()
    {
        return b.getString("fb_attribution_id", null);
    }

    public final void j()
    {
        c(System.currentTimeMillis());
    }

}
