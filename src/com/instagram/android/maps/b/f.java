// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.b;

import com.instagram.android.g.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.maps.b:
//            g, h

public final class f
    implements Comparable
{

    private ArrayList a;
    private h b;
    private h c;
    private h d;
    private boolean e;
    private boolean f;
    private String g;

    public f()
    {
        g = null;
        a = new ArrayList();
    }

    private int a(f f1)
    {
        if (a.size() == f1.a.size())
        {
            return 0;
        }
        return a.size() != f1.a.size() ? 1 : -1;
    }

    public final void a()
    {
        if (!f)
        {
            Collections.sort(a, new g(this));
            f = true;
        }
    }

    public final void a(h h1)
    {
        a.add(h1);
        if (b == null)
        {
            b = h1.b();
        } else
        {
            b.b(Math.min(h1.c(), b.c()));
            b.c(Math.min(h1.f(), b.f()));
        }
        if (c == null)
        {
            c = h1.b();
        } else
        {
            c.b(Math.max(h1.c(), c.c()));
            c.c(Math.max(h1.f(), c.f()));
        }
        if (d != null) goto _L2; else goto _L1
_L1:
        d = h1.b();
_L4:
        f = false;
        return;
_L2:
        if (h1.b(d) > 0)
        {
            d = h1.b();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); a((h)iterator.next())) { }
    }

    public final void a(boolean flag)
    {
        e = flag;
    }

    public final h b()
    {
        return d;
    }

    public final ArrayList c()
    {
        return a;
    }

    public final int compareTo(Object obj)
    {
        return a((f)obj);
    }

    public final h d()
    {
        return b;
    }

    public final h e()
    {
        return c;
    }

    public final h f()
    {
        return d;
    }

    public final ArrayList g()
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); arraylist.add(((h)iterator.next()).g())) { }
        return arraylist;
    }

    public final boolean h()
    {
        return e;
    }

    public final String i()
    {
        if (h() && g == null)
        {
            g = com.instagram.android.g.b.a(c());
            if (g == null)
            {
                g = "";
            }
        }
        if (g != null && g.length() == 0)
        {
            return null;
        } else
        {
            return g;
        }
    }
}
