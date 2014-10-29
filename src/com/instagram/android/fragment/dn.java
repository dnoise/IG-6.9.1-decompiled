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
import android.widget.AbsListView;
import android.widget.ListView;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.a.m;
import com.instagram.android.a.n;
import com.instagram.android.c.a.q;
import com.instagram.android.nux.SignedOutFragmentActivity;
import com.instagram.api.j.f;
import com.instagram.base.a.c;
import com.instagram.common.j.b;
import com.instagram.common.j.e;
import com.instagram.common.j.g;
import com.instagram.m.a;
import com.instagram.user.c.d;
import com.instagram.user.follow.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.instagram.android.fragment:
//            do, dp, dt, dq, 
//            dr, ds

public final class dn extends c
    implements android.widget.AbsListView.OnScrollListener, com.instagram.a.c
{

    private boolean aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private h ae;
    private Set af;
    private final Handler ag = new do(this);
    private final e ah = new dp(this);
    private m i;

    public dn()
    {
        af = new HashSet();
    }

    private boolean W()
    {
        return j() != null && j().getBoolean("com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW");
    }

    private f X()
    {
        return new dt(this);
    }

    static m a(dn dn1)
    {
        return dn1.i;
    }

    static boolean a(dn dn1, boolean flag)
    {
        dn1.ab = flag;
        return flag;
    }

    static Handler b(dn dn1)
    {
        return dn1.ag;
    }

    private void c(boolean flag)
    {
        aa = flag;
        if ((!ac || aa) && !ab)
        {
            (new q(l(), z(), W(), ad, X())).g();
        }
    }

    static boolean c(dn dn1)
    {
        return dn1.ab;
    }

    static boolean d(dn dn1)
    {
        return dn1.ac;
    }

    static void e(dn dn1)
    {
        dn1.c(true);
    }

    static boolean f(dn dn1)
    {
        return dn1.aa;
    }

    static boolean g(dn dn1)
    {
        dn1.ac = true;
        return true;
    }

    public final void F()
    {
        super.F();
        if (l() instanceof SignedOutFragmentActivity)
        {
            ((SignedOutFragmentActivity)l()).b(false);
        }
    }

    public final void G()
    {
        if (l() instanceof SignedOutFragmentActivity)
        {
            ((SignedOutFragmentActivity)l()).b(true);
        }
        af.clear();
        super.G();
    }

    public final void H()
    {
        com.instagram.common.j.g.a().b(com/instagram/user/c/d, ah);
        super.H();
    }

    public final void V()
    {
        v_().smoothScrollToPosition(0);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_listview_with_progress, viewgroup, false);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        if (j() != null)
        {
            ad = j().getBoolean("RecommendedUserFragment.IS_AYML_ENABLED", false);
        }
        h h1;
        if (com.instagram.m.c.d.b())
        {
            h1 = h.b;
        } else
        {
            h1 = h.a;
        }
        ae = h1;
        a(((android.widget.ListAdapter) (d())));
        com.instagram.common.j.g.a().a(com/instagram/user/c/d, ah);
        c(false);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        v_().setOnScrollListener(this);
    }

    public final void a(com.instagram.a.b b1)
    {
        boolean flag = true;
        int j;
        boolean flag1;
        if (ad)
        {
            j = az.recommended_follow_more_people;
        } else
        {
            j = az.find_friends_item_suggested_users;
        }
        b1.a(j);
        if (!W() && p().g() > 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        b1.a(flag1);
        if (W())
        {
            flag = false;
        }
        b1.a(flag, new dq(this));
        b1.b(ab);
        b1.a(new dr(this));
        if (W())
        {
            b1.b(az.done, new ds(this));
        }
    }

    public final void a(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList(arraylist.size());
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); arraylist1.add(((com.instagram.user.d.a)iterator.next()).a())) { }
        if (!arraylist1.isEmpty())
        {
            (new com.instagram.user.follow.a(l(), z(), 1, null)).a(arraylist1);
        }
    }

    protected final m d()
    {
        if (i == null)
        {
            n n1 = (new n(l())).a(z()).a(p());
            boolean flag;
            if (!W())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            i = n1.a(flag).b(ad).a(ae).a(4).e();
        }
        return i;
    }

    public final String j_()
    {
        if (ad)
        {
            return "ayml_recommended_users";
        } else
        {
            return "suggested_users";
        }
    }

    public final void k_()
    {
        com.instagram.ui.d.b.a(ab, E());
        super.k_();
    }

    public final void m_()
    {
        v_().setOnScrollListener(null);
        super.m_();
    }

    public final void onScroll(AbsListView abslistview, int j, int k, int l)
    {
        if (abslistview != null && k > 0)
        {
            for (int i1 = j; i1 < j + k; i1++)
            {
                com.instagram.user.d.a a1 = (com.instagram.user.d.a)d().getItem(i1);
                if (af.add(a1.a().g()) && ad)
                {
                    com.instagram.user.d.b.a(this, a1, i1, true);
                }
            }

        }
    }

    public final void onScrollStateChanged(AbsListView abslistview, int j)
    {
    }
}
