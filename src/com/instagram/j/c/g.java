// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.a.e;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.base.a.i;
import com.instagram.base.a.j;
import com.instagram.common.j.b;
import com.instagram.j.a.a.a;
import com.instagram.o.f.d;
import com.instagram.ui.viewpager.ScrollingOptionalViewPager;
import com.instagram.ui.widget.bannertoast.BannerToast;
import com.instagram.user.c.c;
import com.instagram.user.c.f;
import java.util.HashSet;

// Referenced classes of package com.instagram.j.c:
//            h, i, o, n, 
//            m, p, j, k, 
//            l, a

public final class g extends i
    implements a
{

    public static final Integer a = Integer.valueOf(0);
    public static final Integer b = Integer.valueOf(1);
    private static boolean c = false;
    private final BroadcastReceiver aa = new h(this);
    private final com.instagram.common.j.e ab = new com.instagram.j.c.i(this);
    private p d;
    private o e;
    private IntentFilter f;
    private com.instagram.user.c.a g;
    private com.instagram.feed.i.a h;
    private BannerToast i;

    public g()
    {
    }

    public static void W()
    {
        c = true;
    }

    private void X()
    {
        if (V() == b.intValue())
        {
            Integer integer = g.p();
            if (integer != null && integer.intValue() == 0)
            {
                if (h == null && E() != null)
                {
                    h = new com.instagram.feed.i.a((ViewGroup)E());
                    if (u())
                    {
                        h.a();
                    }
                }
                return;
            } else
            {
                Y();
                return;
            }
        } else
        {
            Y();
            return;
        }
    }

    private void Y()
    {
        if (h != null)
        {
            h.b();
            h = null;
        }
    }

    private void Z()
    {
        com.instagram.b.c.a.a().a(this);
    }

    static p a(g g1)
    {
        return g1.d;
    }

    static void a(g g1, int i1)
    {
        g1.f(i1);
    }

    private n aa()
    {
        return (n)e.b(V());
    }

    static com.instagram.user.c.a b(g g1)
    {
        return g1.g;
    }

    private void b(com.instagram.user.c.a a1)
    {
        String s1;
        c c1;
        s1 = a1.b();
        c1 = a1.t();
        com.instagram.j.c.m.a[c1.ordinal()];
        JVM INSTR tableswitch 1 3: default 44
    //                   1 95
    //                   2 148
    //                   3 176;
           goto _L1 _L2 _L3 _L4
_L1:
        int i1;
        Object obj;
        obj = null;
        i1 = 0;
_L6:
        if (obj != null && i != null)
        {
            i.setBackgroundResource(i1);
            i.setText(((CharSequence) (obj)));
            i.bringToFront();
            i.a();
        }
        return;
_L2:
        i1 = as.red_medium;
        if (a1.s() == f.c)
        {
            obj = n().getString(az.requested_cancel_confirmation_toast);
        } else
        {
            obj = n().getString(az.unfollowing_confirmation_toast, new Object[] {
                s1
            });
        }
        continue; /* Loop/switch isn't completed */
_L3:
        i1 = as.green_medium;
        obj = n().getString(az.following_confirmation_toast, new Object[] {
            s1
        });
        continue; /* Loop/switch isn't completed */
_L4:
        i1 = as.grey_light;
        obj = n().getString(az.requested_following_confirmation_toast, new Object[] {
            s1
        });
        if (true) goto _L6; else goto _L5
_L5:
    }

    static void c(g g1)
    {
        g1.X();
    }

    static n d(g g1)
    {
        return g1.aa();
    }

    static void e(g g1)
    {
        g1.Z();
    }

    private void f(int i1)
    {
        if (i1 != V())
        {
            com.instagram.b.c.a a1 = com.instagram.b.c.a.a();
            int j1 = p().g();
            String s1;
            if (i1 == b.intValue())
            {
                s1 = "newsfeed_you";
            } else
            {
                s1 = "newsfeed_following";
            }
            a1.a(this, j1, s1);
        }
    }

    public final void F()
    {
        super.F();
        android.support.v4.a.e.a(n()).a(aa, f);
        if (c)
        {
            d.a(b.intValue());
            c = false;
        }
        if (h != null)
        {
            h.a();
        }
    }

    public final void G()
    {
        super.G();
        android.support.v4.a.e.a(l()).a(aa);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.fragment_newsfeed, viewgroup, false);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        g = com.instagram.service.a.a.a().b();
        e = new o(this, q());
        f = new IntentFilter("NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU");
    }

    protected final void a(View view)
    {
        ScrollingOptionalViewPager scrollingoptionalviewpager = (ScrollingOptionalViewPager)view.findViewById(av.newsfeed_pager);
        e.a(scrollingoptionalviewpager);
        scrollingoptionalviewpager.setAdapter(e);
        scrollingoptionalviewpager.setOnPageChangeListener(new com.instagram.j.c.j(this));
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        i = (BannerToast)view.findViewById(av.newsfeed_banner_toast);
        com.instagram.common.j.g.a().a(com/instagram/user/c/g, ab);
        X();
        if (bundle != null && bundle.containsKey("NewsfeedFragment.EXTRA_CURRENT_MODE"))
        {
            a(bundle.getInt("NewsfeedFragment.EXTRA_CURRENT_MODE"));
        }
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.news);
        b1.a(true, new k(this));
        b1.b(aa().V());
        b1.a(new l(this));
    }

    final void a(n n1)
    {
        if (u() && n1 == aa())
        {
            com.instagram.a.f.a(l()).b(n1.V());
        }
    }

    public final void a(com.instagram.user.c.a a1)
    {
        b(a1);
    }

    public final void a(String s1)
    {
        com.instagram.o.f.f.a().a(p(), s1).a();
    }

    public final void b(View view)
    {
        d = new p(this, view);
        d.a();
    }

    final void b(n n1)
    {
        if (u() && n1 == aa())
        {
            Toast.makeText(l(), az.could_not_refresh_feed, 0).show();
        }
    }

    public final void b(String s1)
    {
        int i1 = V();
        int j1 = b.intValue();
        boolean flag = false;
        if (i1 == j1)
        {
            boolean flag1 = com.instagram.j.e.a.a().f().contains(s1);
            flag = false;
            if (!flag1)
            {
                flag = true;
                com.instagram.j.e.a.a().f().add(s1);
            }
        }
        com.instagram.o.f.f.a().b(p(), s1, flag).a();
    }

    protected final int c()
    {
        return b.intValue();
    }

    public final void c(String s1)
    {
        com.instagram.o.f.b.a().a(p(), s1);
    }

    public final j d()
    {
        return d;
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
    }

    public final void d(String s1)
    {
        com.instagram.o.f.d.a().a(l(), s1);
    }

    public final void e()
    {
        (new com.instagram.base.a.a.a(p())).a(new com.instagram.j.c.a()).a();
    }

    public final void e(Bundle bundle)
    {
        bundle.putInt("NewsfeedFragment.EXTRA_CURRENT_MODE", V());
        super.e(bundle);
    }

    public final void e(String s1)
    {
        com.instagram.o.f.f.a().d(p(), s1).a();
    }

    public final void f(String s1)
    {
        com.instagram.o.f.f.a().b(p(), s1).a();
    }

    public final String j_()
    {
        return "newsfeed";
    }

    public final void m_()
    {
        h = null;
        e.a(null);
        com.instagram.common.j.g.a().b(com/instagram/user/c/g, ab);
        if (d != null)
        {
            d.b();
            d = null;
        }
        super.m_();
    }

    public final void s_()
    {
        aa().W();
    }

}
