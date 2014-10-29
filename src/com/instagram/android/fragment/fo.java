// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.e;
import android.support.v4.app.s;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.a.i;
import com.instagram.android.activity.UrlHandlerActivity;
import com.instagram.android.c.a.z;
import com.instagram.android.feed.a.b.ar;
import com.instagram.android.feed.a.h;
import com.instagram.android.feed.a.n;
import com.instagram.api.j.k;
import com.instagram.common.j.g;
import com.instagram.feed.a.m;
import com.instagram.m.c;
import com.instagram.service.a.a;
import com.instagram.ui.dialog.b;
import com.instagram.user.c.d;
import com.instagram.user.c.j;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            h, fv, fp, fq, 
//            ft, fr, fs, fw

public class fo extends com.instagram.android.fragment.h
    implements ar
{

    protected com.instagram.user.c.a ae;
    private final fv af = new fv(this, (byte)0);
    private com.instagram.android.feed.c.a ag;
    private String ah;
    private String ai;
    private List aj;
    private z ak;
    private int al;
    private boolean am;
    private boolean an;
    private boolean ao;
    private boolean ap;
    private com.instagram.user.follow.h aq;
    private final com.instagram.common.j.e ar = new fp(this);
    private final com.instagram.common.j.e as = new fq(this);
    private android.content.DialogInterface.OnClickListener at;

    public fo()
    {
        aj = new ArrayList();
        at = new ft(this);
    }

    static int a(fo fo1, int l)
    {
        fo1.al = l;
        return l;
    }

    static boolean a(fo fo1)
    {
        fo1.am = true;
        return true;
    }

    static boolean a(fo fo1, boolean flag)
    {
        fo1.ao = flag;
        return flag;
    }

    private boolean aA()
    {
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        return a1 != null && a1.equals(au());
    }

    private void aB()
    {
        (new b(l())).a(aw(), at).d().c().show();
    }

    private void ax()
    {
        aj.clear();
        if (ae == null)
        {
            return;
        }
        if (!aA())
        {
            aj.addAll(com.instagram.android.i.b.a(ae));
        }
        ((n)W()).a(aj);
    }

    private String ay()
    {
        com.instagram.user.c.a a1 = au();
        if (a1 != null)
        {
            return a1.g();
        } else
        {
            return ai;
        }
    }

    private n az()
    {
        return new n(this, Y(), ap, aq, this);
    }

    static String b(fo fo1)
    {
        return fo1.ay();
    }

    static List c(fo fo1)
    {
        return fo1.aj;
    }

    static void d(fo fo1)
    {
        fo1.ax();
    }

    static int e(fo fo1)
    {
        return fo1.al;
    }

    static boolean f(fo fo1)
    {
        return fo1.aA();
    }

    static void g(fo fo1)
    {
        fo1.aB();
    }

    static com.instagram.android.feed.c.a h(fo fo1)
    {
        return fo1.ag;
    }

    public void F()
    {
        super.F();
        if (al == k.d || am)
        {
            am = false;
            av();
        }
    }

    public void H()
    {
        android.support.v4.a.e.a(l()).a(af);
        com.instagram.common.j.g.a().b(com/instagram/user/c/g, ar).b(com/instagram/user/c/d, as);
        super.H();
    }

    protected final com.instagram.android.feed.a.a X()
    {
        return az();
    }

    protected final int Y()
    {
        return h.b;
    }

    public void a(Bundle bundle)
    {
        ap = c.g.b();
        super.a(bundle);
        ag = new com.instagram.android.feed.c.a(n(), z());
        if (j() != null)
        {
            an = j().getBoolean("UserDetailFragment.EXTRA_SHOW_USER_REQUEST_ROW", true);
        }
        com.instagram.user.follow.h h1;
        if (c.d.b())
        {
            h1 = com.instagram.user.follow.h.b;
        } else
        {
            h1 = com.instagram.user.follow.h.a;
        }
        aq = h1;
        at();
        ax();
        android.support.v4.a.e.a(n()).a(af, new IntentFilter("PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA"));
        com.instagram.common.j.g.a().a(com/instagram/user/c/g, ar).a(com/instagram/user/c/d, as);
        av();
    }

    public void a(com.instagram.a.b b1)
    {
        boolean flag = true;
        com.instagram.a.b b2;
        com.instagram.user.c.a a1;
        if (l() instanceof UrlHandlerActivity)
        {
            b2 = b1;
        } else
        if (am().g() > 0)
        {
            b2 = b1;
        } else
        {
            b2 = b1;
            flag = false;
        }
        b2.a(flag);
        b1.a(new fr(this));
        a1 = au();
        if (a1 == null) goto _L2; else goto _L1
_L1:
        b1.a(a1.b());
_L4:
        if (com.instagram.service.a.a.a().b() != null && a1 != null)
        {
            b1.a(i.b, new fs(this));
        }
        return;
_L2:
        if (ak.e() != null)
        {
            b1.a(ak.e());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(Map map)
    {
        map.put("src", "profile");
    }

    protected final boolean a(com.instagram.common.l.a.e e1)
    {
        if (e1.a())
        {
            String s1 = ((com.instagram.feed.a.i)e1.b()).k();
            if (s1 != null && s1.equals("Not authorized to view user"))
            {
                return false;
            }
        }
        return true;
    }

    protected final boolean ak()
    {
        return true;
    }

    public final boolean aq()
    {
        return false;
    }

    protected void as()
    {
        ((n)W()).notifyDataSetChanged();
        if (u())
        {
            com.instagram.a.f.a(l()).b();
        }
    }

    protected void at()
    {
        Bundle bundle = j();
        if (bundle.containsKey("UserDetailFragment.EXTRA_USER_ID"))
        {
            ai = bundle.getString("UserDetailFragment.EXTRA_USER_ID");
            ae = j.a().a(ai);
            return;
        }
        if (bundle.containsKey("UserDetailFragment.EXTRA_USER_NAME"))
        {
            ah = bundle.getString("UserDetailFragment.EXTRA_USER_NAME");
            ae = j.a().b(ah);
            return;
        } else
        {
            throw new RuntimeException("User Detail Fragment started without user id or username");
        }
    }

    protected final com.instagram.user.c.a au()
    {
        return ae;
    }

    public final void av()
    {
        com.instagram.user.c.a a1;
        ak = new z(n(), z(), com.instagram.common.y.e.a.a(), new fw(this, (byte)0));
        a1 = au();
        if (a1 == null) goto _L2; else goto _L1
_L1:
        ((n)W()).a(a1);
        ak.a(a1.g());
_L4:
        c(true);
        return;
_L2:
        if (ay() != null)
        {
            ak.a(j().getString("UserDetailFragment.EXTRA_USER_ID"));
        } else
        if (ah != null)
        {
            ak.b(j().getString("UserDetailFragment.EXTRA_USER_NAME"));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final CharSequence[] aw()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(com.instagram.android.feed.c.a.a(au(), o()));
        arraylist.add(c(az.report_inappropriate));
        arraylist.add(c(az.copy_profile_url));
        if (ae.z())
        {
            arraylist.add(c(az.directshare_receive_direct_posts));
        }
        if (com.instagram.service.a.a.a().b().h())
        {
            arraylist.add(c(az.suggest_user));
        }
        return (CharSequence[])arraylist.toArray(new CharSequence[arraylist.size()]);
    }

    public void b()
    {
    }

    protected final com.instagram.feed.a.h d(boolean flag)
    {
        com.instagram.user.c.a a1 = au();
        if (a1 == null)
        {
            return null;
        } else
        {
            return new m(af(), flag, a1);
        }
    }

    public final boolean e()
    {
        return super.e() || ae == null && ao;
    }

    public final View h()
    {
        if (ae != null)
        {
            if (!com.instagram.user.a.a.b(ae))
            {
                return LayoutInflater.from(n()).inflate(aw.load_more_private_user, null);
            }
            if (ae.x() != null && ae.x().booleanValue())
            {
                LinearLayout linearlayout = (LinearLayout)LayoutInflater.from(n()).inflate(aw.geo_ip_blocked, null);
                if (ae.y() != null)
                {
                    ((TextView)linearlayout.findViewById(av.geo_ip_blocked_extra_info)).setText(ae.y());
                }
                String s1 = (new StringBuilder("<a href=\"https://help.instagram.com/568747056560628\">")).append(o().getString(az.geo_ip_blocked_learn_more)).append("</a>").toString();
                TextView textview = (TextView)linearlayout.findViewById(av.geo_ip_blocked_help_center);
                textview.setText(Html.fromHtml(s1));
                textview.setMovementMethod(LinkMovementMethod.getInstance());
                return linearlayout;
            }
        }
        return null;
    }

    public final boolean i()
    {
        if (ae != null)
        {
            if (!com.instagram.user.a.a.b(ae))
            {
                return true;
            }
            if (ae.x() != null && ae.x().booleanValue())
            {
                return true;
            }
        }
        return false;
    }

    public String j_()
    {
        if (aA())
        {
            return "self_profile";
        } else
        {
            return "profile";
        }
    }

    public final void w_()
    {
        com.instagram.o.f.d.a().a(l(), ay());
    }

    public final boolean x_()
    {
        return an;
    }
}
