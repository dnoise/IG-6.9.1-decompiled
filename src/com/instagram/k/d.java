// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.k;

import android.os.Looper;
import android.os.MessageQueue;
import com.facebook.e.c.g;
import com.instagram.common.analytics.a;
import com.instagram.common.analytics.b;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.k:
//            f, e

public final class d
{

    private static d a;
    private f b;

    public d()
    {
    }

    public static d a()
    {
        if (a == null)
        {
            a = new d();
        }
        return a;
    }

    static f a(d d1)
    {
        return d1.b;
    }

    static void a(f f1, long l, long l1, List list)
    {
        b(f1, l, l1, list);
    }

    static f b(d d1)
    {
        d1.b = null;
        return null;
    }

    private static void b(f f1, long l, long l1, List list)
    {
        Iterator iterator = list.iterator();
        boolean flag = false;
        boolean flag1 = false;
        boolean flag2 = false;
        long l2 = -1L;
        long l3 = -1L;
        while (iterator.hasNext()) 
        {
            g g1 = (g)iterator.next();
            if ("mainActivityResume".equals(g1.d()))
            {
                l2 = (g1.f() - l1) / 0xf4240L;
            } else
            if ("feedFetchStart".equals(g1.d()))
            {
                flag2 = true;
            } else
            if ("feedFetchEnd".equals(g1.d()))
            {
                flag1 = true;
            } else
            {
                b b1;
                long l4;
                boolean flag3;
                if ("loadFeedFromDiskCache".equals(g1.d()))
                {
                    flag3 = true;
                    l4 = (g1.f() - l1) / 0xf4240L;
                } else
                {
                    l4 = l3;
                    flag3 = flag;
                }
                flag = flag3;
                l3 = l4;
            }
        }
        b1 = (new b(com.instagram.k.f.b(f1), null)).a("init_to_usable_ms", l).a("init_to_activity_resume_ms", l2).a("did_fetch_feed", flag2).a("did_load_feed_from_disk_cache", flag).a("did_load_feed_from_network", flag1);
        if (flag)
        {
            b1.a("init_to_load_feed_from_disk_ms", l3);
        }
        com.instagram.common.analytics.a.a().a(b1);
    }

    public final void a(f f1)
    {
        if (b != null)
        {
            return;
        } else
        {
            b = f1;
            long l = System.nanoTime();
            com.facebook.e.c.a a1 = com.facebook.e.c.a.a(com.instagram.k.f.a(b));
            Looper.myQueue().addIdleHandler(new e(this, a1, l));
            return;
        }
    }
}
