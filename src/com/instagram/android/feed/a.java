// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed;

import android.os.SystemClock;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.common.analytics.g;
import com.instagram.common.y.e;
import java.util.List;
import java.util.UUID;

public final class a
{

    private boolean a;
    private String b;
    private int c;
    private com.instagram.android.j.e d;

    public a()
    {
        a = false;
    }

    private b a(String s, g g)
    {
        return (new b(s, g)).a("rank_token", b);
    }

    public final String a()
    {
        return b;
    }

    public final void a(com.instagram.android.j.e e1)
    {
        d = e1;
    }

    public final void a(g g, int i, String s)
    {
        c = i;
        com.instagram.common.analytics.a.a().a(a("search_typeahead", g).a("query_text", s));
        a = true;
    }

    public final void a(g g, int i, String s, int j, String s1, String as[])
    {
        if (!a)
        {
            c = i;
        }
        int k = c;
        int l;
        d d1;
        b b1;
        boolean flag;
        b b2;
        int i1;
        if (d != null && !e.c(s1))
        {
            if (d.a(s1) != null)
            {
                i -= d.a(s1).size();
            }
        } else
        {
            i = k;
        }
        l = j - i;
        d1 = com.instagram.common.analytics.a.a();
        b1 = a("search_results_page", g).a("selected_id", s).a("selected_position", j);
        if (j < i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b2 = b1.a("is_local", flag);
        if (l < 0)
        {
            i1 = 0;
        } else
        {
            i1 = l;
        }
        d1.a(b2.a("local_offset", i1).a("query_text", s1).a("results_list", as));
        a = false;
    }

    public final void a(g g, String s)
    {
        com.instagram.common.analytics.a.a().a(a("search_back_pressed", g).a("query_text", s));
    }

    public final void a(g g, String s, long l)
    {
        com.instagram.common.analytics.a.a().a(a("search_round_trip", g).a("round_trip_time", SystemClock.elapsedRealtime() - l).a("query_text", s));
    }

    public final void b()
    {
        b = (new StringBuilder()).append(com.instagram.service.a.a.a().c()).append("_").append(UUID.randomUUID().toString()).toString();
    }
}
