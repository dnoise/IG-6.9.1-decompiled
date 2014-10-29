// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.l.b;

import android.content.SharedPreferences;
import com.instagram.common.y.d;

public final class a
{

    private static a b;
    SharedPreferences a;

    public a()
    {
        a = com.instagram.l.b.a.a.a("USER_PREFERENCES");
    }

    private boolean K()
    {
        return a.getBoolean("feed_auto_play_video", true);
    }

    public static a a()
    {
        if (b == null)
        {
            b = new a();
        }
        return b;
    }

    public static void b()
    {
        b = null;
    }

    public final long A()
    {
        return a.getLong("inbox_new_share_timestamp", -1L);
    }

    public final void B()
    {
        a.edit().putBoolean("inbox_opened", true).commit();
    }

    public final String C()
    {
        return a.getString("current_ad_id", null);
    }

    public final boolean D()
    {
        return a.getBoolean("has_seen_current_ad", true);
    }

    public final boolean E()
    {
        return a.getBoolean("has_seen_filter_strength_nux", false);
    }

    public final void F()
    {
        a.edit().putBoolean("has_seen_filter_strength_nux", true).commit();
    }

    public final boolean G()
    {
        return a.getBoolean("allow_contacts_sync", false);
    }

    public final int H()
    {
        return a.getInt("contacts_count", 0);
    }

    public final boolean I()
    {
        return a.getBoolean("ssl_everywhere", false);
    }

    public final boolean J()
    {
        return a.getBoolean("ssl_wifi", false);
    }

    public final void a(int i1)
    {
        a.edit().putInt("contacts_count", i1).commit();
    }

    public final void a(int i1, long l1)
    {
        a.edit().putInt("inbox_new_share_count", i1).putLong("inbox_new_share_timestamp", l1).commit();
    }

    public final void a(String s1)
    {
        a.edit().putString("recent_user_searches", s1).commit();
    }

    public final void a(String s1, boolean flag)
    {
        a.edit().putString("current_ad_id", s1).putBoolean("has_seen_current_ad", flag).commit();
    }

    public final void a(boolean flag)
    {
        a.edit().putBoolean("gridlines_enabled", flag).commit();
    }

    public final boolean a(long l1)
    {
        return a.edit().putLong("device_info_last_reported_time", l1).commit();
    }

    public final void b(String s1)
    {
        a.edit().putString("recent_hashtag_searches", s1).commit();
    }

    public final boolean b(boolean flag)
    {
        return a.edit().putBoolean("geotag_enabled", flag).commit();
    }

    public final boolean c()
    {
        return a.getBoolean("gridlines_enabled", false);
    }

    public final boolean c(boolean flag)
    {
        return a.edit().putBoolean("feed_video_play_sound", flag).commit();
    }

    public final String d()
    {
        return a.getString("recent_user_searches", null);
    }

    public final boolean d(boolean flag)
    {
        return a.getBoolean("feed_video_preload_always", flag);
    }

    public final void e()
    {
        a.edit().remove("recent_user_searches").commit();
    }

    public final boolean e(boolean flag)
    {
        return a.edit().putBoolean("feed_video_preload_always", flag).commit();
    }

    public final String f()
    {
        return a.getString("recent_hashtag_searches", null);
    }

    public final boolean f(boolean flag)
    {
        return a.edit().putBoolean("save_captured_videos", flag).commit();
    }

    public final void g()
    {
        a.edit().remove("recent_hashtag_searches").commit();
    }

    public final boolean g(boolean flag)
    {
        return a.edit().putBoolean("save_original_photos", flag).commit();
    }

    public final void h()
    {
        a.edit().remove("recent_user_searches").remove("recent_hashtag_searches").commit();
        com.instagram.common.y.d.a("BROADCAST_UPDATED_SEARCHES");
    }

    public final void h(boolean flag)
    {
        a.edit().putBoolean("allow_contacts_sync", flag).commit();
    }

    public final void i(boolean flag)
    {
        a.edit().putBoolean("ssl_everywhere", flag).commit();
    }

    public final boolean i()
    {
        return a.getBoolean("geotag_enabled", false);
    }

    public final void j(boolean flag)
    {
        a.edit().putBoolean("ssl_wifi", flag).commit();
    }

    public final boolean j()
    {
        return a.getBoolean("seen_ignore_all_button_blocking_education", false);
    }

    public final boolean k()
    {
        return a.edit().putBoolean("seen_ignore_all_button_blocking_education", true).commit();
    }

    public final boolean l()
    {
        return a.getBoolean("seen_ignore_permalink_button_blocking_education", false);
    }

    public final boolean m()
    {
        return a.edit().putBoolean("seen_ignore_permalink_button_blocking_education", true).commit();
    }

    public final boolean n()
    {
        return a.getBoolean("needs_photo_map_education", false);
    }

    public final boolean o()
    {
        return a.edit().putBoolean("needs_photo_map_education", true).commit();
    }

    public final boolean p()
    {
        return a.getBoolean("import_scroll_education", false);
    }

    public final boolean q()
    {
        return a.edit().putBoolean("import_scroll_education", true).commit();
    }

    public final boolean r()
    {
        return a.getBoolean("imported_video_trimmed_education", false);
    }

    public final boolean s()
    {
        return a.edit().putBoolean("imported_video_trimmed_education", true).commit();
    }

    public final boolean t()
    {
        return a.getBoolean("show_tap_to_record_nux", false);
    }

    public final boolean u()
    {
        return a.edit().putBoolean("show_tap_to_record_nux", true).commit();
    }

    public final boolean v()
    {
        if (!a.contains("feed_video_play_sound"))
        {
            c(K());
        }
        return a.getBoolean("feed_video_play_sound", true);
    }

    public final boolean w()
    {
        return a.getBoolean("save_captured_videos", true);
    }

    public final boolean x()
    {
        return a.getBoolean("save_original_photos", true);
    }

    public final long y()
    {
        return a.getLong("device_info_last_reported_time", 0L);
    }

    public final int z()
    {
        return a.getInt("inbox_new_share_count", -1);
    }
}
