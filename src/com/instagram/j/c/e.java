// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.os.Bundle;
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
import com.instagram.common.a.a.g;
import com.instagram.common.a.a.k;
import com.instagram.j.a.a;
import com.instagram.ui.d.b;

// Referenced classes of package com.instagram.j.c:
//            n, f

public final class e extends c
    implements n
{

    private a aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private k i;

    public e()
    {
    }

    private a X()
    {
        if (aa == null)
        {
            aa = new a(n(), z(), (com.instagram.j.a.a.a)r());
        }
        return aa;
    }

    private void Y()
    {
        i.a((new com.instagram.j.b.a.a()).a(new com.instagram.j.c.f(this, (byte)0)));
    }

    private void Z()
    {
        if (E() != null)
        {
            if (v_().getEmptyView() != null)
            {
                ((ViewGroup)E()).removeView(v_().getEmptyView());
            }
            if (!ab)
            {
                View view;
                if (!ad)
                {
                    view = LayoutInflater.from(n()).inflate(aw.newsfeed_empty, (ViewGroup)E(), false);
                    ((TextView)view.findViewById(av.newsfeed_empty_view_title)).setText(az.newsfeed_following_empty_view_title);
                    ((TextView)view.findViewById(av.newsfeed_empty_view_subtitle)).setText(az.newsfeed_following_empty_view_subtitle);
                } else
                {
                    view = LayoutInflater.from(n()).inflate(aw.newsfeed_failed, (ViewGroup)E(), false);
                }
                ((ViewGroup)E()).addView(view);
                v_().setEmptyView(view);
            }
        }
    }

    static a a(e e1)
    {
        return e1.X();
    }

    static boolean a(e e1, boolean flag)
    {
        e1.ad = flag;
        return flag;
    }

    static void b(e e1)
    {
        e1.Z();
    }

    static boolean b(e e1, boolean flag)
    {
        e1.ab = flag;
        return flag;
    }

    static boolean c(e e1)
    {
        return e1.ac;
    }

    static boolean d(e e1)
    {
        e1.ac = true;
        return true;
    }

    public final boolean V()
    {
        return ab;
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
        i = new g(n(), z());
        a(((android.widget.ListAdapter) (X())));
        Y();
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        Z();
        com.instagram.ui.d.b.a(ab, E());
    }

    public final void d()
    {
        Y();
    }

    public final String j_()
    {
        return "newsfeed_following";
    }
}
