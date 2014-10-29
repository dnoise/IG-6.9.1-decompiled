// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ax;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.a.f;
import com.instagram.a.i;
import com.instagram.android.directshare.c.x;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.j.g;
import com.instagram.f.a.a.m;
import com.instagram.f.c.a;
import com.instagram.user.c.d;
import com.instagram.user.e.a.a.e;

// Referenced classes of package com.instagram.android.directshare.e:
//            o, m, h, j, 
//            a, i, f, n, 
//            c, e, g, k, 
//            l

public final class b extends com.instagram.base.a.b
    implements c, e
{

    private com.instagram.android.directshare.e.a a;
    private Handler b;
    private TextView c;
    private com.instagram.user.follow.h d;
    private com.instagram.common.j.e e;
    private final o f = new o(this, (byte)0);
    private com.instagram.android.directshare.e.m g;
    private h h;

    public b()
    {
        g = new com.instagram.android.directshare.e.m(this, (byte)0);
    }

    private void V()
    {
        String s = c(az.directshare_requested_direct_shares_ignore_all_button);
        CharSequence acharsequence[] = {
            s
        };
        (new com.instagram.ui.dialog.b(n())).a(acharsequence, new com.instagram.android.directshare.e.h(this, s, acharsequence)).a(true).d().c().show();
    }

    private void W()
    {
        (new com.instagram.ui.dialog.b(n())).a(az.directshare_requested_direct_shares_confirm_ignore_all_msg).b(az.directshare_requested_direct_shares_confirm_ignore_all_positive, new com.instagram.android.directshare.e.j(this)).a(true).c(az.cancel, null).c().show();
    }

    private void X()
    {
        (new com.instagram.ui.dialog.b(n())).a(az.error).b(az.request_error).b(az.dismiss, null).a(false).c().show();
    }

    private void Y()
    {
        TextView textview = c;
        Resources resources = o();
        int i1 = ax.directshare_requested_direct_shares_header;
        int j1 = a.getCount();
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(a.getCount());
        textview.setText(resources.getQuantityString(i1, j1, aobj));
    }

    static void a(b b1)
    {
        b1.c();
    }

    private void a(a a1)
    {
        com.instagram.ui.dialog.b b1 = new com.instagram.ui.dialog.b(n());
        int i1 = az.directshare_requested_direct_shares_confirm_ignore_title;
        Object aobj[] = new Object[1];
        aobj[0] = a1.a().b();
        com.instagram.ui.dialog.b b2 = b1.b(a(i1, aobj));
        int j1 = az.directshare_requested_direct_shares_confirm_ignore_msg;
        Object aobj1[] = new Object[1];
        aobj1[0] = a1.a().b();
        b2.a(a(j1, aobj1)).b(az.directshare_requested_direct_shares_confirm_ignore, new com.instagram.android.directshare.e.i(this, a1)).a(true).c(az.cancel, null).c().show();
    }

    static Handler b(b b1)
    {
        return b1.b;
    }

    private void b()
    {
        if (a.getCount() == 0)
        {
            b.postDelayed(new com.instagram.android.directshare.e.f(this), 500L);
        }
    }

    private void c()
    {
        java.util.List list = x.a();
        d();
        a.a(list);
        Y();
        com.instagram.a.f.a(l()).b();
        b();
    }

    static void c(b b1)
    {
        b1.V();
    }

    private void d()
    {
        com.instagram.common.j.g.a().b(com/instagram/user/c/d, f);
        com.instagram.common.j.g.a().a(com/instagram/user/c/d, f);
    }

    static void d(b b1)
    {
        b1.W();
    }

    static com.instagram.android.directshare.e.a e(b b1)
    {
        return b1.a;
    }

    static void f(b b1)
    {
        b1.Y();
    }

    static void g(b b1)
    {
        b1.X();
    }

    public final void F()
    {
        super.F();
        if (x.b())
        {
            (new m(n(), z(), new n(this, (byte)0))).g();
        }
        com.instagram.android.c2dm.c.a().d();
        com.instagram.common.j.g.a().a(com/instagram/android/c2dm/a, e);
    }

    public final void G()
    {
        super.G();
        b.removeCallbacksAndMessages(null);
        com.instagram.common.j.g.a().b(com/instagram/android/c2dm/a, e);
    }

    public final void H()
    {
        super.H();
        com.instagram.common.j.g.a().b(com/instagram/user/c/d, f);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_listview_with_progress, viewgroup, false);
    }

    public final void a(int i1)
    {
        a a1 = (a)a.getItem(i1);
        com.instagram.o.f.f.a().a(p(), a1.a().g()).a();
    }

    public final void a(Context context)
    {
        super.a(context);
        h = (new j(l())).a().a("INTENT_ACTION_PENDING_REQUESTS_UPDATED", g).a();
        h.b();
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        b = new Handler();
        com.instagram.user.follow.h h1;
        if (com.instagram.m.c.d.b())
        {
            h1 = com.instagram.user.follow.h.b;
        } else
        {
            h1 = com.instagram.user.follow.h.a;
        }
        d = h1;
        a = new com.instagram.android.directshare.e.a(n(), this, d);
        e = new com.instagram.android.directshare.e.c(this);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        ListView listview = (ListView)view.findViewById(0x102000a);
        int i1 = o().getDimensionPixelSize(at.row_text_padding);
        listview.setPadding(0, i1, 0, i1);
        listview.setClipToPadding(false);
        View view1 = LayoutInflater.from(n()).inflate(aw.row_requested_direct_share_footer, null);
        c = (TextView)view1.findViewById(av.requested_direct_share_header_text);
        listview.addFooterView(view1);
        listview.setAdapter(a);
        b.post(new com.instagram.android.directshare.e.e(this));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(true);
        b1.a(az.directshare_requested_direct_shares_title);
        if (a.getCount() > 1)
        {
            b1.a(i.b, new com.instagram.android.directshare.e.g(this));
        }
    }

    public final void f(int i1)
    {
        a((a)a.getItem(i1));
    }

    public final void g(int i1)
    {
        a a1 = (a)a.getItem(i1);
        (new com.instagram.f.a.a.c(n(), z(), new k(this, a1, l.b), a1.a().g())).g();
        com.instagram.android.directshare.a.a.a(a1, true);
    }

    public final String j_()
    {
        return "direct_share_requests";
    }

    public final void m_()
    {
        super.m_();
        c = null;
    }

    public final void r_()
    {
        super.r_();
        h.c();
    }
}
