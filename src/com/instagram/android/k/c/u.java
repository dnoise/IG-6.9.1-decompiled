// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import com.instagram.feed.b.a;
import com.instagram.feed.b.b;
import com.instagram.ui.widget.loadmore.c;

// Referenced classes of package com.instagram.android.k.c:
//            a

public final class u
    implements android.widget.AbsListView.OnScrollListener, b, c
{

    private final a a = new a(this);
    private final com.instagram.android.k.c.a b;
    private boolean c;
    private boolean d;
    private long e;

    public u(com.instagram.android.k.c.a a1)
    {
        e = -1L;
        b = a1;
    }

    public final View a(ViewGroup viewgroup)
    {
        return null;
    }

    public final void a()
    {
        if (b.u() && !e() && !o_() && g())
        {
            n_();
        }
    }

    public final void a(long l)
    {
        e = l;
    }

    public final void a(boolean flag)
    {
        d = flag;
    }

    public final int b()
    {
        return 4;
    }

    public final void b(boolean flag)
    {
        c = flag;
    }

    public final boolean d()
    {
        return true;
    }

    public final boolean e()
    {
        return d;
    }

    public final boolean f()
    {
        return !b.c().isEmpty();
    }

    public final boolean g()
    {
        return e != -1L;
    }

    public final View h()
    {
        return null;
    }

    public final boolean i()
    {
        return false;
    }

    public final long k()
    {
        return e;
    }

    public final void n_()
    {
        b.d();
    }

    public final boolean o_()
    {
        return c;
    }

    public final void onScroll(AbsListView abslistview, int j, int l, int i1)
    {
        a.onScroll(abslistview, j, l, i1);
    }

    public final void onScrollStateChanged(AbsListView abslistview, int j)
    {
        a.onScrollStateChanged(abslistview, j);
    }
}
