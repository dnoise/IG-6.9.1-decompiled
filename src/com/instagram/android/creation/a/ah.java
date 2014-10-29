// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.a.e;
import com.instagram.android.creation.a;
import com.instagram.base.a.b;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.y.d;
import com.instagram.common.y.f;
import com.instagram.ui.viewpager.ScrollingOptionalViewPager;

// Referenced classes of package com.instagram.android.creation.a:
//            am, ao, al, aj, 
//            ak, an, ai

public final class ah extends b
{

    private com.instagram.creation.b.a.b a;
    private ImageView b;
    private boolean c;
    private ao d;
    private int e;
    private an f;
    private h g;
    private am h;
    private int i;

    public ah()
    {
        h = new am(this, (byte)0);
        i = -1;
    }

    static com.instagram.creation.b.a.b a(ah ah1)
    {
        return ah1.a;
    }

    static com.instagram.creation.b.a.b a(ah ah1, com.instagram.creation.b.a.b b1)
    {
        ah1.a = b1;
        return b1;
    }

    private void a(int l)
    {
        boolean flag = true;
        Intent intent = new Intent("MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY");
        boolean flag1;
        if (l == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        intent.putExtra("MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED", flag1);
        if (l != flag)
        {
            flag = false;
        }
        intent.putExtra("MetadataFragment.IS_DIRECT_SHARE_SELECTED", flag);
        com.instagram.common.y.d.b(intent);
        d.b(l);
    }

    private void a(View view)
    {
        d = new ao(this, view);
        d.a();
        d.c();
    }

    static void a(ah ah1, int l)
    {
        ah1.a(l);
    }

    static void a(ah ah1, Bundle bundle)
    {
        ah1.c(bundle);
    }

    static void a(ah ah1, boolean flag)
    {
        ah1.d(flag);
    }

    static int b(ah ah1)
    {
        return ah1.i;
    }

    static int b(ah ah1, int l)
    {
        ah1.e = l;
        return l;
    }

    private void b()
    {
        int l;
        int i1;
        View view;
        View view1;
        if (i == 0)
        {
            l = av.row_caption_followshare;
            i1 = av.row_caption_directshare;
        } else
        {
            l = av.row_caption_directshare;
            i1 = av.row_caption_followshare;
        }
        view = E().findViewById(l);
        view1 = E().findViewById(i1);
        if (view != null && view1 != null)
        {
            com.instagram.android.creation.a.a(view1, com.instagram.android.creation.a.a(view));
            com.instagram.android.creation.a.b(view1);
        }
    }

    private void b(View view)
    {
        ScrollingOptionalViewPager scrollingoptionalviewpager = (ScrollingOptionalViewPager)view.findViewById(av.metadata_pager);
        scrollingoptionalviewpager.setAdapter(f);
        if (com.instagram.common.y.f.d(n()))
        {
            scrollingoptionalviewpager.setScrollingEnabled(false);
        }
        e = 0;
        scrollingoptionalviewpager.setOnPageChangeListener(new al(this, scrollingoptionalviewpager));
    }

    static int c(ah ah1, int l)
    {
        ah1.i = l;
        return l;
    }

    private void c(Bundle bundle)
    {
        View view = E();
        if (view == null)
        {
            return;
        }
        view.findViewById(av.loading_spinner).setVisibility(8);
        view.findViewById(av.super_metadata_content).setVisibility(0);
        a(view);
        b(view);
        View view1 = view.findViewById(av.action_bar_button_back);
        view1.setBackgroundDrawable(new com.instagram.a.d(o(), e.a, 5));
        view1.setOnClickListener(new aj(this));
        b.setVisibility(0);
        b.setOnClickListener(new ak(this));
        boolean flag = j().getBoolean("directShare");
        int l = 0;
        if (flag)
        {
            l = 1;
        }
        if (bundle != null && bundle.containsKey("shareMode"))
        {
            i = bundle.getInt("shareMode");
        }
        if (i != -1)
        {
            l = i;
        }
        ao _tmp = d;
        com.instagram.android.creation.a.ao.a(l);
        a(l);
    }

    static void c(ah ah1)
    {
        ah1.b();
    }

    static int d(ah ah1)
    {
        return ah1.e;
    }

    private void d(boolean flag)
    {
        b.setEnabled(flag);
        Drawable drawable = b.getDrawable().mutate();
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

    static ImageView e(ah ah1)
    {
        return ah1.b;
    }

    static boolean f(ah ah1)
    {
        return ah1.c;
    }

    public final void F()
    {
        super.F();
        l().setRequestedOrientation(-1);
        l().getWindow().setSoftInputMode(32);
    }

    public final void G()
    {
        super.G();
        com.instagram.common.y.f.a(l(), E());
        l().getWindow().setSoftInputMode(0);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_metadata, viewgroup, false);
        b = (ImageView)view.findViewById(av.upload_button);
        b.setVisibility(8);
        View view1 = view.findViewById(av.view_switcher_buttons);
        if (com.instagram.common.y.f.d(n()))
        {
            view1.setVisibility(8);
            view.findViewById(av.metadata_tab_shadow).setVisibility(8);
        }
        return view;
    }

    public final void a(Context context)
    {
        super.a(context);
        g = (new j(l())).a().a("MetadataFragment.INTENT_ACTION_UPDATE_DS_SHARE_ENABLED", h).a();
        g.b();
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        f = new an(this, q());
        l().getWindow().clearFlags(1024);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        ((com.instagram.creation.b.a.e)l()).a(new ai(this, bundle));
    }

    public final void c(boolean flag)
    {
        c = flag;
        if (i == 1)
        {
            d(flag);
        }
    }

    public final void e(Bundle bundle)
    {
        bundle.putInt("shareMode", i);
        super.e(bundle);
    }

    public final String j_()
    {
        return "metadata";
    }

    public final void m_()
    {
        super.m_();
        b = null;
        if (d != null)
        {
            d.b();
            d = null;
        }
    }

    public final void r_()
    {
        super.r_();
        g.c();
    }
}
