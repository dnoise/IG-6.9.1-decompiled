// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.p.b;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.instagram.common.p.a.a;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package com.instagram.common.p.b:
//            d, a, c

public final class b
    implements a
{

    private Handler a;
    private com.instagram.common.x.a b;
    private boolean c;
    private boolean d;
    private boolean e;
    private List f;

    private b(com.instagram.common.x.a a1)
    {
        a = new Handler(Looper.getMainLooper());
        c = true;
        d = true;
        f = new CopyOnWriteArrayList();
        b = a1;
        com.instagram.common.p.a.b.a().a(this);
    }

    b(com.instagram.common.x.a a1, byte byte0)
    {
        this(a1);
    }

    public static b a()
    {
        return com.instagram.common.p.b.d.a;
    }

    static boolean a(b b1)
    {
        return b1.c;
    }

    static boolean a(b b1, boolean flag)
    {
        b1.d = flag;
        return flag;
    }

    static boolean b(b b1)
    {
        return b1.d;
    }

    private void c()
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((com.instagram.common.p.b.a)iterator.next()).a()) { }
    }

    static void c(b b1)
    {
        b1.c();
    }

    private void d()
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((com.instagram.common.p.b.a)iterator.next()).b()) { }
    }

    static boolean d(b b1)
    {
        b1.e = false;
        return false;
    }

    public final void a(Activity activity)
    {
        b.b();
        c = true;
        if (e)
        {
            return;
        } else
        {
            e = true;
            a.postDelayed(new c(this), 5000L);
            return;
        }
    }

    public final void a(com.instagram.common.p.b.a a1)
    {
        if (!f.contains(a1))
        {
            f.add(a1);
        }
    }

    public final void b(Activity activity)
    {
        b.b();
        c = false;
        if (d)
        {
            d = false;
            d();
        }
    }

    public final boolean b()
    {
        return d;
    }
}
