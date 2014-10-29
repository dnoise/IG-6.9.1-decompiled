// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import com.instagram.android.fragment.a;
import com.instagram.common.g.b.h;
import com.instagram.feed.d.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.instagram.android.feed.a:
//            a, h, f

final class g
{

    final com.instagram.android.feed.a.a a;
    private boolean b;
    private final Map c;
    private final ArrayList d;
    private final ArrayList e;

    private g(com.instagram.android.feed.a.a a1)
    {
        a = a1;
        super();
        b = false;
        c = new HashMap();
        d = new ArrayList();
        e = new ArrayList();
    }

    g(com.instagram.android.feed.a.a a1, byte byte0)
    {
        this(a1);
    }

    static void a(g g1)
    {
        g1.h();
    }

    private void a(l l1)
    {
        if (a.o() == com.instagram.android.feed.a.h.a)
        {
            com.instagram.common.g.b.h.a().c(l1.b(a.a.n()));
            return;
        } else
        {
            com.instagram.common.g.b.h.a().c(l1.e());
            return;
        }
    }

    static Map b(g g1)
    {
        return g1.c;
    }

    static int c(g g1)
    {
        return g1.g();
    }

    private int f()
    {
        boolean flag = a.a.g();
        int i = 0;
        if (flag)
        {
            boolean flag1 = a.a.ag();
            i = 0;
            if (flag1)
            {
                i = e.size() % 3;
            }
        }
        return i;
    }

    private int g()
    {
        return e.size();
    }

    private void h()
    {
        for (Iterator iterator = d.iterator(); iterator.hasNext(); a((l)iterator.next())) { }
    }

    public final l a(int i)
    {
        return (l)e.get(i);
    }

    public final void a()
    {
        e.clear();
        Iterator iterator = d.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            l l1 = (l)iterator.next();
            if (a.b(l1))
            {
                e.add(l1);
            }
        } while (true);
    }

    public final void a(List list, boolean flag)
    {
        if (list != null)
        {
            Iterator iterator = list.iterator();
            int i = 0;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                l l1 = (l)iterator.next();
                String s = l1.d();
                if ((l)c.get(s) == null)
                {
                    c.put(s, l1);
                    if (flag)
                    {
                        ArrayList arraylist = d;
                        int j = i + 1;
                        arraylist.add(i, l1);
                        i = j;
                    } else
                    {
                        d.add(l1);
                    }
                    a(l1);
                }
            } while (true);
        }
        if (b)
        {
            b = false;
            if (com.instagram.android.feed.a.a.c(a) != null)
            {
                com.instagram.android.feed.a.a.c(a).a();
            }
        }
    }

    public final List b(int i)
    {
        ArrayList arraylist = new ArrayList();
        int j = i * 3;
        for (int k = 0; k < 3; k++)
        {
            int i1 = j + k;
            if (i1 < g())
            {
                arraylist.add(a(i1));
            }
        }

        return arraylist;
    }

    public final void b()
    {
        b = true;
        c.clear();
        d.clear();
        e.clear();
    }

    public final int c()
    {
        if (com.instagram.android.feed.a.a.d(a) == com.instagram.android.feed.a.h.a)
        {
            return e.size() - f();
        }
        if (com.instagram.android.feed.a.a.d(a) == h.b)
        {
            if (a.a.g() || a.a.ah())
            {
                return (int)Math.floor((double)e.size() / 3D);
            } else
            {
                return (int)Math.ceil((double)e.size() / 3D);
            }
        } else
        {
            throw new UnsupportedOperationException("View mode not handled");
        }
    }

    public final boolean d()
    {
        return c() == 0;
    }

    public final boolean e()
    {
        return e.size() > 0;
    }
}
