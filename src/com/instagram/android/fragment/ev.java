// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.a.e;
import com.facebook.az;
import com.instagram.a.b;
import com.instagram.a.f;
import com.instagram.feed.a.h;
import com.instagram.feed.a.i;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import com.instagram.m.a;
import com.instagram.m.c;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            eu, ew, ex

public final class ev extends eu
{

    private String ae;
    private boolean af;
    private String ag;
    private boolean ah;
    private com.instagram.model.a.a ai;
    private IntentFilter aj;
    private boolean ak;
    private final BroadcastReceiver al = new ew(this);

    public ev()
    {
        ae = null;
        af = true;
        ag = null;
        ah = false;
    }

    static String a(ev ev1)
    {
        return ev1.ae;
    }

    public final void F()
    {
        super.F();
        e.a(l()).a(al, aj);
    }

    public final void G()
    {
        super.G();
        e.a(l()).a(al);
        af = false;
    }

    public final void a(Bundle bundle)
    {
        aj = new IntentFilter("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED");
        ah = j().getBoolean("com.instagram.android.fragment.KEY_EXPLORE_ATTRIBUTION_VISIBLE");
        ak = c.b.b();
        super.a(bundle);
        if (bundle != null)
        {
            af = false;
        }
        ag = j().getString("com.instagram.android.fragment.KEY_REFERRER");
        boolean flag = j().getBoolean("com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK");
        ae = j().getString("com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID");
        if (!flag)
        {
            l l1 = com.instagram.feed.d.ad.a().b(ae);
            if (l1 != null)
            {
                ai = l1.w();
                W().a(l1);
                return;
            }
        }
        c(true);
    }

    public final void a(b b1)
    {
        super.a(b1);
        if (ai == com.instagram.model.a.a.a)
        {
            b1.a(az.photo);
        } else
        if (ai == com.instagram.model.a.a.b)
        {
            b1.a(az.video);
            return;
        }
    }

    public final void a(Map map)
    {
        map.put("src", "single");
    }

    public final boolean ad()
    {
        return af;
    }

    public final boolean ao()
    {
        return ah;
    }

    public final boolean ap()
    {
        boolean flag;
        if (j() != null)
        {
            flag = j().getBoolean("com.instagram.android.fragment.ARGUMENTS_IS_FOLLOW_BUTTON_ELIGIBLE_NEXT");
        } else
        {
            flag = super.aq();
        }
        return flag && ak;
    }

    protected final void b(i j, boolean flag)
    {
        super.b(j, flag);
        ai = ((l)j.t().get(0)).w();
        if (l() != null && u())
        {
            f.a(l()).b();
        }
    }

    protected final h d(boolean flag)
    {
        return new ex(this, af(), flag);
    }

    public final String j_()
    {
        if (ag != null)
        {
            return ag;
        } else
        {
            return "feed_single_item";
        }
    }
}
