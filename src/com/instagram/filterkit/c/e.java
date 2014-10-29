// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.c;

import android.content.Context;
import com.instagram.filterkit.a.b;
import com.instagram.filterkit.a.c;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.filter.IgFilter;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

// Referenced classes of package com.instagram.filterkit.c:
//            c, g, h, f, 
//            d, b

public class e
    implements com.instagram.filterkit.c.c
{

    private static final Class a = com/instagram/filterkit/c/e;
    private final d b = new g(this, (byte)0);
    private final c c;
    private final com.instagram.filterkit.c.b d;
    private final b e;
    private final Queue f = new ConcurrentLinkedQueue();
    private final List g = new LinkedList();
    private final Object h = new Object();
    private volatile h i;
    private volatile IgFilter j;
    private volatile a k;
    private volatile com.instagram.filterkit.e.c l;
    private volatile boolean m;

    public e(Context context, c c1, com.instagram.filterkit.c.b b1)
    {
        m = false;
        c = c1;
        d = b1;
        e = new b(context);
    }

    static b a(e e1)
    {
        return e1.e;
    }

    static a a(e e1, a a1)
    {
        e1.k = a1;
        return a1;
    }

    static com.instagram.filterkit.e.c a(e e1, com.instagram.filterkit.e.c c1)
    {
        e1.l = c1;
        return c1;
    }

    static c b(e e1)
    {
        return e1.c;
    }

    static a c(e e1)
    {
        return e1.k;
    }

    static com.instagram.filterkit.c.b d(e e1)
    {
        return e1.d;
    }

    static Class e()
    {
        return a;
    }

    static List e(e e1)
    {
        return e1.g;
    }

    private h f()
    {
        if (i == null)
        {
            i = new h(this);
        }
        return i;
    }

    static h f(e e1)
    {
        e1.i = null;
        return null;
    }

    static Queue g(e e1)
    {
        return e1.f;
    }

    private void g()
    {
        if (!f().isAlive())
        {
            f().start();
        }
        synchronized (f())
        {
            com.instagram.filterkit.c.h.a(f());
            f().notify();
        }
    }

    static boolean h(e e1)
    {
        return e1.m;
    }

    static com.instagram.filterkit.e.c i(e e1)
    {
        return e1.l;
    }

    static IgFilter j(e e1)
    {
        return e1.j;
    }

    static Object k(e e1)
    {
        return e1.h;
    }

    public final void a()
    {
        if (!f.contains(b))
        {
            a(b);
        }
    }

    public final void a(d d1)
    {
        f.offer(d1);
        if (m)
        {
            throw new IllegalStateException("requestRender called after requestDestroy");
        } else
        {
            g();
            return;
        }
    }

    public final void a(com.instagram.filterkit.e.c c1)
    {
        synchronized (g)
        {
            g.add(new f(this, c1));
        }
    }

    public final void a(IgFilter igfilter)
    {
        j = igfilter;
    }

    public final void b()
    {
        synchronized (h)
        {
            m = true;
        }
        g();
        i = null;
    }

    public final boolean c()
    {
        return m;
    }

    public final b d()
    {
        return e;
    }

}
