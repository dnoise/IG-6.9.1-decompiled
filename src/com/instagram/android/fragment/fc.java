// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.ak;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.base.a.i;
import com.instagram.base.a.j;
import com.instagram.base.b.a;
import com.instagram.base.b.b;
import com.instagram.base.b.d;
import com.instagram.m.c;
import com.instagram.ui.viewpager.ScrollingOptionalViewPager;
import com.instagram.ui.widget.searchedittext.SearchEditText;

// Referenced classes of package com.instagram.android.fragment:
//            fd, fk, fj, ff, 
//            fg, fh, fi, fl

public final class fc extends i
    implements a
{

    public static final Integer a = Integer.valueOf(0);
    public static final Integer b = Integer.valueOf(1);
    public static final Integer c = Integer.valueOf(2);
    private b aa;
    private final d ab = new fd(this);
    private fl d;
    private fk e;
    private boolean f;
    private boolean g;
    private int h;
    private View i;

    public fc()
    {
        aa = new b();
    }

    private fj W()
    {
        return (fj)e.b(V());
    }

    static View a(fc fc1)
    {
        return fc1.i;
    }

    static int b(fc fc1)
    {
        return fc1.h;
    }

    static fl c(fc fc1)
    {
        return fc1.d;
    }

    static fj d(fc fc1)
    {
        return fc1.W();
    }

    static b e(fc fc1)
    {
        return fc1.aa;
    }

    static boolean f(fc fc1)
    {
        return fc1.f;
    }

    public final void F()
    {
        super.F();
        b b1 = aa;
        d d1;
        float f1;
        View aview[];
        if (f)
        {
            d1 = ab;
        } else
        {
            d1 = null;
        }
        f1 = h;
        aview = new View[1];
        aview[0] = com.instagram.a.f.a(l()).c();
        b1.a(d1, f1, aview);
    }

    public final void G()
    {
        super.G();
        aa.a();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.fragment_tabbed_explore, viewgroup, false);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        e = new fk(this, q());
        f = Boolean.parseBoolean(c.l.h());
        g = Boolean.parseBoolean(c.m.h());
        h = o().getDimensionPixelSize(at.action_bar_height);
    }

    public final void a(ak ak1)
    {
        aa.a((ListView)ak1.E().findViewById(0x102000a), h);
    }

    protected final void a(View view)
    {
        ScrollingOptionalViewPager scrollingoptionalviewpager = (ScrollingOptionalViewPager)view.findViewById(av.tabbed_explore_pager);
        e.a(scrollingoptionalviewpager);
        scrollingoptionalviewpager.setAdapter(e);
        scrollingoptionalviewpager.setOnPageChangeListener(new ff(this));
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        if (bundle != null && bundle.containsKey("TabbedExploreFragment.EXTRA_CURRENT_MODE"))
        {
            a(bundle.getInt("TabbedExploreFragment.EXTRA_CURRENT_MODE"));
        }
        i = view.findViewById(av.view_switcher_container);
    }

    public final void a(com.instagram.a.b b1)
    {
        fg fg1 = new fg(this);
        b1.a(true, new fh(this));
        if (!g)
        {
            b1.a(az.explore);
            b1.a(com.instagram.a.i.a, fg1);
        } else
        {
            SearchEditText searchedittext = b1.a();
            searchedittext.getCompoundDrawables()[0].mutate().setAlpha(255);
            searchedittext.setHint(az.search);
            searchedittext.clearFocus();
            searchedittext.setFocusable(false);
            searchedittext.setCursorVisible(false);
            searchedittext.setOnClickListener(fg1);
        }
        b1.a(new fi(this));
    }

    protected final void a(fj fj1)
    {
        if (u() && fj1 == W())
        {
            com.instagram.a.f.a(l()).b(fj1.e());
        }
    }

    public final b at()
    {
        return aa;
    }

    public final void au()
    {
        ViewGroup viewgroup = (ViewGroup)E();
        if (viewgroup != null && f)
        {
            viewgroup.findViewById(av.view_switcher_container).setPadding(0, h, 0, 0);
        }
    }

    public final void b(View view)
    {
        d = new fl(this, view);
        d.a();
    }

    protected final int c()
    {
        return a.intValue();
    }

    public final j d()
    {
        return d;
    }

    public final void e(Bundle bundle)
    {
        bundle.putInt("TabbedExploreFragment.EXTRA_CURRENT_MODE", V());
        super.e(bundle);
    }

    public final String j_()
    {
        return "tabbed_explore";
    }

    public final void m_()
    {
        e.a(null);
        if (d != null)
        {
            d.b();
            d = null;
        }
        super.m_();
    }

    public final void s_()
    {
        W().s_();
    }

}
