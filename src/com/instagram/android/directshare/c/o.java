// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import com.instagram.feed.b.a;
import com.instagram.feed.b.b;
import com.instagram.ui.widget.loadmore.c;

// Referenced classes of package com.instagram.android.directshare.c:
//            c, t, a, b

final class o
    implements android.widget.AbsListView.OnScrollListener, b, c
{

    private com.instagram.android.directshare.c.c a;
    private a b;
    private boolean c;

    o(com.instagram.android.directshare.c.c c1)
    {
        a = c1;
        b = new a(this);
    }

    public final View a(ViewGroup viewgroup)
    {
        return null;
    }

    public final void a()
    {
        if (a.u() && !e() && !o_() && com.instagram.android.directshare.c.t.a().d())
        {
            n_();
        }
    }

    final void a(boolean flag)
    {
        c = flag;
    }

    public final int b()
    {
        return 5;
    }

    public final boolean d()
    {
        return true;
    }

    public final boolean e()
    {
        return com.instagram.android.directshare.c.t.a().e();
    }

    public final boolean f()
    {
        return !a.c().isEmpty();
    }

    public final boolean g()
    {
        return false;
    }

    public final View h()
    {
        return null;
    }

    public final boolean i()
    {
        return false;
    }

    public final void n_()
    {
        a.a(com.instagram.android.directshare.c.b.a, false);
    }

    public final boolean o_()
    {
        return c;
    }

    public final void onScroll(AbsListView abslistview, int j, int k, int l)
    {
        b.onScroll(abslistview, j, k, l);
    }

    public final void onScrollStateChanged(AbsListView abslistview, int j)
    {
        b.onScrollStateChanged(abslistview, j);
    }
}
