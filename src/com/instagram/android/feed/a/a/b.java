// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.graphics.Rect;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.instagram.feed.d.l;
import com.instagram.feed.h.a;
import com.instagram.feed.h.d;
import com.instagram.feed.h.e;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.feed.a.a:
//            d, c

public final class b
    implements d
{

    private final com.instagram.android.feed.a.a a;
    private final Handler b = new Handler();
    private final int c;
    private final boolean d;
    private final a e = new a(this);
    private Set f;
    private final Rect g = new Rect();
    private final Rect h = new Rect();
    private final Rect i = new Rect();

    public b(com.instagram.android.feed.a.a a1, DisplayMetrics displaymetrics)
    {
        f = new HashSet();
        a = a1;
        c = (int)(0.5F + 160F * displaymetrics.density);
        d = a.c().an();
    }

    private int a(View view)
    {
        g.set(0, 0, a.f().getWidth(), a.f().getHeight());
        h.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        if (!i.setIntersect(g, h))
        {
            return 0;
        } else
        {
            return i.bottom - i.top;
        }
    }

    static com.instagram.android.feed.a.a a(b b1)
    {
        return b1.a;
    }

    private void a(l l1)
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((com.instagram.android.feed.a.a.d)iterator.next()).a(l1)) { }
    }

    private void a(l l1, int j)
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((com.instagram.android.feed.a.a.d)iterator.next()).a(l1, j)) { }
    }

    private boolean a(int j)
    {
        View view = a.c(j);
        return view != null && a(view) >= c;
    }

    static a b(b b1)
    {
        return b1.e;
    }

    private void b(l l1)
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((com.instagram.android.feed.a.a.d)iterator.next()).b(l1)) { }
    }

    private void b(l l1, int j)
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((com.instagram.android.feed.a.a.d)iterator.next()).b(l1, j)) { }
    }

    private boolean b(int j)
    {
        switch (j)
        {
        case 2: // '\002'
        default:
            return false;

        case 0: // '\0'
        case 3: // '\003'
            return true;

        case 1: // '\001'
            return d;
        }
    }

    private static boolean c(int j)
    {
        return j == 3;
    }

    public final void a()
    {
        if (!a.c().u() || a.n())
        {
            return;
        } else
        {
            e.a();
            return;
        }
    }

    public final void a(com.instagram.android.feed.a.a.d d1)
    {
        f.add(d1);
    }

    public final void a(e e1)
    {
        ListView listview = a.f();
        int j = listview.getFirstVisiblePosition();
        int k = listview.getLastVisiblePosition();
        for (int i1 = j; i1 <= k; i1++)
        {
            int j1 = listview.getAdapter().getItemViewType(i1);
            if (!b(j1))
            {
                continue;
            }
            int k1 = i1 - listview.getHeaderViewsCount();
            if (j1 == 1)
            {
                List list = a.g(k1);
                for (int i2 = 0; i2 < list.size(); i2++)
                {
                    l l2 = (l)list.get(i2);
                    e1.a(l2.d(), l2, i2 + k1 * 3);
                }

                continue;
            }
            l l1 = (l)a.getItem(k1);
            String s = l1.d();
            e1.a(s, l1, k1);
            if (!c(j1) && a(k1))
            {
                e1.b(s, l1, k1);
            }
        }

    }

    public final void a(Object obj)
    {
        b((l)obj);
    }

    public final void a(Object obj, int j)
    {
        b((l)obj, j);
    }

    public final void b()
    {
        b.post(new c(this));
    }

    public final void b(Object obj)
    {
        a((l)obj);
    }

    public final void b(Object obj, int j)
    {
        a((l)obj, j);
    }

    public final void c()
    {
        b();
    }
}
