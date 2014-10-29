// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.b;
import com.instagram.base.a.c;
import com.instagram.common.a.a.g;
import com.instagram.o.f.f;
import com.instagram.user.c.h;
import com.instagram.user.e.a.a.e;
import java.util.List;

// Referenced classes of package com.instagram.j.c:
//            b, c, d

public final class a extends c
    implements com.instagram.a.c, e
{

    private g aa;
    private com.instagram.user.follow.h ab;
    private BroadcastReceiver ac;
    private com.instagram.j.a.c i;

    public a()
    {
        ac = new com.instagram.j.c.b(this);
    }

    private void V()
    {
        if (W().isEmpty())
        {
            com.instagram.j.e.a.a().b();
            l().onBackPressed();
        }
    }

    private com.instagram.j.a.c W()
    {
        if (i == null)
        {
            i = new com.instagram.j.a.c(n(), ab, this);
        }
        return i;
    }

    static com.instagram.j.a.c a(a a1)
    {
        return a1.W();
    }

    private void a(int j, int l)
    {
        com.instagram.user.c.a a1 = (com.instagram.user.c.a)W().getItem(j);
        a1.a(Boolean.valueOf(false));
        if (l == h.d || a1.t() == com.instagram.user.c.c.d)
        {
            W().a(a1);
        } else
        {
            W().notifyDataSetChanged();
        }
        a(l, a1);
        V();
    }

    private void a(int j, com.instagram.user.c.a a1)
    {
        (new com.instagram.user.follow.k(n(), z(), j, a1)).g();
    }

    static void a(a a1, List list)
    {
        a1.a(list);
    }

    private void a(List list)
    {
        (new com.instagram.user.follow.a(n(), z(), 1, new com.instagram.j.c.c(this))).a(list);
    }

    private void d()
    {
        aa.a((new com.instagram.user.e.a()).a(new d(this, (byte)0)));
    }

    public final void H()
    {
        super.H();
        android.support.v4.a.e.a(l()).a(ac);
        com.instagram.j.e.a.a().b();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_listview, viewgroup, false);
    }

    public final void a(int j)
    {
        com.instagram.o.f.f.a().a(p(), ((com.instagram.user.c.a)i.getItem(j)).g(), false).a();
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        aa = new g(n(), z());
        android.support.v4.a.e.a(n()).a(ac, new IntentFilter("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"));
        com.instagram.user.follow.h h1;
        if (com.instagram.m.c.d.b())
        {
            h1 = com.instagram.user.follow.h.b;
        } else
        {
            h1 = com.instagram.user.follow.h.a;
        }
        ab = h1;
        a(((android.widget.ListAdapter) (W())));
        d();
    }

    public final void a(b b1)
    {
        b1.a(az.follow_requests_title);
        b1.a(true);
    }

    public final void f(int j)
    {
        a(j, h.d);
    }

    public final void g(int j)
    {
        a(j, h.e);
    }

    public final String j_()
    {
        return "follow_requests";
    }
}
