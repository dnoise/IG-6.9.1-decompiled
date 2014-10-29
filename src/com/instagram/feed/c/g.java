// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.feed.d.l;
import com.instagram.service.a.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.feed.c:
//            e

public final class g
{

    public static e a(String s, l l1, com.instagram.feed.g.a a1)
    {
        String s1;
        if (b(l1, a1))
        {
            s1 = b(s);
        } else
        {
            s1 = c(s);
        }
        return (new e(s1, a1)).a(l1);
    }

    static String a(String s)
    {
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            s = (new StringBuilder()).append(com.instagram.service.a.a.a().c()).append("_").append(s).toString();
        }
        return s;
    }

    public static void a(b b1, l l1, com.instagram.feed.g.a a1)
    {
        if (b(l1, a1))
        {
            com.instagram.common.analytics.a.a().b(b1);
        } else
        if (c(l1, a1) || l1.ag())
        {
            com.instagram.common.analytics.a.a().a(b1);
            return;
        }
    }

    static void a(com.instagram.common.o.a a1)
    {
        Set set = a1.b();
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = set.iterator(); iterator.hasNext(); arraylist.add((Long)((java.util.Map.Entry)iterator.next()).getValue())) { }
        Collections.sort(arraylist);
        Long long1 = (Long)arraylist.get(49);
        Iterator iterator1 = set.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            if (((Long)entry.getValue()).compareTo(long1) <= 0)
            {
                a1.b((String)entry.getKey());
            }
        } while (true);
    }

    public static void a(l l1)
    {
        com.instagram.common.analytics.a.a().a((new e(b("invalidation"), null)).a(l1.ai()).b("INSTAGRAM_MEDIA_WAS_HIDDEN").a());
    }

    public static void a(l l1, com.instagram.feed.g.a a1, String s)
    {
        com.instagram.common.analytics.a.a().b((new e(b("hide_response"), a1)).a(l1.ai()).b(s).a());
    }

    public static void a(com.instagram.user.c.a a1, l l1, com.instagram.feed.g.a a2)
    {
        String s;
        if (a1.equals(l1.c()))
        {
            s = "brand_profile";
        } else
        {
            s = "user_profile";
        }
        if (b(l1, a2))
        {
            com.instagram.common.analytics.a.a().b((new e(b(s), a2)).a(l1.ai()).a());
        }
    }

    public static void a(String s, l l1, int i, com.instagram.feed.g.a a1)
    {
        if (a(l1, a1))
        {
            a(a(s, l1, a1).a(i).a(), l1, a1);
        }
    }

    public static boolean a(l l1, com.instagram.feed.g.a a1)
    {
        return c(l1, a1) || b(l1, a1) || l1.ag();
    }

    private static String b(String s)
    {
        return (new StringBuilder("instagram_ad_")).append(s).toString();
    }

    public static void b(String s, l l1, com.instagram.feed.g.a a1)
    {
        if (a(l1, a1))
        {
            a(a(s, l1, a1).a(), l1, a1);
        }
    }

    public static boolean b(l l1, com.instagram.feed.g.a a1)
    {
        return l1.aa() && a1.p_();
    }

    private static String c(String s)
    {
        return (new StringBuilder("instagram_organic_")).append(s).toString();
    }

    public static boolean c(l l1, com.instagram.feed.g.a a1)
    {
        return l1.ah() && a1.V();
    }
}
