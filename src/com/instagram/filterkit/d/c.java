// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.d;

import android.content.Context;
import android.util.SparseArray;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.e.b;
import com.instagram.filterkit.e.g;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.filterkit.d:
//            b, f, a, e

public final class c
{

    private final com.instagram.filterkit.d.b a = new com.instagram.filterkit.d.b();
    private final f b;
    private final Set c = new HashSet();
    private final Set d = new HashSet();
    private final Set e = new HashSet();
    private final Map f = new HashMap();
    private final SparseArray g = new SparseArray();
    private final Set h = new HashSet();

    public c(Context context)
    {
        b = new f(context);
    }

    public static void a(g g1)
    {
        if (g1 != null)
        {
            g1.e();
        }
    }

    private void c()
    {
        int i;
        for (Iterator iterator = h.iterator(); iterator.hasNext(); b.a(i, ((Integer)g.get(i)).intValue()))
        {
            i = ((Integer)iterator.next()).intValue();
        }

        g.clear();
        h.clear();
    }

    private void d(e e1)
    {
        b.a(e1);
        d.remove(e1);
    }

    public final com.instagram.filterkit.d.b a()
    {
        return a;
    }

    public final a a(e e1, String s)
    {
        d.add(e1);
        return b.a(e1, s);
    }

    public final b a(int i)
    {
        b b1 = b.a(i);
        e.add(b1);
        g.put(i, Integer.valueOf(Math.max(-1 + ((Integer)g.get(i, Integer.valueOf(0))).intValue(), 0)));
        return b1;
    }

    public final b a(int i, int j)
    {
        com.instagram.filterkit.d.b _tmp = a;
        return new com.instagram.filterkit.d.a(i, j);
    }

    public final b a(int i, e e1)
    {
        b b1 = a(i);
        if (e1 != null)
        {
            e.remove(b1);
            f.put(b1, e1);
        }
        return b1;
    }

    public final void a(g g1, e e1)
    {
        boolean flag = true;
        if (!e.remove(g1))
        {
            if (e1 != null && e1.equals(f.get(g1)))
            {
                f.remove(g1);
            } else
            {
                flag = false;
            }
        }
        if (flag)
        {
            b.a((b)g1);
            g.put(g1.c(), Integer.valueOf(1 + ((Integer)g.get(g1.c(), Integer.valueOf(0))).intValue()));
            h.add(Integer.valueOf(g1.c()));
        }
    }

    public final boolean a(e e1)
    {
        return c.contains(e1);
    }

    public final boolean a(b b1, e e1)
    {
        if (e1 == null)
        {
            return false;
        }
        e e2 = (e)f.get(b1);
        if (e2 != null)
        {
            return e1 == e2;
        } else
        {
            e.remove(b1);
            f.put(b1, e1);
            return true;
        }
    }

    public final boolean a(String s)
    {
        com.instagram.filterkit.d.b _tmp = a;
        return com.instagram.filterkit.d.b.a(s);
    }

    public final void b()
    {
        e e1;
        for (Iterator iterator = d.iterator(); iterator.hasNext(); b.a(e1))
        {
            e1 = (e)iterator.next();
        }

        d.clear();
        for (Iterator iterator1 = e.iterator(); iterator1.hasNext(); ((b)iterator1.next()).e()) { }
        e.clear();
        for (Iterator iterator2 = f.keySet().iterator(); iterator2.hasNext(); ((g)iterator2.next()).e()) { }
        f.clear();
        for (Iterator iterator3 = c.iterator(); iterator3.hasNext(); ((e)iterator3.next()).a(this)) { }
        c.clear();
        c();
    }

    public final void b(e e1)
    {
        c.add(e1);
    }

    public final boolean b(b b1, e e1)
    {
        if (e1 == null || e1 != f.get(b1))
        {
            return false;
        } else
        {
            e.add(b1);
            f.remove(b1);
            return true;
        }
    }

    public final void c(e e1)
    {
        d(e1);
        if (c.contains(e1))
        {
            e1.a(this);
        }
        c.remove(e1);
    }

    public final void c(b b1, e e1)
    {
        if (e1 != null && e1.equals(f.get(b1)))
        {
            f.remove(b1);
            b1.e();
        } else
        if (e.remove(b1))
        {
            b1.e();
            return;
        }
    }
}
