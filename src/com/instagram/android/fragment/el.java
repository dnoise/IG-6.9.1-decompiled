// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.aw;
import com.instagram.a.i;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.d.n;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.m.b;
import com.instagram.m.c;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.fragment:
//            fo, em, en

public final class el extends fo
{

    private n af;
    private j ag;
    private h ah;
    private com.instagram.feed.i.a ai;
    private final com.instagram.common.d.a aj = new em(this);
    private boolean ak;

    public el()
    {
    }

    private boolean ax()
    {
        Integer integer = au().p();
        return integer != null && integer.intValue() == 0 && ai == null;
    }

    private void ay()
    {
        ai = new com.instagram.feed.i.a((ViewGroup)E());
        ai.a();
    }

    private void az()
    {
        ai.b();
        ai = null;
    }

    public final void F()
    {
        super.F();
        ag.a("SelfFragment.BROADCAST_SELF_PROFILE_SHOWN");
        if (ax())
        {
            ay();
        }
    }

    public final void H()
    {
        super.H();
        ah.c();
    }

    public final View a(ViewGroup viewgroup)
    {
        return LayoutInflater.from(n()).inflate(aw.load_more_empty_self, viewgroup, false);
    }

    public final void a(int l, int i1, Intent intent)
    {
        super.a(l, i1, intent);
        af.a(l, i1, intent);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        af = new n(this, bundle);
        ((com.instagram.android.feed.a.n)W()).i(((MainTabActivity)l().getParent()).c());
        ag = new j(n());
        ah = ag.a().a("NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU", aj).a();
        ah.b();
        ak = Boolean.parseBoolean(c.n.h());
    }

    public final void a(com.instagram.a.b b1)
    {
        super.a(b1);
        if (ak)
        {
            return;
        } else
        {
            b1.a(i.a, new en(this));
            return;
        }
    }

    protected final void as()
    {
        super.as();
        if (ax() && E() != null)
        {
            ay();
        } else
        if (ai != null && au().p().intValue() > 0)
        {
            az();
            return;
        }
    }

    protected final void at()
    {
        ae = com.instagram.service.a.a.a().b();
    }

    public final void b()
    {
        af.a(n());
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        af.a(bundle);
    }

    public final String j_()
    {
        return "self_profile";
    }

    public final void m_()
    {
        super.m_();
        ai = null;
    }
}
