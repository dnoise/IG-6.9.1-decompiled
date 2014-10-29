// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import com.facebook.aq;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ba;
import com.instagram.android.feed.a.b.ab;
import com.instagram.android.feed.a.b.ac;
import com.instagram.android.feed.a.b.x;
import com.instagram.android.feed.e.h;
import com.instagram.android.widget.MediaActionsView;
import com.instagram.android.widget.o;
import com.instagram.base.a.d;
import com.instagram.common.a.a.g;
import com.instagram.common.a.a.k;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import com.instagram.feed.g.a;

// Referenced classes of package com.instagram.android.feed.a.a:
//            m, w, u, v

public class t extends d
    implements ab
{

    private static final Class aa = com/instagram/android/feed/a/a/t;
    private m ab;
    private x ac;
    private k ad;
    private l ae;
    private int af;
    private ac ag;
    private boolean ah;
    private Animation ai;
    private Animation aj;

    public t()
    {
        ah = true;
    }

    private void V()
    {
        if (ae != null)
        {
            ab.h();
            E().startAnimation(aj);
        }
    }

    private void W()
    {
        ai = AnimationUtils.loadAnimation(n(), aq.legacy_video_fade_in);
        ai.setInterpolator(new AccelerateDecelerateInterpolator());
        aj = AnimationUtils.loadAnimation(n(), aq.legacy_video_fade_out);
        aj.setInterpolator(new LinearInterpolator());
        aj.setAnimationListener(new w(this));
    }

    static m a(t t1)
    {
        return t1.ab;
    }

    static void b(t t1)
    {
        t1.V();
    }

    public final void F()
    {
        super.F();
        if (ah && ab != null)
        {
            ab.a(ae, ag, af, false);
            ah = false;
        }
    }

    public final void G()
    {
        super.G();
        if (ab != null)
        {
            ab.i();
        }
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        if (ae == null)
        {
            return null;
        } else
        {
            return layoutinflater.inflate(aw.dialog_video_legacy, viewgroup, false);
        }
    }

    public final void a(Bitmap bitmap, l l1, ac ac1)
    {
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        a(ba.IgDialogLegacyVideo);
        ae = com.instagram.feed.d.ad.a().b(j().getString("LegacyVideoPlayerFragment.MEDIA_ID"));
        if (ae == null)
        {
            a();
            return;
        } else
        {
            ab = new m(this, (a)p().a(av.layout_container_main));
            af = j().getInt("LegacyVideoPlayerFragement.POSITION");
            ac = new x(n(), this);
            ad = new g(n(), z());
            W();
            return;
        }
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        if (view != null)
        {
            view.setOnClickListener(new u(this));
            View view1 = view.findViewById(av.media_group);
            ag = x.a(view1);
            view1.setTag(ag);
            ac.a(ag, ae, af, false, o.c);
            view.findViewById(av.animatable_background).startAnimation(ai);
        }
    }

    public final void a(l l1, int i, ac ac1)
    {
        ab.a(i, l1, ac1);
    }

    public final void b(l l1, int i, ac ac1)
    {
        android.support.v4.app.Fragment fragment = p().a(av.layout_container_main);
        if (l1.ak())
        {
            h.a(n(), ad, l1, com.instagram.feed.d.o.a, com.instagram.android.g.g.b);
        } else
        {
            h.a(n(), z(), l1, i, com.instagram.feed.d.o.a, com.instagram.android.g.g.b, (com.instagram.android.fragment.ab)fragment, (a)fragment);
        }
        ac1.d().a();
    }

    public final Dialog c(Bundle bundle)
    {
        v v1 = new v(this, n(), d());
        v1.getWindow().setLayout(-1, -1);
        return v1;
    }

    public final void i_()
    {
        ab.d();
    }

    public final String j_()
    {
        return "legacy_video_player";
    }

}
