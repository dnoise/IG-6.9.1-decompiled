// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.Toast;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.feed.a.b.v;
import com.instagram.android.feed.e.k;
import com.instagram.base.a.c;
import com.instagram.base.a.e;
import com.instagram.common.d.h;
import com.instagram.common.j.b;
import com.instagram.common.j.d;
import com.instagram.common.j.g;
import com.instagram.feed.a.i;
import com.instagram.feed.c.q;
import com.instagram.feed.d.ai;
import com.instagram.feed.d.t;
import com.instagram.o.f.f;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            ab, b, e, c, 
//            g, f

public abstract class a extends c
    implements v, ab, e, com.instagram.feed.g.a, com.instagram.ui.widget.loadmore.c
{

    protected Long aa;
    protected Boolean ab;
    protected com.instagram.feed.f.a ac;
    protected com.instagram.common.a.a.g ad;
    private com.instagram.android.feed.a.a ae;
    private com.instagram.feed.c.c af;
    private boolean ag;
    private boolean ah;
    private boolean ai;
    private HashMap aj;
    private h ak;
    private k al;
    private final d am = new com.instagram.android.fragment.b(this);
    private Handler an;
    protected com.instagram.feed.a.h i;

    public a()
    {
        ab = null;
        ag = false;
        ah = false;
        an = new com.instagram.android.fragment.e(this);
    }

    static Handler a(a a1)
    {
        return a1.an;
    }

    static boolean a(a a1, boolean flag)
    {
        a1.ai = flag;
        return flag;
    }

    static boolean b(a a1)
    {
        a1.ah = true;
        return true;
    }

    static boolean b(a a1, boolean flag)
    {
        a1.ag = flag;
        return flag;
    }

    public void F()
    {
        super.F();
        if (ah && p().g() > 0)
        {
            p().d();
            return;
        }
        if (com.instagram.creation.c.a.b())
        {
            W().j();
        }
        W().i();
        W().a(new com.instagram.android.fragment.c(this));
        if (ak == null)
        {
            ak = com.instagram.g.c.a(l());
        }
        ak.b();
        al.a();
        af.c();
    }

    public void G()
    {
        super.G();
        W().a(null);
        an.removeCallbacksAndMessages(null);
        W().q();
        ak.c();
        al.b();
        af.b();
        q.a().b();
    }

    public void H()
    {
        com.instagram.common.j.g.a().b(com/instagram/feed/d/t, am);
        super.H();
        af.d();
    }

    public final boolean V()
    {
        return W().o() == com.instagram.android.feed.a.h.a;
    }

    protected final com.instagram.android.feed.a.a W()
    {
        if (ae == null)
        {
            ae = X();
        }
        return ae;
    }

    protected abstract com.instagram.android.feed.a.a X();

    protected int Y()
    {
        return com.instagram.android.feed.a.h.a;
    }

    protected abstract void Z();

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_feed, viewgroup, false);
    }

    public View a(ViewGroup viewgroup)
    {
        return null;
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        ac = com.instagram.feed.f.a.a();
        a(((android.widget.ListAdapter) (W())));
        com.instagram.common.j.g.a().a(com/instagram/feed/d/t, am);
        af = new com.instagram.feed.c.c(this);
        al = new k(this, this);
        ad = new com.instagram.common.a.a.g(n(), z());
    }

    public void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            v_().setScrollingCacheEnabled(false);
        }
        v_().setOnScrollListener(W());
    }

    protected abstract void a(i j, boolean flag);

    public void a(ai ai1, int j)
    {
        com.instagram.base.a.a.a a1 = com.instagram.o.f.f.a().a(am(), ai1.f(), false, ao(), aq());
        String s1;
        if (ai1.g())
        {
            s1 = "video_thumbnail";
        } else
        {
            s1 = "photo_thumbnail";
        }
        a1.b(s1).a();
    }

    protected abstract void a(Map map);

    protected boolean a(com.instagram.common.l.a.e e1)
    {
        return true;
    }

    protected abstract void aa();

    protected abstract void ab();

    public final Map ac()
    {
        if (aj == null)
        {
            aj = new HashMap();
            a(aj);
        }
        return aj;
    }

    public boolean ad()
    {
        return false;
    }

    public final boolean ae()
    {
        while (!u() || o_() || e() || ac.b() == com.instagram.feed.f.b.a || !ac.d()) 
        {
            return false;
        }
        return true;
    }

    public final com.instagram.feed.f.a af()
    {
        return ac;
    }

    public boolean ag()
    {
        return true;
    }

    public boolean ah()
    {
        return false;
    }

    protected boolean ai()
    {
        return true;
    }

    protected final void aj()
    {
        if (v())
        {
            Toast.makeText(l(), az.could_not_refresh_feed, 0).show();
        }
    }

    protected boolean ak()
    {
        return false;
    }

    public final com.instagram.feed.c.c al()
    {
        return af;
    }

    protected abstract s am();

    public boolean an()
    {
        return false;
    }

    public boolean ao()
    {
        return false;
    }

    public boolean ap()
    {
        return false;
    }

    public boolean aq()
    {
        return true;
    }

    protected abstract void b(i j, boolean flag);

    protected final void c(boolean flag)
    {
        com.facebook.e.c.k.b("%s#%s", new Object[] {
            "AbstractFeedFragment", "constructAndPerformFeedRequest"
        });
        if (!e())
        {
            i = d(flag);
            if (i != null)
            {
                aa = Long.valueOf((new Date()).getTime());
                i.a(new com.instagram.android.fragment.g(this, n(), flag, (byte)0));
                ad.a(i);
            }
        }
    }

    protected abstract com.instagram.feed.a.h d(boolean flag);

    public boolean d()
    {
        return !e() || W().p() != 0;
    }

    public boolean e()
    {
        return ag;
    }

    public final boolean f()
    {
        return W().m();
    }

    public final boolean g()
    {
        return ac.b() != com.instagram.feed.f.b.a;
    }

    public View h()
    {
        return null;
    }

    public boolean i()
    {
        return false;
    }

    public void m_()
    {
        super.m_();
        W().h();
    }

    public void n_()
    {
        c(false);
    }

    public final boolean o_()
    {
        return ai;
    }

    public boolean p_()
    {
        return false;
    }

    public void r_()
    {
        super.r_();
    }

    public final void s_()
    {
        if (E() != null && v_().getCount() != 0 && v_().getHeight() != 0)
        {
            if (W().getCount() > 1 && v_().getFirstVisiblePosition() != 0)
            {
                a_(1);
                com.instagram.base.a.f.a(this, v_(), W());
                return;
            }
            if (v_().getFirstVisiblePosition() != 0)
            {
                a_(0);
                v_().smoothScrollToPosition(0);
            } else
            {
                a_(0);
            }
            if (E() != null)
            {
                v_().postDelayed(new com.instagram.android.fragment.f(this), 100L);
                return;
            }
        }
    }
}
