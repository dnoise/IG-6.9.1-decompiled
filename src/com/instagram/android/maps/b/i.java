// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.b;

import com.google.android.maps.GeoPoint;

// Referenced classes of package com.instagram.android.maps.b:
//            h

public final class i
{

    private h a;
    private h b;
    private h c;
    private h d;

    public i(h h1, h h2)
    {
        a = h1.b();
        b = h2.b();
    }

    public static i a(GeoPoint geopoint, int j, int k)
    {
        return new i(com.instagram.android.maps.b.h.a(geopoint), new h((double)j / 1000000D / 2D, (double)k / 1000000D / 2D));
    }

    public static i c()
    {
        return new i(new h(0.0D, 0.0D), new h(90D, 180D));
    }

    private h g()
    {
        if (c == null)
        {
            c = new h(a.c() - b.c(), a.f() + b.f());
        }
        return c;
    }

    private h h()
    {
        if (d == null)
        {
            d = new h(a.c() + b.c(), a.f() - b.f());
        }
        return d;
    }

    public final i a()
    {
        return new i(a, b);
    }

    public final boolean a(h h1)
    {
        boolean flag;
        boolean flag1;
        if (h1.c() >= a.c() - b.c() && h1.c() <= a.c() + b.c())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (h1.f() >= a.f() - b.f() && h1.f() <= a.f() + b.f())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag && flag1;
    }

    public final boolean a(i j)
    {
        return g().c() < j.h().c() && h().c() > j.g().c() && g().f() > j.h().f() && h().f() < j.g().f();
    }

    public final i b()
    {
        h h1 = b.a(2D);
        return new i(a, h1);
    }

    public final boolean b(i j)
    {
        return a(j.g()) && a(j.h());
    }

    public final boolean d()
    {
        return a.c() == 0.0D && a.f() == 0.0D && b.c() == 90D && b.f() == 180D;
    }

    public final h e()
    {
        return a;
    }

    public final h f()
    {
        return b;
    }
}
