// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.a;

import com.instagram.android.directshare.f.c;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.feed.d.l;
import java.util.Iterator;
import java.util.List;

public final class a
{

    public static void a()
    {
        int i = com.instagram.android.directshare.f.c.b();
        com.instagram.common.analytics.a.a().a((new b("ds_inbox_error", null)).a("badge", i));
    }

    public static void a(int i)
    {
        com.instagram.common.analytics.a.a().a((new b("ds_inbox_paging", null)).a("posts", i));
    }

    public static void a(com.instagram.f.c.a a1, boolean flag)
    {
        d d1 = com.instagram.common.analytics.a.a();
        String s;
        if (flag)
        {
            s = "ds_pending_approve";
        } else
        {
            s = "ds_pending_ignore";
        }
        d1.a((new b(s, null)).a("num_requests", a1.b()).a("sender", a1.a().g()).a("post_age", (int)com.instagram.o.g.a.a(a1.c())));
    }

    public static void a(l l1, boolean flag)
    {
        boolean flag1 = true;
        int i = -1;
        if (l1 == null || !l1.ak())
        {
            return;
        }
        int j = com.instagram.android.directshare.f.c.a(l1);
        int k;
        d d1;
        b b1;
        boolean flag2;
        b b2;
        if (l1.ao() > 0L)
        {
            k = (int)com.instagram.o.g.a.a(l1.ao());
        } else
        {
            k = i;
        }
        if (l1.an() > 0L)
        {
            i = (int)com.instagram.o.g.a.a(l1.an());
        }
        d1 = com.instagram.common.analytics.a.a();
        b1 = (new b("ds_post_open", null)).a("share_id", l1.d()).a("sender", l1.al().a().g()).a("is_sender", l1.O());
        if (j == com.instagram.android.directshare.f.d.c)
        {
            flag2 = flag1;
        } else
        {
            flag2 = false;
        }
        b2 = b1.a("has_new_comments", flag2).a("num_recipients", l1.am().size()).a("has_liked", l1.r());
        if (l1.an() <= 0L)
        {
            flag1 = false;
        }
        d1.a(b2.a("has_read", flag1).a("post_taken_at", l1.m().longValue()).a("post_age", com.instagram.o.g.a.a(l1.m().longValue())).a("media_type", l1.w().a()).a("comments", l1.s().intValue()).a("since_last_comment", k).a("since_last_read", i).a("via_push", flag));
    }

    public static void a(List list)
    {
        int i = 0;
        int j = 0;
        int k = 0;
        int i1 = 0;
        long l1;
        long l2;
        int j1;
        int k1;
        int i2;
        int j2;
        int k2;
        if (list != null && !list.isEmpty())
        {
            int i3 = list.size();
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) 
            {
                l l6 = (l)iterator.next();
                int j3 = com.instagram.android.directshare.f.c.a(l6);
                if (j3 == com.instagram.android.directshare.f.d.c)
                {
                    if (l6.O())
                    {
                        i1++;
                    }
                    k++;
                }
                l l3;
                long l4;
                long l5;
                int k3;
                int i4;
                if (l6.O())
                {
                    k3 = j + 1;
                } else
                {
                    k3 = j;
                }
                if (j3 == com.instagram.android.directshare.f.d.a)
                {
                    i4 = i + 1;
                } else
                {
                    i4 = i;
                }
                i = i4;
                j = k3;
            }
            l3 = (l)list.get(0);
            l4 = l3.m().longValue();
            l5 = (long)com.instagram.o.g.a.a(l3.m().longValue());
            k1 = k;
            i2 = j;
            l1 = l4;
            j2 = i;
            k2 = i3;
            j1 = i1;
            l2 = l5;
        } else
        {
            l1 = 0L;
            l2 = 0L;
            j1 = 0;
            k1 = 0;
            i2 = 0;
            j2 = 0;
            k2 = 0;
        }
        com.instagram.common.analytics.a.a().a((new b("ds_inbox", null)).a("posts", k2).a("posts_u", k1).a("sent", i2).a("sent_u", j1).a("unread", j2).a("top_taken_at", l1).a("top_age", l2));
    }

    public static void a(boolean flag)
    {
        com.instagram.common.analytics.a.a().a((new b("camera_share_mode", null)).a("is_direct", flag));
    }

    public static void b(int i)
    {
        com.instagram.common.analytics.a.a().a((new b("ds_pending_hint", null)).a("num_requests", i));
    }

    public static void b(List list)
    {
        d d1 = com.instagram.common.analytics.a.a();
        b b1 = new b("ds_pending", null);
        int i;
        if (list != null)
        {
            i = list.size();
        } else
        {
            i = 0;
        }
        d1.a(b1.a("num_requests", i));
    }

    public static void c(int i)
    {
        com.instagram.common.analytics.a.a().a((new b("ds_pending_ignore_all", null)).a("num_requests", i));
    }
}
