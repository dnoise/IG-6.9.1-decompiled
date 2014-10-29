// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.e;

import android.content.Intent;
import android.os.SystemClock;
import com.instagram.common.a.a.k;
import com.instagram.common.a.a.o;
import com.instagram.common.p.b.b;
import com.instagram.common.y.d;
import java.util.HashSet;
import java.util.List;

// Referenced classes of package com.instagram.j.e:
//            b, c

public final class a
{

    private static final a a = new a();
    private final HashSet b = new HashSet();
    private com.instagram.feed.f.a c;
    private k d;
    private List e;
    private List f;
    private List g;
    private List h;
    private boolean i;
    private boolean j;
    private boolean k;
    private Long l;

    private a()
    {
        d = new o();
        l = Long.valueOf(SystemClock.elapsedRealtime());
        com.instagram.common.p.b.b.a().a(new com.instagram.j.e.b(this));
    }

    static com.instagram.feed.f.a a(a a1, com.instagram.feed.f.a a2)
    {
        a1.c = a2;
        return a2;
    }

    public static a a()
    {
        return a;
    }

    static HashSet a(a a1)
    {
        return a1.b;
    }

    static List a(a a1, List list)
    {
        a1.e = list;
        return list;
    }

    static boolean a(a a1, boolean flag)
    {
        a1.j = flag;
        return flag;
    }

    static com.instagram.feed.f.a b(a a1)
    {
        return a1.c;
    }

    static List b(a a1, List list)
    {
        a1.f = list;
        return list;
    }

    static List c(a a1, List list)
    {
        a1.g = list;
        return list;
    }

    static boolean c(a a1)
    {
        return a1.i;
    }

    static Long d(a a1)
    {
        return a1.l;
    }

    static List d(a a1, List list)
    {
        a1.h = list;
        return list;
    }

    static void m()
    {
        o();
    }

    private void n()
    {
        if (!e() && com.instagram.service.a.a.a().b() != null)
        {
            d.a((new com.instagram.j.b.a.b(null)).a(new c(this)));
        }
    }

    private static void o()
    {
        com.instagram.common.y.d.a(new Intent("NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"));
    }

    public final void a(boolean flag)
    {
        k = flag;
    }

    public final void b()
    {
        n();
        i = false;
        l = Long.valueOf(SystemClock.elapsedRealtime());
    }

    public final void c()
    {
        i = true;
    }

    public final boolean d()
    {
        return c != null;
    }

    public final boolean e()
    {
        return j;
    }

    public final HashSet f()
    {
        return b;
    }

    public final boolean g()
    {
        return k;
    }

    public final List h()
    {
        return e;
    }

    public final List i()
    {
        return f;
    }

    public final List j()
    {
        return g;
    }

    public final List k()
    {
        return h;
    }

    public final void l()
    {
        if (e != null)
        {
            e.clear();
        }
        if (f != null)
        {
            f.clear();
        }
        if (g != null)
        {
            g.clear();
        }
        if (h != null)
        {
            h.clear();
        }
        c = null;
        com.instagram.common.y.d.a(new Intent("NewsfeedYouFragment.UPDATE_NEWSFEED_YOU"));
    }

}
