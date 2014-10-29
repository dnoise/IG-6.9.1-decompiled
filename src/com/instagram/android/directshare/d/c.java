// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.s;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.ListView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.i;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.feed.a.a.m;
import com.instagram.android.feed.a.a.q;
import com.instagram.android.feed.a.b.ac;
import com.instagram.android.feed.e.h;
import com.instagram.android.widget.ObservableLinearLayout;
import com.instagram.base.a.b;
import com.instagram.common.analytics.d;
import com.instagram.common.j.g;
import com.instagram.common.y.e;
import com.instagram.common.y.f;
import com.instagram.f.a.a.k;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.ak;
import com.instagram.feed.d.l;
import com.instagram.feed.d.o;
import com.instagram.feed.d.t;
import com.instagram.feed.d.v;
import com.instagram.feed.g.a;

// Referenced classes of package com.instagram.android.directshare.d:
//            b, d, o, s, 
//            r, x, y, a, 
//            z, e, f, g, 
//            h, i, n, l, 
//            t, v, ab, w, 
//            p, q, k, m, 
//            j

public class c extends b
    implements com.instagram.a.c, com.instagram.android.directshare.d.b, q, a
{

    private static final Class a = com/instagram/android/directshare/d/c;
    private AutoCompleteTextView aa;
    private ImageView ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private boolean af;
    private boolean ag;
    private boolean ah;
    private int ai;
    private com.instagram.model.b.a aj;
    private com.instagram.ui.f.b ak;
    private com.instagram.android.feed.e.k al;
    private com.instagram.common.a.a.k am;
    private com.instagram.common.j.e an;
    private final com.instagram.common.j.d ao = new com.instagram.android.directshare.d.d(this);
    private final BroadcastReceiver ap = new com.instagram.android.directshare.d.o(this);
    private final BroadcastReceiver aq = new com.instagram.android.directshare.d.s(this);
    private final TextWatcher ar = new r(this);
    private final Handler b = new Handler();
    private String c;
    private l d;
    private com.instagram.android.directshare.d.a e;
    private m f;
    private ListView g;
    private boolean h;
    private ImageView i;

    public c()
    {
        ac = true;
    }

    private void W()
    {
        l l1 = com.instagram.feed.d.ad.a().b(c);
        if (l1 != null)
        {
            d = l1;
            Z();
        }
        X();
    }

    private void X()
    {
        am.a((new k(c)).a(new x(this)));
    }

    private void Y()
    {
        (new com.instagram.ui.dialog.b(n())).a(az.error).b(az.post_deleted).b(az.ok, new y(this)).c().show();
    }

    private void Z()
    {
        if (d.C() == 0)
        {
            e.a(d);
            if (E() != null)
            {
                ab();
            }
            if (!ah)
            {
                ah = true;
                com.instagram.android.directshare.a.a.a(d, j().getBoolean("opened_via_push"));
            }
            return;
        } else
        {
            p().e();
            return;
        }
    }

    static l a(c c1)
    {
        return c1.d;
    }

    static l a(c c1, l l1)
    {
        c1.d = l1;
        return l1;
    }

    private void a(int i1, int j1)
    {
        com.instagram.android.feed.e.h.a(n(), am, d, i1, j1);
    }

    static void a(c c1, int i1, int j1)
    {
        c1.a(i1, j1);
    }

    static void a(c c1, com.instagram.feed.d.b b1)
    {
        c1.c(b1);
    }

    static boolean a(c c1, boolean flag)
    {
        c1.h = flag;
        return flag;
    }

    private boolean a(String s1)
    {
        return d != null && !com.instagram.common.y.e.c(s1);
    }

    private void aa()
    {
        com.instagram.feed.d.ak.a().a(d);
    }

    private void ab()
    {
        boolean flag;
        if (d != null)
        {
            ImageView imageview = i;
            int i1;
            if (d.r())
            {
                i1 = au.feed_button_like_background_liked;
            } else
            {
                i1 = au.feed_button_like_background;
            }
            imageview.setImageResource(i1);
            i.setOnClickListener(new z(this));
            aa.setAdapter(new com.instagram.android.a.a(n(), d));
            aa.addTextChangedListener(ar);
            aa.setOnEditorActionListener(new com.instagram.android.directshare.d.e(this));
            aa.setOnFocusChangeListener(new com.instagram.android.directshare.d.f(this));
            aa.setOnClickListener(new com.instagram.android.directshare.d.g(this));
            ab.setOnClickListener(new com.instagram.android.directshare.d.h(this));
        }
        if (d == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.ui.d.b.a(flag, E());
        if (!ad && ae && !e.isEmpty())
        {
            ah();
            ad = true;
        }
    }

    private void ac()
    {
        String s1 = ad();
        if (a(s1))
        {
            b(s1);
        }
    }

    private String ad()
    {
        return aa.getText().toString().trim();
    }

    private void ae()
    {
        boolean flag = a(ad());
        ab.setEnabled(flag);
        Drawable drawable = ab.getDrawable().mutate();
        char c1;
        if (flag)
        {
            c1 = '\377';
        } else
        {
            c1 = 'M';
        }
        drawable.setAlpha(c1);
    }

    private com.instagram.android.directshare.d.a af()
    {
        return new com.instagram.android.directshare.d.a(n(), this, f);
    }

    private void ag()
    {
        if (g != null)
        {
            g.setSelection(-1 + e.getCount());
        }
    }

    private void ah()
    {
        if (g != null)
        {
            g.post(new com.instagram.android.directshare.d.i(this));
        }
    }

    private void ai()
    {
        if (!u())
        {
            return;
        }
        int i1 = g.getLastVisiblePosition();
        View view = g.getChildAt(-1 + g.getChildCount());
        if (i1 == (-2 + e.getCount()) - g.getHeaderViewsCount() && view.getBottom() - g.getBottom() < 50)
        {
            ah();
            return;
        } else
        {
            g.scrollBy(0, 1);
            g.scrollBy(0, -1);
            return;
        }
    }

    private void aj()
    {
        if (d.an() != 0L && d.an() < d.ao())
        {
            ah();
        }
    }

    private boolean ak()
    {
        return com.instagram.creation.c.a.b() && ac;
    }

    static void b(c c1)
    {
        c1.Z();
    }

    private void b(com.instagram.model.b.a a1, View view)
    {
        aj = a1;
        com.instagram.ui.g.a a2 = new com.instagram.ui.g.a(LayoutInflater.from(n()), n().getResources().getDisplayMetrics());
        a2.a(a1.a().b());
        a2.c();
        a2.a(new n(this, a1));
        ak = com.instagram.ui.f.a.a().a(view).a(a2).b().a(n());
        ak.a();
    }

    private void b(String s1)
    {
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        com.instagram.android.feed.comments.b.a.a(n(), z(), s1, d, a1);
        aa.setText("");
        v.a(d, a1.g(), com.instagram.model.b.c.c, true);
        ah();
    }

    static boolean b(c c1, boolean flag)
    {
        c1.af = flag;
        return flag;
    }

    static String c(c c1)
    {
        return c1.c;
    }

    private void c(com.instagram.feed.d.b b1)
    {
        (new com.instagram.ui.dialog.b(n())).b(az.delete_comment_are_you_sure).b(az.delete, new com.instagram.android.directshare.d.l(this, b1)).c(az.cancel, null).c().show();
    }

    static boolean c(c c1, boolean flag)
    {
        c1.ag = flag;
        return flag;
    }

    static void d(c c1)
    {
        c1.ai();
    }

    static void e(c c1)
    {
        c1.X();
    }

    static Handler f(c c1)
    {
        return c1.b;
    }

    private void f(int i1)
    {
        ((MainTabActivity)l().getParent()).a(i1);
    }

    static boolean g(c c1)
    {
        return c1.af;
    }

    static void h(c c1)
    {
        c1.ah();
    }

    static boolean i(c c1)
    {
        return c1.h;
    }

    static void j(c c1)
    {
        c1.aa();
    }

    static void k(c c1)
    {
        c1.ae();
    }

    static void l(c c1)
    {
        c1.Y();
    }

    static void m(c c1)
    {
        c1.ac();
    }

    static void n(c c1)
    {
        c1.ag();
    }

    public final void F()
    {
        super.F();
        if (d != null)
        {
            com.instagram.android.c2dm.c.a().a(c);
            aj();
            aa();
        }
        com.instagram.common.j.g.a().a(com/instagram/android/c2dm/a, an);
        ai = l().getRequestedOrientation();
        l().setRequestedOrientation(-1);
        ae();
        al.a();
    }

    public final void G()
    {
        super.G();
        f.i();
        com.instagram.common.y.f.a(n(), aa);
        l().setRequestedOrientation(ai);
        com.instagram.common.j.g.a().b(com/instagram/android/c2dm/a, an);
        al.b();
    }

    public final void H()
    {
        com.instagram.common.j.g.a().b(com/instagram/feed/d/t, ao);
        android.support.v4.a.e e1 = android.support.v4.a.e.a(n());
        e1.a(ap);
        e1.a(aq);
        b.removeCallbacksAndMessages(null);
        super.H();
    }

    public final boolean V()
    {
        return false;
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_directshare_permalink, viewgroup, false);
    }

    public final void a(Bitmap bitmap, l l1, ac ac1)
    {
        if (bitmap != null && d.g() && ak())
        {
            f.a(l1, ac1, 0, true);
            ac = false;
        }
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        c = j().getString("mediaId");
        ae = j().getBoolean("scroll");
        if (bundle != null)
        {
            ad = bundle.getBoolean("scroll");
        }
        al = new com.instagram.android.feed.e.k(this, this);
        f = new m(this, this);
        f.a(this);
        e = af();
        am = new com.instagram.common.a.a.g(n(), z());
        W();
        an = new com.instagram.android.directshare.d.t(this);
        com.instagram.common.j.g.a().a(com/instagram/feed/d/t, ao);
        android.support.v4.a.e e1 = android.support.v4.a.e.a(n());
        e1.a(ap, new IntentFilter(com.instagram.feed.d.l.a(c)));
        e1.a(ap, new IntentFilter(com.instagram.feed.d.l.b(c)));
        e1.a(aq, new IntentFilter(v.a(c)));
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        ((ObservableLinearLayout)view.findViewById(av.permalink_container)).setOnSizeChangedListener(new com.instagram.android.directshare.d.v(this));
        view.findViewById(av.button_like_container).setVisibility(0);
        g = (ListView)view.findViewById(0x102000a);
        i = (ImageView)view.findViewById(av.button_like);
        aa = (AutoCompleteTextView)view.findViewById(av.layout_comment_thread_edittext);
        ab = (ImageView)view.findViewById(av.layout_comment_thread_button_send);
        com.instagram.common.y.f.d(aa, 0);
        ab();
        com.instagram.common.analytics.a.a().a(aa);
        g.setOnTouchListener(new ab(this, (byte)0));
        g.setAdapter(e);
        g.setOnScrollListener(new w(this));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(true);
        boolean flag;
        if (d == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b1.a(flag, new p(this));
        b1.b(ag);
        if (d != null)
        {
            int i1 = az.directshare_permalink_title;
            Object aobj[] = new Object[1];
            aobj[0] = d.al().a().b();
            b1.a(a(i1, aobj));
            b1.a(i.b, new com.instagram.android.directshare.d.q(this));
        }
    }

    public final void a(com.instagram.feed.d.b b1)
    {
        String as[];
        if (com.instagram.feed.comments.util.a.a(b1))
        {
            as = new String[3];
            as[0] = c(az.delete_comment);
            as[1] = c(az.view_profile);
            as[2] = c(az.copy_text);
        } else
        {
            as = new String[2];
            as[0] = c(az.view_profile);
            as[1] = c(az.copy_text);
        }
        (new com.instagram.ui.dialog.b(n())).a(as, new com.instagram.android.directshare.d.k(this, as, b1)).a(true).d().c().show();
    }

    public final void a(l l1, int i1, ac ac1)
    {
        if (l1.g())
        {
            f.a(i1, l1, ac1);
        }
    }

    public final void a(com.instagram.model.b.a a1, View view)
    {
        com.instagram.model.b.a a2 = aj;
        c();
        if (!a1.equals(a2))
        {
            b(a1, view);
        }
    }

    public final void a(com.instagram.user.c.a a1, String s1)
    {
        com.instagram.o.f.f.a().a(p(), a1.g()).b(s1).a();
    }

    public final boolean a(int i1)
    {
        return ak();
    }

    public final void b(com.instagram.feed.d.b b1)
    {
        com.instagram.ui.dialog.b b2 = new com.instagram.ui.dialog.b(n());
        com.instagram.android.directshare.d.m m1 = new com.instagram.android.directshare.d.m(this, b1);
        b2.b(az.failed).b(az.try_again, m1).c(az.delete, m1).a(true).c().show();
    }

    public final void b(l l1, int i1, ac ac1)
    {
        a(o.a, com.instagram.android.g.g.b);
        b.postDelayed(new j(this, ac1), 100L);
    }

    public final void c()
    {
        if (ak != null)
        {
            ak.b();
            ak = null;
        }
        aj = null;
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        bundle.putBoolean("scroll", ad);
    }

    public final void i_()
    {
        f.d();
    }

    public final String j_()
    {
        return "direct_share_permalink";
    }

    public final void k_()
    {
        super.k_();
        l().getParent().getWindow().setSoftInputMode(18);
        f(8);
    }

    public final void l_()
    {
        super.l_();
        l().getParent().getWindow().setSoftInputMode(48);
        f(0);
    }

    public final void m_()
    {
        com.instagram.common.analytics.a.a().b(aa);
        aa = null;
        i = null;
        g = null;
        ab = null;
        if (ak != null)
        {
            ak.a(b);
        }
        super.m_();
    }

    public final boolean p_()
    {
        return false;
    }

    public final void r_()
    {
        super.r_();
        c();
    }

}
