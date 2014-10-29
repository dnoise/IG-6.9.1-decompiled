// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.i;
import com.instagram.android.fragment.bc;
import com.instagram.android.fragment.dn;
import com.instagram.android.k.a.e;
import com.instagram.android.k.b.d;
import com.instagram.android.nux.SignedOutFragmentActivity;
import com.instagram.android.nux.af;
import com.instagram.base.a.c;
import com.instagram.common.a.a.g;
import com.instagram.common.a.a.j;
import com.instagram.common.a.a.k;
import com.instagram.common.d.h;
import com.instagram.ui.dialog.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.k.c:
//            i, n, g, h, 
//            k, u, m, r, 
//            t, b, f, q, 
//            c, d, e

public final class a extends c
    implements com.instagram.a.c
{

    private int aa;
    private String ab;
    private com.instagram.android.k.a.a ac;
    private boolean ad;
    private com.instagram.android.k.f.a ae;
    private String af;
    private boolean ag;
    private com.instagram.user.follow.h ah;
    private Handler ai;
    private u aj;
    private k ak;
    private h al;
    private final j am = new n(this);
    j i;

    public a()
    {
        ag = true;
        ai = new Handler();
        i = new com.instagram.android.k.c.i(this);
    }

    private void V()
    {
        String s1 = c(az.disconnect_contacts);
        CharSequence acharsequence[] = {
            s1
        };
        (new b(n())).a(acharsequence, new com.instagram.android.k.c.g(this, s1, acharsequence)).a(true).d().c().show();
    }

    private void W()
    {
        (new b(n())).b(az.disconnect_contacts_dialog_msg).b(az.disconnect, new com.instagram.android.k.c.h(this)).a(true).c(az.cancel, null).c().show();
    }

    private boolean X()
    {
        return j().getBoolean("com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW", false);
    }

    private boolean Y()
    {
        return j().getBoolean("UserListFragment.ARGUMENTS_IS_FACEBOOK_LINKING_FLOW", false);
    }

    private android.view.View.OnClickListener Z()
    {
        return new com.instagram.android.k.c.k(this);
    }

    static void a(a a1)
    {
        a1.ac();
    }

    private void aa()
    {
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        com.instagram.n.a.a(a1.b());
        com.instagram.p.b.aC.b().a("is_facebook_linking_flow", true).a("instagram_id", a1.g()).a();
        com.instagram.share.b.a.e();
        com.instagram.android.nux.af.a(l());
    }

    private boolean ab()
    {
        if (!(l() instanceof SignedOutFragmentActivity))
        {
            return false;
        }
        SignedOutFragmentActivity signedoutfragmentactivity = (SignedOutFragmentActivity)l();
        if (signedoutfragmentactivity.j())
        {
            return false;
        }
        if (ac == null || ac.e() == null || ac.e().size() == 0 || aj.o_())
        {
            return false;
        }
        for (Iterator iterator = ac.e().iterator(); iterator.hasNext();)
        {
            if (((com.instagram.user.c.a)iterator.next()).t() != com.instagram.user.c.c.c)
            {
                signedoutfragmentactivity.i();
                return false;
            }
        }

        return true;
    }

    private void ac()
    {
        if (ab())
        {
            (new b(l())).b(az.prompt_when_user_wants_to_skip_finding_friends_during_signup).b(az.yes_skip_this_step, new m(this)).a(true).c(az.cancel, null).c().show();
            return;
        } else
        {
            ad();
            return;
        }
    }

    private void ad()
    {
        if (Y())
        {
            aa();
            return;
        }
        if (aa == com.instagram.android.k.d.a.a || aa == com.instagram.android.k.d.a.c)
        {
            (new com.instagram.base.a.a.a(p())).a(new bc(), j()).a();
            return;
        } else
        {
            (new com.instagram.base.a.a.a(p())).a(new dn(), j()).a();
            return;
        }
    }

    private void ae()
    {
        ae.setFollowAllEnabled(false);
        List list = af();
        if (list.isEmpty())
        {
            if (X())
            {
                ad();
            }
            return;
        }
        if (X())
        {
            (new com.instagram.android.k.b.b(l(), z(), new r(this, (byte)0))).a(list);
            return;
        } else
        {
            (new com.instagram.android.k.b.c(l(), z(), new t(this, (byte)0))).a(list);
            return;
        }
    }

    private List af()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = ac.e().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            com.instagram.user.c.a a1 = (com.instagram.user.c.a)iterator.next();
            if (a1.t() != com.instagram.user.c.c.d && a1.t() != com.instagram.user.c.c.e && !com.instagram.user.a.a.a(a1))
            {
                arraylist.add(a1);
            }
        } while (true);
        return arraylist;
    }

    private void ag()
    {
        boolean flag;
        if (aj.e() && !aj.g())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.ui.d.b.a(flag, E());
    }

    private void ah()
    {
        int i1 = ac.e().size();
        if (aa != com.instagram.android.k.d.a.b) goto _L2; else goto _L1
_L1:
        com.instagram.l.b.a.a().a(i1);
_L4:
        ae.a(i1);
        return;
_L2:
        if (aa == com.instagram.android.k.d.a.a)
        {
            com.instagram.share.b.a.a(i1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void b(a a1)
    {
        a1.V();
    }

    static void c(a a1)
    {
        a1.W();
    }

    static k d(a a1)
    {
        return a1.ak;
    }

    static Handler e(a a1)
    {
        return a1.ai;
    }

    static void f(a a1)
    {
        a1.ae();
    }

    static com.instagram.android.k.a.a g(a a1)
    {
        return a1.ac;
    }

    static boolean h(a a1)
    {
        return a1.X();
    }

    static void i(a a1)
    {
        a1.ad();
    }

    static u j(a a1)
    {
        return a1.aj;
    }

    static void k(a a1)
    {
        a1.ah();
    }

    static boolean l(a a1)
    {
        return a1.Y();
    }

    static void m(a a1)
    {
        a1.aa();
    }

    static boolean n(a a1)
    {
        return a1.ad;
    }

    static void o(a a1)
    {
        a1.ag();
    }

    static com.instagram.android.k.f.a p(a a1)
    {
        return a1.ae;
    }

    static String q(a a1)
    {
        return a1.ab;
    }

    public final void F()
    {
        if (X() && !Y() && (l() instanceof SignedOutFragmentActivity))
        {
            ((SignedOutFragmentActivity)l()).b(false);
        }
        super.F();
        ah();
        if (al == null)
        {
            al = com.instagram.g.c.a(l());
        }
        al.b();
    }

    public final void G()
    {
        if (l() instanceof SignedOutFragmentActivity)
        {
            ((SignedOutFragmentActivity)l()).b(true);
        }
        al.c();
        super.G();
    }

    public final void H()
    {
        ac.d();
        super.H();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        ae = new com.instagram.android.k.f.a(n());
        ae.setType$1b988d18(aa);
        ae.setOnFollowAll(Z());
        if (Y())
        {
            ae.setUser(com.instagram.service.a.a.a().b());
        }
        View view = layoutinflater.inflate(aw.layout_listview_with_progress, viewgroup, false);
        ((ListView)view.findViewById(0x102000a)).addHeaderView(ae);
        return view;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        if (j().containsKey("UserListFragment.ARGUMENTS_TYPE"))
        {
            aa = com.instagram.android.k.d.a.a()[j().getInt("UserListFragment.ARGUMENTS_TYPE")];
            ab = j().getString("UserListFragment.ARGUMENTS_ACCESS_TOKEN");
        }
        ad = j().getBoolean("UserListFragment.ARGUMENTS_FOLLOW_BUTTONS", false);
        ag = j().getBoolean("UserListFragment.ARGUMENTS_CLICK_THROUGH", true);
        String s1;
        boolean flag;
        com.instagram.user.follow.h h1;
        if (j().containsKey("UserListFragment.ARGUMENTS_TITLE"))
        {
            s1 = j().getString("UserListFragment.ARGUMENTS_TITLE");
        } else
        {
            s1 = null;
        }
        af = s1;
        if (aa == com.instagram.android.k.d.a.c || aa == com.instagram.android.k.d.a.b || aa == com.instagram.android.k.d.a.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aj = new u(this);
        ak = new g(n(), z());
        if (com.instagram.m.c.d.b())
        {
            h1 = com.instagram.user.follow.h.b;
        } else
        {
            h1 = com.instagram.user.follow.h.a;
        }
        ah = h1;
        ac = (new e(n())).a(z()).a(p()).b(ad).a(flag).a(aj).c(ag).a(ah).a();
        d();
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        v_().setOnScrollListener(aj);
        a(((android.widget.ListAdapter) (ac)));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(af);
        boolean flag;
        if ((!X() || Y()) && p().g() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b1.a(flag);
        if (X())
        {
            b1.a(i.c, new com.instagram.android.k.c.b(this));
        } else
        if (aa == com.instagram.android.k.d.a.b)
        {
            b1.a(i.b, new f(this));
            return;
        }
    }

    public final void a(List list)
    {
        (new com.instagram.user.follow.a(l(), z(), 1, null)).a(list);
    }

    public final void d()
    {
        aj.b(false);
        if (j().containsKey("UserListFragment.ARGUMENTS_FETCH_URL"))
        {
            q q1 = new q(this, j().getString("UserListFragment.ARGUMENTS_FETCH_URL"));
            ak.a(q1.a(am));
        } else
        {
            if (aa == com.instagram.android.k.d.a.b)
            {
                com.instagram.android.k.c.c c1 = new com.instagram.android.k.c.c(this);
                ak.a(c1.a(am));
                return;
            }
            if (aa == com.instagram.android.k.d.a.a)
            {
                com.instagram.android.k.c.d d1 = new com.instagram.android.k.c.d(this);
                ak.a(d1.a(am));
                return;
            }
            if (aa == com.instagram.android.k.d.a.c)
            {
                com.instagram.android.k.c.e e1 = new com.instagram.android.k.c.e(this);
                ak.a(e1.a(am));
                return;
            }
        }
    }

    public final String j_()
    {
        String s1 = j().getString("UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME");
        if (s1 != null)
        {
            return s1;
        } else
        {
            return "user_list";
        }
    }

    public final void k_()
    {
        super.k_();
        ag();
    }
}
