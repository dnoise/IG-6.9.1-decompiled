// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ax;
import com.instagram.a.i;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.feed.a.b.v;
import com.instagram.android.maps.e.d;
import com.instagram.android.maps.e.f;
import com.instagram.base.a.c;
import com.instagram.base.a.e;
import com.instagram.common.j.b;
import com.instagram.common.j.g;
import com.instagram.feed.d.ai;
import com.instagram.feed.d.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.maps.d:
//            b, d, e, f, 
//            g, h, i, j

public final class a extends c
    implements com.instagram.a.c, v, e
{

    private static Integer ac = Integer.valueOf(0x186a0);
    public static final HashMap i = new HashMap();
    protected com.instagram.android.maps.a.a aa;
    Handler ab;
    private List ad;
    private final Set ae = new HashSet();
    private d af;
    private d ag;
    private boolean ah;
    private BroadcastReceiver ai;
    private final com.instagram.common.j.d aj = new com.instagram.android.maps.d.e(this);

    public a()
    {
        af = new com.instagram.android.maps.d.b(this);
        ai = new com.instagram.android.maps.d.d(this);
        ab = new Handler();
    }

    private void V()
    {
        android.support.v4.a.e.a(l()).a(ai);
        if (ah)
        {
            com.instagram.android.maps.e.a.a().a(false);
            return;
        } else
        {
            com.instagram.android.maps.e.a.a().b(af);
            com.instagram.android.maps.e.a.a().c(X());
            l().onBackPressed();
            return;
        }
    }

    private void W()
    {
        this;
        JVM INSTR monitorenter ;
        android.support.v4.a.e.a(l()).a(ai);
        if (com.instagram.android.maps.e.a.a().b())
        {
            android.support.v4.a.e.a(l()).a(ai, new IntentFilter("BROADCAST_PHOTOMAPS_BACK_PRESSED"));
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private List X()
    {
        if (ad == null)
        {
            Object obj = (List)i.get(Integer.valueOf(j().getInt("com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET")));
            if (obj == null)
            {
                obj = new ArrayList();
                p().e();
            }
            ad = ((List) (obj));
        }
        return ad;
    }

    private void a(View view)
    {
        boolean flag = true;
        View view1 = view.findViewById(av.layout_geogrid_bar);
        int l;
        View view2;
        boolean flag1;
        View view3;
        if (com.instagram.android.maps.e.a.a().b())
        {
            l = 0;
        } else
        {
            l = 8;
        }
        view1.setVisibility(l);
        view2 = view.findViewById(av.layout_geogrid_button_select_all);
        if (com.instagram.android.maps.e.a.a().d(ad).size() != ad.size())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        view2.setEnabled(flag1);
        view3 = view.findViewById(av.layout_geogrid_button_unselect_all);
        if (com.instagram.android.maps.e.a.a().d(ad).size() <= 0)
        {
            flag = false;
        }
        view3.setEnabled(flag);
    }

    static void a(a a1)
    {
        a1.W();
    }

    static void a(a a1, View view)
    {
        a1.a(view);
    }

    public static void a(List list, s s1)
    {
        Integer _tmp = ac;
        ac = Integer.valueOf(1 + ac.intValue());
        i.put(ac, list);
        Bundle bundle = new Bundle();
        bundle.putInt("com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET", ac.intValue());
        (new com.instagram.base.a.a.a(s1)).a(new a(), bundle).a();
    }

    static void b(a a1)
    {
        a1.V();
    }

    static Set c(a a1)
    {
        return a1.ae;
    }

    static boolean d(a a1)
    {
        a1.ah = false;
        return false;
    }

    static List e(a a1)
    {
        return a1.X();
    }

    public final void F()
    {
        if (l().getParent() != null && (l().getParent() instanceof MainTabActivity))
        {
            l().getParent().getWindow().setSoftInputMode(16);
            ((MainTabActivity)l().getParent()).a(8);
        }
        W();
        super.F();
    }

    public final void G()
    {
        if (l().getParent() != null && (l().getParent() instanceof MainTabActivity))
        {
            l().getParent().getWindow().setSoftInputMode(48);
            ((MainTabActivity)l().getParent()).a(0);
        }
        android.support.v4.a.e.a(l()).a(ai);
        super.G();
    }

    public final void H()
    {
        i.remove(Integer.valueOf(j().getInt("com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET")));
        com.instagram.android.maps.e.a.a().b(af);
        g.a().b(com/instagram/feed/d/t, aj);
        super.H();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        if (aa.isEmpty())
        {
            ab.post(new com.instagram.android.maps.d.f(this));
            return null;
        } else
        {
            View view = layoutinflater.inflate(aw.layout_geogrid, viewgroup, false);
            view.findViewById(av.layout_geogrid_button_select_all).setOnClickListener(new com.instagram.android.maps.d.g(this));
            view.findViewById(av.layout_geogrid_button_unselect_all).setOnClickListener(new h(this));
            a(view);
            ag = new com.instagram.android.maps.d.i(this, view);
            com.instagram.android.maps.e.a.a().a(ag);
            return view;
        }
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        List list = X();
        g.a().a(com/instagram/feed/d/t, aj);
        com.instagram.android.g.b b1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); ae.add(b1.f()))
        {
            b1 = (com.instagram.android.g.b)iterator.next();
        }

        com.instagram.android.maps.a.a a1 = d();
        a1.a(list);
        a(((android.widget.ListAdapter) (a1)));
        boolean flag;
        if (!com.instagram.android.maps.e.a.a().b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ah = flag;
        com.instagram.android.maps.e.a.a().a(af);
    }

    public final void a(com.instagram.a.b b1)
    {
        boolean flag = true;
        Resources resources = o();
        int l = ax.x_photos;
        int i1 = X().size();
        Object aobj[] = new Object[flag];
        aobj[0] = Integer.valueOf(X().size());
        String s1 = resources.getQuantityString(l, i1, aobj);
        int j1;
        if (com.instagram.android.maps.e.a.a().c().equals(com.instagram.service.a.a.a().b().g()) && com.instagram.android.maps.e.a.a().b())
        {
            j1 = ((flag) ? 1 : 0);
        } else
        {
            j1 = 0;
        }
        if (j1 != 0)
        {
            com.instagram.ui.widget.refresh.RefreshButton refreshbutton = b1.a(s1, new com.instagram.android.maps.c.a(l(), f.a));
            if (com.instagram.android.maps.e.a.a().g() <= 0)
            {
                flag = false;
            }
            refreshbutton.setEnabled(flag);
        } else
        {
            b1.a(s1);
            b1.a(flag);
            String s2 = com.instagram.service.a.a.a().b().g();
            if (com.instagram.android.maps.e.a.a().c().equals(s2) && !com.instagram.android.maps.e.a.a().b())
            {
                b1.a(i.b, new j(this));
                return;
            }
        }
    }

    public final void a(ai ai1, int l)
    {
        com.instagram.base.a.a.a a1 = com.instagram.o.f.f.a().c(p(), ai1.f());
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

    protected final com.instagram.android.maps.a.a d()
    {
        if (aa == null)
        {
            aa = new com.instagram.android.maps.a.a(n(), this);
        }
        return aa;
    }

    public final String j_()
    {
        return "feed_geomedia";
    }

    public final void m_()
    {
        com.instagram.android.maps.e.a.a().b(ag);
        super.m_();
    }

    public final void s_()
    {
    }

}
