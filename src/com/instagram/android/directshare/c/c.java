// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ax;
import com.facebook.az;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.activity.e;
import com.instagram.base.a.b;
import com.instagram.base.a.f;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.j.g;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.f.a.a.m;
import com.instagram.f.c.a;
import java.io.File;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.c:
//            m, d, t, a, 
//            n, b, x, o, 
//            e, f, h, i, 
//            j, k, l

public final class c extends b
    implements com.instagram.a.c, e, com.instagram.base.a.e
{

    private Handler a;
    private View aa;
    private View ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private com.instagram.common.j.e af;
    private int ag;
    private boolean ah;
    private boolean ai;
    private com.instagram.common.a.a.j aj;
    private com.instagram.android.directshare.c.a b;
    private h c;
    private com.instagram.android.directshare.c.m d;
    private o e;
    private com.instagram.android.activity.c f;
    private com.instagram.android.feed.e.a g;
    private ListView h;
    private LinearLayout i;

    public c()
    {
        d = new com.instagram.android.directshare.c.m(this, (byte)0);
        aj = new d(this);
    }

    private void V()
    {
label0:
        {
            if (ab != null)
            {
                if (!com.instagram.android.directshare.c.t.a().b() || !b.isEmpty())
                {
                    break label0;
                }
                ab.setVisibility(0);
            }
            return;
        }
        ab.setVisibility(8);
    }

    private void W()
    {
        ah = true;
    }

    private boolean X()
    {
        boolean flag = ah;
        ah = false;
        return flag;
    }

    private void Y()
    {
        (new m(n(), z(), new n(this, (byte)0))).g();
    }

    static o a(c c1)
    {
        return c1.e;
    }

    private void a(int i1)
    {
        aa.setVisibility(i1);
        i.setVisibility(i1);
    }

    static void a(c c1, List list)
    {
        c1.a(list);
    }

    private void a(List list)
    {
        if (i != null)
        {
            if (list == null || list.isEmpty())
            {
                a(8);
            } else
            {
                a(0);
                f(list.size());
                for (int i1 = -1 + i.getChildCount(); i1 > 0; i1--)
                {
                    i.removeViewAt(i1);
                }

                int j1 = Math.min(3, list.size());
                LayoutInflater layoutinflater = LayoutInflater.from(n());
                for (int k1 = 0; k1 < j1; k1++)
                {
                    a a1 = (a)list.get(k1);
                    IgImageView igimageview = (IgImageView)layoutinflater.inflate(aw.row_requested_direct_share_avatar, i, false);
                    igimageview.setUrl(a1.a().f());
                    i.addView(igimageview);
                }

                if (list.size() > ag)
                {
                    com.instagram.android.directshare.a.a.b(list.size());
                    ag = list.size();
                    return;
                }
            }
        }
    }

    static void b(c c1)
    {
        c1.d();
    }

    static com.instagram.android.directshare.c.a c(c c1)
    {
        return c1.b;
    }

    private void c(boolean flag)
    {
        a(com.instagram.android.directshare.c.b.b, flag);
    }

    private void d()
    {
        if (com.instagram.android.directshare.c.t.a().b() && E() != null)
        {
            h.setEmptyView(E().findViewById(av.inbox_empty));
        }
    }

    static boolean d(c c1)
    {
        return c1.ac;
    }

    static boolean e(c c1)
    {
        c1.ac = true;
        return true;
    }

    private void f(int i1)
    {
        TextView textview = (TextView)i.findViewById(av.inbox_requests_textview);
        Resources resources = o();
        int j1 = ax.directshare_inbox_pending_request_count;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i1);
        textview.setText(resources.getQuantityString(j1, i1, aobj));
    }

    static boolean f(c c1)
    {
        return c1.ai;
    }

    static boolean g(c c1)
    {
        c1.ai = false;
        return false;
    }

    static ListView h(c c1)
    {
        return c1.h;
    }

    static boolean i(c c1)
    {
        c1.ae = true;
        return true;
    }

    static void j(c c1)
    {
        c1.V();
    }

    static void k(c c1)
    {
        c1.c(true);
    }

    static Handler l(c c1)
    {
        return c1.a;
    }

    static void m(c c1)
    {
        c1.Y();
    }

    static com.instagram.android.activity.c n(c c1)
    {
        return c1.f;
    }

    public final void F()
    {
        super.F();
        g.b();
        com.instagram.l.b.a.a().B();
        boolean flag;
        if (ad || j() == null || !j().containsKey("InboxFragment.ADD_TO_BACKSTACK"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            com.instagram.android.c2dm.c.a().c();
            com.instagram.android.directshare.f.a.a().b();
            Y();
            if (!com.instagram.android.directshare.c.x.b())
            {
                ae = true;
            }
        }
        if (ae)
        {
            c(true);
            ae = false;
        }
        com.instagram.common.j.g.a().a(com/instagram/android/c2dm/a, af);
        if (X())
        {
            s_();
        }
    }

    public final void G()
    {
        super.G();
        g.a();
        ad = true;
        com.instagram.common.j.g.a().b(com/instagram/android/c2dm/a, af);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.fragment_inbox, viewgroup, false);
    }

    public final void a(int i1, int j1)
    {
    }

    public final void a(int i1, int j1, Intent intent)
    {
        f.a(i1, j1, intent);
    }

    final void a(int i1, boolean flag)
    {
        ai = flag;
        t t1 = com.instagram.android.directshare.c.t.a();
        if (i1 == com.instagram.android.directshare.c.b.b)
        {
            t1.i();
            return;
        } else
        {
            t1.j();
            return;
        }
    }

    public final void a(Context context)
    {
        super.a(context);
        c = (new j(l())).a().a("InboxFragment.REFRESH_INBOX", d).a("InboxFragment.UPDATE_INBOX", d).a("InboxFragment.INBOX_SHARE_COUNT_CHANGED", d).a("INTENT_ACTION_PENDING_REQUEST_ACCEPTED", d).a();
        c.b();
    }

    public final void a(Bundle bundle)
    {
        boolean flag = true;
        super.a(bundle);
        a = new Handler();
        e = new o(this);
        com.instagram.android.directshare.c.t.a().h();
        if (bundle != null)
        {
            ac = bundle.getBoolean("InboxFragment.LOGGED_INBOX_OPEN");
        }
        if (!ac && com.instagram.android.directshare.c.t.a().b())
        {
            com.instagram.android.directshare.a.a.a(com.instagram.android.directshare.c.t.a().f());
            ac = flag;
        }
        b = new com.instagram.android.directshare.c.a(n(), e);
        b.registerDataSetObserver(new com.instagram.android.directshare.c.e(this));
        g = new com.instagram.android.feed.e.a(n(), com.instagram.creation.b.d.b.a, b, com.instagram.android.directshare.c.t.a());
        f = new com.instagram.android.activity.c(n(), this);
        f.b(bundle);
        if (bundle == null || !bundle.getBoolean("InboxFragment.IGNORE_ADD_TO_BACKSTACK_ARGUMENT", false))
        {
            flag = false;
        }
        ad = flag;
        af = new com.instagram.android.directshare.c.f(this);
        c(false);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        h = (ListView)view.findViewById(0x102000a);
        h.setAdapter(b);
        h.setOnItemClickListener(new com.instagram.android.directshare.c.h(this));
        h.setOnScrollListener(e);
        aa = view.findViewById(av.inbox_requests_separator);
        i = (LinearLayout)view.findViewById(av.inbox_requests_row);
        i.setOnClickListener(new i(this));
        d();
        com.instagram.android.directshare.c.t.a().a(aj);
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.directshare_inbox);
        b1.a(true, new com.instagram.android.directshare.c.j(this));
        b1.a(new com.instagram.android.directshare.c.k(this));
        b1.a(true);
        b1.b(com.instagram.android.directshare.c.t.a().e());
        ab = b1.a(aw.action_bar_button_new_directshare, new l(this)).findViewById(av.action_bar_inbox_arrow);
        V();
    }

    public final void a(File file)
    {
        com.instagram.creation.base.e.a(this, 10002, file);
    }

    public final void a(File file, int i1, String s)
    {
        com.instagram.creation.photo.c.a.a(this, i1, file, s);
    }

    public final void a_(Intent intent, int i1)
    {
        a(intent, i1);
    }

    final com.instagram.android.directshare.c.a c()
    {
        return b;
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        f.a(bundle);
        bundle.putBoolean("InboxFragment.IGNORE_ADD_TO_BACKSTACK_ARGUMENT", true);
        bundle.putBoolean("InboxFragment.LOGGED_INBOX_OPEN", ac);
    }

    public final void h_()
    {
        if (MainTabActivity.b())
        {
            l().onBackPressed();
            return;
        } else
        {
            W();
            return;
        }
    }

    public final String j_()
    {
        return "direct_share_inbox";
    }

    public final void m_()
    {
        super.m_();
        ab = null;
        h = null;
        i = null;
        aa = null;
        com.instagram.android.directshare.c.t.a().b(aj);
    }

    public final void r_()
    {
        super.r_();
        c.c();
    }

    public final void s_()
    {
        if (E() != null)
        {
            com.instagram.base.a.f.a(this, h, null);
        }
    }
}
