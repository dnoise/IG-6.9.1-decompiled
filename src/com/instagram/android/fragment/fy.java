// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.s;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.d.n;
import com.instagram.l.a.b;
import com.instagram.l.b.a;
import com.instagram.simplewebview.SimpleWebViewActivity;
import com.instagram.ui.dialog.g;
import com.instagram.ui.menu.aa;
import com.instagram.ui.menu.d;
import com.instagram.ui.menu.e;
import com.instagram.ui.menu.f;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            fz, gk, go, gp, 
//            gq, gr, gs, gt, 
//            gu, ga, gb, gc, 
//            gd, ge, gf, gg, 
//            gh, gi, gj, gl, 
//            gm, gn

public class fy extends e
    implements c
{

    private static final Class i = com/instagram/android/fragment/fy;
    private n aa;
    private com.instagram.o.b.a ab;

    public fy()
    {
    }

    private List V()
    {
        b b1 = com.instagram.l.a.b.a();
        a a1 = com.instagram.l.b.a.a();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new f(az.find_friends_menu_label, new fz(this)));
        arraylist.add(new f(az.posts_you_liked, new gk(this)));
        if (com.instagram.o.b.a.a())
        {
            arraylist.add(new f(az.check_for_updates, new go(this)));
        }
        arraylist.add(new d(az.settings));
        arraylist.add(new f(az.linked_accounts, new gp(this)));
        arraylist.add(new f(az.push_notification_settings, new gq(this)));
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            arraylist.add(new f(az.camera, new gr(this)));
        }
        arraylist.add(new f(az.videos, new gs(this)));
        if (b1.f())
        {
            arraylist.add(new aa(az.save_original_photos, a1.x(), new gt(this)));
        }
        arraylist.add(new d(az.support));
        arraylist.add(new f(az.instagram_help_center, new gu(this)));
        arraylist.add(new f(az.report_problem, new ga(this)));
        arraylist.add(new d(az.about));
        if (com.instagram.service.c.a.c())
        {
            arraylist.add(new f(az.about_ads, new gb(this)));
        }
        arraylist.add(new f(az.instagram_blog, new gc(this)));
        arraylist.add(new f(az.privacy_policy, new gd(this)));
        arraylist.add(new f(az.terms_of_service, new ge(this)));
        arraylist.add(new f(az.about_this_version, new gf(this)));
        arraylist.add(new d(az.account));
        arraylist.add(new f(az.clear_search_history, new gg(this)));
        arraylist.add(new f(az.change_profile_picture, new gh(this)));
        arraylist.add(new f(az.log_out, new gi(this)));
        if (!com.instagram.common.s.b.d())
        {
            arraylist.add(new d(az.developer));
            arraylist.add(new f(az.options, new gj(this)));
        }
        return arraylist;
    }

    private void W()
    {
        a(new Intent("android.intent.action.VIEW", Uri.parse(com.instagram.api.h.d.a("http://help.instagram.com/", l()))));
    }

    private void X()
    {
        com.instagram.ui.dialog.b b1 = (new com.instagram.ui.dialog.b(n())).a(az.report_problem);
        CharSequence acharsequence[] = new CharSequence[3];
        acharsequence[0] = c(az.abuse_or_spam);
        acharsequence[1] = c(az.send_feedback);
        acharsequence[2] = c(az.report_problem);
        b1.a(acharsequence, new gl(this)).c().show();
    }

    private void Y()
    {
        (new com.instagram.ui.dialog.b(n())).a(az.are_you_sure).b(az.yes_im_sure, new gm(this)).c(az.cancel, null).c().show();
    }

    private void Z()
    {
        (new com.instagram.ui.dialog.b(l())).a(az.are_you_sure).b(az.log_out, new gn(this)).c(az.cancel, null).c().show();
    }

    static com.instagram.o.b.a a(fy fy1)
    {
        return fy1.ab;
    }

    static void a(fy fy1, String s1, int j)
    {
        fy1.a(s1, j);
    }

    static void a(fy fy1, String s1, String s2)
    {
        fy1.a(s1, s2);
    }

    private void a(String s1, int j)
    {
        a(s1, c(j));
    }

    private void a(String s1, String s2)
    {
        SimpleWebViewActivity.a(n(), com.instagram.api.h.d.a(s1, true), s2);
    }

    static void b(fy fy1)
    {
        fy1.W();
    }

    static void c(fy fy1)
    {
        fy1.X();
    }

    static Class d()
    {
        return i;
    }

    static void d(fy fy1)
    {
        fy1.Y();
    }

    static n e(fy fy1)
    {
        return fy1.aa;
    }

    static void f(fy fy1)
    {
        fy1.Z();
    }

    public final void F()
    {
        super.F();
        a(V());
    }

    public final void G()
    {
        super.G();
        g g1 = (g)p().a("ProgressDialog");
        if (g1 != null)
        {
            g1.b();
        }
    }

    public final void a(int j, int k, Intent intent)
    {
        aa.a(j, k, intent);
        super.a(j, k, intent);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        aa = new n(this, bundle);
        if (com.instagram.o.b.a.a())
        {
            ab = new com.instagram.o.b.a(n());
        }
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.options);
        boolean flag;
        if (p().g() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b1.a(flag);
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        aa.a(bundle);
    }

    public final String j_()
    {
        return "user_options";
    }

}
