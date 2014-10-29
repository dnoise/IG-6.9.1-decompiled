// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.instagram.android.feed.a.a.b;
import com.instagram.android.feed.a.h;
import com.instagram.android.feed.e.f;
import com.instagram.common.y.c.a;
import com.instagram.feed.a.i;
import com.instagram.feed.d.ai;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.android.fragment:
//            a, fj, av, fc, 
//            at, as

public final class ar extends com.instagram.android.fragment.a
    implements fj
{

    private Map ae;
    private int af;

    public ar()
    {
        ae = new HashMap();
    }

    static Map a(ar ar1)
    {
        return ar1.ae;
    }

    private int ar()
    {
        int i = v_().getLastVisiblePosition();
        int j = v_().getFirstVisiblePosition();
        int l = 0;
        for (int i1 = j; i1 <= i; i1++)
        {
            if (v_().getAdapter().getItemViewType(i1) == 1)
            {
                l += 3;
            }
        }

        return l;
    }

    public final void G()
    {
        super.G();
        com.instagram.common.y.c.a.a().execute(new av(this, ae, ar()));
        ae = new HashMap();
    }

    protected final com.instagram.android.feed.a.a X()
    {
        return new com.instagram.android.feed.a.a(this, Y());
    }

    protected final int Y()
    {
        return h.b;
    }

    protected final void Z()
    {
        ((fc)r()).a(this);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        c(true);
        W().e().a(new at(this, (byte)0));
    }

    public final void a(View view, Bundle bundle)
    {
        if (com.instagram.base.b.b.a(this))
        {
            ((fc)r()).a(this);
        }
        super.a(view, bundle);
    }

    protected final void a(i i, boolean flag)
    {
    }

    public final void a(ai ai, int i)
    {
        f.a(this, "explore_item_clicked", ai, i, ar());
        super.a(ai, i);
    }

    public final void a(Map map)
    {
        map.put("src", "explore");
    }

    protected final void aa()
    {
        ((fc)r()).a(this);
    }

    protected final void ab()
    {
    }

    public final boolean ah()
    {
        return true;
    }

    protected final s am()
    {
        return r().p();
    }

    public final boolean an()
    {
        return true;
    }

    public final boolean ao()
    {
        return true;
    }

    protected final void b(i i, boolean flag)
    {
    }

    protected final com.instagram.feed.a.h d(boolean flag)
    {
        return new as(this, af(), flag);
    }

    public final boolean d()
    {
        return ac.d();
    }

    public final String j_()
    {
        return "explore_popular";
    }

    public final void k_()
    {
        af = l().getRequestedOrientation();
        l().setRequestedOrientation(1);
        com.instagram.a.f.a(r().l()).b(e());
        super.k_();
    }

    public final void l_()
    {
        l().setRequestedOrientation(af);
        super.l_();
    }

    public final void t_()
    {
        if (o_())
        {
            com.instagram.b.b.a.a(new com.instagram.common.analytics.b("action_bar_feed_retry", this), n()).a();
        }
        c(true);
    }

    public final void u_()
    {
    }
}
