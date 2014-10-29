// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.creation.b.a.b;
import com.instagram.creation.base.ui.FilterPicker;
import com.instagram.creation.base.ui.a;
import com.instagram.creation.video.e.c;
import com.instagram.creation.video.e.e;
import com.instagram.creation.video.l.h;
import com.instagram.creation.video.ui.LivePreviewTextureView;

// Referenced classes of package com.instagram.creation.video.f:
//            aw, be, bc, av, 
//            bd

public final class bb extends com.instagram.creation.video.f.aw
{

    private FilterPicker a;
    private LivePreviewTextureView b;
    private h c;
    private int d;
    private c e[];

    public bb()
    {
    }

    static int a(bb bb1)
    {
        return bb1.d;
    }

    static int a(bb bb1, int i)
    {
        bb1.d = i;
        return i;
    }

    static h b(bb bb1)
    {
        return bb1.c;
    }

    private int c()
    {
        if (e != null)
        {
            return com.instagram.creation.video.e.e.a(e, d);
        } else
        {
            return 0;
        }
    }

    static LivePreviewTextureView c(bb bb1)
    {
        return bb1.b;
    }

    private int d()
    {
        if (a != null)
        {
            return a.getScrollX();
        } else
        {
            return 0;
        }
    }

    static FilterPicker d(bb bb1)
    {
        return bb1.a;
    }

    public final void F()
    {
        super.F();
        c.c();
        c.e();
        a.post(new be(this));
    }

    public final void G()
    {
        c.d();
        super.G();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        int i;
        if (com.instagram.creation.base.ui.a.b(o()))
        {
            i = aw.fragment_video_filter;
        } else
        {
            i = aw.fragment_video_filter_small;
        }
        return layoutinflater.inflate(i, viewgroup, false);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        b = (LivePreviewTextureView)E().findViewById(av.square_texture_view);
        com.instagram.creation.video.ui.a.a a1 = (new com.instagram.creation.video.ui.a.a()).a(view.findViewById(av.play_button)).b(view.findViewById(av.seek_frame_indicator));
        c = new h(n(), a1, false);
        b.setDelegate(c);
        a = (FilterPicker)view.findViewById(av.creation_main_actions);
        e = com.instagram.creation.video.e.e.a(n());
        a.setFilters(e);
        int i = j().getInt("VideoFilterFragment.FILTER_POS", 0);
        a.setSelectedFilterIndex(i);
        d = e[i].b();
        Y().b(d);
        c.a(d);
        a.setFilterListener(new bc(this));
        a(com.instagram.creation.video.f.av.a);
        com.instagram.creation.base.ui.a.a(view);
        ((com.instagram.creation.b.a.e)l()).a(new bd(this));
    }

    public final void b()
    {
        c.k();
    }

    public final void c(Bundle bundle)
    {
        bundle.putInt("VideoFilterFragment.FILTER_POS", c());
        bundle.putInt("VideoFilterFragment.FILTER_SCROLL_X", d());
    }

    public final String j_()
    {
        return "video_filter";
    }

    public final void m_()
    {
        e = null;
        a = null;
        b = null;
        c = null;
        super.m_();
    }
}
