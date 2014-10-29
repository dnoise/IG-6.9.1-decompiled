// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import android.content.Context;
import android.media.AudioManager;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.common.h.a;
import com.instagram.common.y.e;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.feed.c:
//            g, r

public final class p
{

    private static String a()
    {
        AudioManager audiomanager = (AudioManager)com.instagram.common.h.a.a().getSystemService("audio");
        int i = audiomanager.getStreamVolume(3);
        int j = audiomanager.getStreamMaxVolume(3);
        float f = (float)i / (float)j;
        Object aobj[] = new Object[1];
        aobj[0] = Float.valueOf(f);
        return e.a("%.1f", aobj);
    }

    private static void a(b b1, l l, com.instagram.feed.g.a a1)
    {
        if (com.instagram.feed.c.g.b(l, a1))
        {
            com.instagram.common.analytics.a.a().b(b1);
            return;
        } else
        {
            com.instagram.common.analytics.a.a().a(b1);
            return;
        }
    }

    public static void a(l l, int i, int j, int k, int i1, boolean flag, com.instagram.feed.g.a a1, String s, 
            String s1)
    {
        int j1 = Math.min(i, k);
        a((new r("video_paused", a1)).a(l).a(i1).b(j1).c(k).a((double)j1 / (double)k).d(j).a(a()).a(flag).b(s).c(s1).a(), l, a1);
    }

    public static void a(l l, int i, int j, int k, com.instagram.feed.g.a a1)
    {
        a((new r("video_finished_playing", a1)).a(l).b(j).d(k).a(i).a(), l, a1);
    }

    public static void a(l l, int i, int j, int k, boolean flag, com.instagram.feed.g.a a1, String s)
    {
        int i1 = Math.min(i, j);
        a((new r("video_unpaused", a1)).a(l).a(k).b(i1).c(j).a((double)i1 / (double)j).a(a()).a(flag).c(s).a(), l, a1);
    }

    public static void a(l l, int i, com.instagram.feed.g.a a1)
    {
        a((new r("video_audio_enabled", a1)).a(l).a(i).a(a()).a(), l, a1);
    }

    public static void a(l l, int i, boolean flag, com.instagram.feed.g.a a1)
    {
        a((new r("video_displayed", a1)).a(l).a(i).b(flag).a(), l, a1);
    }

    public static void a(l l, int i, boolean flag, com.instagram.feed.g.a a1, String s)
    {
        a((new r("video_started_playing", a1)).a(l).a(a()).a(i).a(flag).c(s).a(), l, a1);
    }

    public static void a(l l, com.instagram.feed.g.a a1)
    {
        a((new r("video_should_start", a1)).a(l).a(), l, a1);
    }

    public static void b(l l, int i, int j, int k, com.instagram.feed.g.a a1)
    {
        a((new r("video_failed_playing", a1)).a(l).a(k).a(i, j).a(), l, a1);
    }
}
