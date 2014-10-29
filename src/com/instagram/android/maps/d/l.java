// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.ba;
import com.instagram.android.a.o;
import com.instagram.android.c.a.s;
import com.instagram.android.maps.b.b;
import com.instagram.android.maps.e.d;
import com.instagram.android.maps.e.f;
import com.instagram.base.a.a.a;
import com.instagram.base.a.c;
import com.instagram.base.a.e;

// Referenced classes of package com.instagram.android.maps.d:
//            m, r, p, o, 
//            n

public final class l extends c
    implements com.instagram.a.c, e
{

    private o aa;
    private Handler ab;
    private d ac;
    private boolean ad;
    private boolean ae;
    private boolean af;
    private b i;

    public l()
    {
        i = com.instagram.android.maps.b.b.a();
        ab = new Handler();
        ac = new m(this);
    }

    private void V()
    {
        (new s(l(), z(), new r(this))).a(j().getString("ARGUMENT_USER_ID"));
    }

    private o W()
    {
        if (aa == null)
        {
            aa = new o(l());
        }
        return aa;
    }

    static o a(l l1)
    {
        return l1.W();
    }

    static void a(l l1, boolean flag)
    {
        l1.c(flag);
    }

    public static void a(String s1, android.support.v4.app.s s2)
    {
        Bundle bundle = new Bundle();
        bundle.putString("ARGUMENT_USER_ID", s1);
        l l1 = new l();
        (new a(s2)).a(l1, bundle).a();
    }

    static boolean b(l l1)
    {
        l1.af = false;
        return false;
    }

    static void c(l l1)
    {
        l1.d();
    }

    private void c(boolean flag)
    {
        ad = flag;
        com.instagram.ui.d.b.a(ad, E());
    }

    private void d()
    {
        if (!af && ae)
        {
            ae = false;
            (new com.instagram.ui.dialog.b(l())).a(az.popup_review_confirm_title).b(az.request_error).b(az.try_again, new p(this)).c(az.cancel, new com.instagram.android.maps.d.o(this)).c().show();
        }
    }

    static void d(l l1)
    {
        l1.V();
    }

    static Handler e(l l1)
    {
        return l1.ab;
    }

    static b f(l l1)
    {
        return l1.i;
    }

    static o g(l l1)
    {
        return l1.aa;
    }

    static boolean h(l l1)
    {
        l1.ae = true;
        return true;
    }

    public final void H()
    {
        com.instagram.android.maps.e.a.a().b(ac);
        super.H();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_listview_with_progress, viewgroup, false);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        a(((android.widget.ListAdapter) (W())));
        com.instagram.android.maps.e.a.a().a(ac);
        V();
        af = true;
        (new com.instagram.ui.dialog.b(l(), aw.photo_maps_dialog, ba.IgDialogFull)).b(az.choose_photos, new n(this)).c().show();
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.c(az.photo_map, new com.instagram.android.maps.c.a(l(), f.b));
    }

    public final String j_()
    {
        return "photo_map_review";
    }

    public final void k_()
    {
        com.instagram.ui.d.b.a(ad, E());
        super.k_();
    }

    public final void s_()
    {
    }
}
