// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.a.e;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.base.a.c;
import com.instagram.base.a.f;
import com.instagram.j.e.a;
import com.instagram.ui.d.b;

// Referenced classes of package com.instagram.j.c:
//            n, t, u, g

public final class s extends c
    implements n
{

    private com.instagram.j.a.a aa;
    private IntentFilter ab;
    private final BroadcastReceiver ac = new t(this);
    private final BroadcastReceiver ad = new u(this);
    private a i;

    public s()
    {
        i = com.instagram.j.e.a.a();
    }

    private com.instagram.j.a.a X()
    {
        if (aa == null)
        {
            aa = new com.instagram.j.a.a(n(), z(), (com.instagram.j.a.a.a)r());
        }
        return aa;
    }

    private void Y()
    {
        X().a(i.h(), i.i(), i.j(), i.k());
    }

    private void Z()
    {
        if (E() != null)
        {
            if (v_().getEmptyView() != null)
            {
                ((ViewGroup)E()).removeView(v_().getEmptyView());
            }
            View view;
            if (com.instagram.j.e.a.a().g())
            {
                view = LayoutInflater.from(n()).inflate(aw.newsfeed_failed, (ViewGroup)E(), false);
            } else
            if (!com.instagram.j.e.a.a().e() && com.instagram.j.e.a.a().d())
            {
                view = LayoutInflater.from(n()).inflate(aw.newsfeed_empty, (ViewGroup)E(), false);
                ((TextView)view.findViewById(av.newsfeed_empty_view_title)).setText(az.newsfeed_you_empty_view_title);
                ((TextView)view.findViewById(av.newsfeed_empty_view_subtitle)).setText(az.newsfeed_you_empty_view_subtitle);
            } else
            {
                view = null;
            }
            if (view != null)
            {
                ((ViewGroup)E()).addView(view);
                v_().setEmptyView(view);
            }
        }
    }

    static com.instagram.j.a.a a(s s1)
    {
        return s1.X();
    }

    static void b(s s1)
    {
        s1.Y();
    }

    static void c(s s1)
    {
        s1.Z();
    }

    public final void F()
    {
        super.F();
        e.a(l()).a(ac, ab);
        e.a(n()).a(new Intent("com.instagram.android.fragment.NewsFeedYouFragment.BROADCAST_YOU_MODE_SEEN"));
    }

    public final void G()
    {
        e.a(l()).a(ac);
        super.G();
    }

    public final void H()
    {
        super.H();
        e.a(l()).a(ad);
    }

    public final boolean V()
    {
        return com.instagram.j.e.a.a().e();
    }

    public final void W()
    {
        if (E() != null)
        {
            f.a(this, v_(), null);
        }
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_listview_with_progress, viewgroup, false);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        ab = new IntentFilter();
        ab.addAction("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED");
        a(((android.widget.ListAdapter) (X())));
        Y();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("NewsfeedYouFragment.UPDATE_NEWSFEED_YOU");
        e.a(l()).a(ad, intentfilter);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        if (!com.instagram.j.e.a.a().d())
        {
            com.instagram.j.e.a.a().b();
            com.instagram.ui.d.b.a(com.instagram.j.e.a.a().e(), E());
            return;
        } else
        {
            Z();
            return;
        }
    }

    public final void d()
    {
        com.instagram.j.e.a.a().b();
        ((g)r()).a(this);
    }

    public final String j_()
    {
        return "newsfeed_you";
    }
}
