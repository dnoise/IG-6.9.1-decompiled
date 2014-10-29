// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.f;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.b.e;
import com.instagram.android.login.fragment.RegisterParameters;
import com.instagram.android.login.fragment.h;
import com.instagram.android.login.fragment.v;
import com.instagram.base.a.a.a;
import com.instagram.base.a.b;
import com.instagram.common.i.c;
import com.instagram.share.b.g;
import com.instagram.strings.StringBridge;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.android.nux:
//            ae, ad, ab, w, 
//            q, r, z, f, 
//            ac, p, t, u, 
//            v, o, s

public final class n extends b
{

    private int a;
    private final e b = new ae(this, (byte)0);
    private final Handler c = new Handler();

    public n()
    {
    }

    private void V()
    {
        (new ad()).a(p().a(), "ProgressDialog");
    }

    private void W()
    {
        f f1 = (f)p().a("ProgressDialog");
        if (f1 != null)
        {
            f1.b();
        }
    }

    private void X()
    {
        if (l() == null)
        {
            return;
        } else
        {
            com.instagram.ui.dialog.b b1 = new com.instagram.ui.dialog.b(l());
            b1.b(az.network_error);
            b1.b(az.ok, new ab(this));
            b1.c().show();
            return;
        }
    }

    private void Y()
    {
        (new a(p())).a(new h()).a();
    }

    private void Z()
    {
        com.instagram.share.b.a.a(false);
        com.instagram.p.b.u.c();
        a(new RegisterParameters());
    }

    private void a(ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(n()).inflate(aw.button_developer_options, viewgroup, false);
        view.setOnClickListener(new w(this));
        viewgroup.addView(view);
    }

    private void a(RegisterParameters registerparameters)
    {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS", registerparameters);
        c.post(new q(this, bundle));
    }

    static void a(n n1)
    {
        n1.Z();
    }

    static void a(n n1, RegisterParameters registerparameters)
    {
        n1.b(registerparameters);
    }

    static void a(n n1, com.instagram.user.c.a a1, String s1)
    {
        n1.a(a1, s1);
    }

    static void a(n n1, String s1)
    {
        n1.b(s1);
    }

    private void a(com.instagram.user.c.a a1, String s1)
    {
        com.instagram.p.b.l.c();
        com.instagram.ui.dialog.b b1 = new com.instagram.ui.dialog.b(l());
        b1.b(az.reset_to_login);
        b1.b(az.reset_password, new r(this, a1, s1));
        b1.c().show();
    }

    private void a(String s1)
    {
        z z1 = new z(this, s1);
        com.instagram.android.nux.f f1 = new com.instagram.android.nux.f(l(), z(), z1, s1);
        com.instagram.p.b.h.c();
        f1.g();
    }

    private static String aa()
    {
        if (com.instagram.share.b.a.a().b())
        {
            return com.instagram.share.b.a.a().c();
        } else
        {
            return null;
        }
    }

    private void b(RegisterParameters registerparameters)
    {
        com.instagram.p.b.s.c();
        a(registerparameters);
    }

    static void b(n n1)
    {
        n1.Y();
    }

    static void b(n n1, com.instagram.user.c.a a1, String s1)
    {
        n1.b(a1, s1);
    }

    static void b(n n1, String s1)
    {
        n1.a(s1);
    }

    private void b(com.instagram.user.c.a a1, String s1)
    {
        com.instagram.p.b.m.c();
        j.a().a(a1);
        Bundle bundle = new Bundle();
        bundle.putString("argument_reset_token", s1);
        bundle.putString("argument_user_id", a1.g());
        (new a(p())).a(new v(), bundle).a();
    }

    private void b(String s1)
    {
        com.instagram.p.b.i.c();
        com.instagram.ui.dialog.b b1 = new com.instagram.ui.dialog.b(l());
        b1.a(a(az.nux_dayone_duplicate_email, new Object[] {
            s1
        }));
        b1.b(az.nux_dayone_log_in, new ac(this));
        b1.c(az.nux_dayone_new_account, new p(this));
        b1.c().show();
    }

    private static boolean b(Context context)
    {
        try
        {
            com.instagram.common.z.a.b(context);
        }
        catch (RuntimeException runtimeexception)
        {
            return true;
        }
        return false;
    }

    static Handler c(n n1)
    {
        return n1.c;
    }

    static String c()
    {
        return aa();
    }

    private void d()
    {
        String s1 = aa();
        if (s1 == null)
        {
            com.instagram.p.b.d.c();
            com.instagram.share.b.a.a().a(this, g.b, b);
            return;
        } else
        {
            a(s1);
            return;
        }
    }

    static void d(n n1)
    {
        n1.X();
    }

    static void e(n n1)
    {
        n1.V();
    }

    static void f(n n1)
    {
        n1.W();
    }

    public final void F()
    {
        super.F();
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            com.instagram.common.y.f.b.b(n());
        }
        com.instagram.m.j.a().a();
        com.instagram.p.b.b.c();
    }

    public final void G()
    {
        super.G();
        W();
        c.removeCallbacksAndMessages(null);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        ViewGroup viewgroup1 = (ViewGroup)layoutinflater.inflate(aw.nux_dayone_landing, viewgroup, false);
        viewgroup1.findViewById(av.nux_dayone_register_facebook).setOnClickListener(new t(this));
        ((Button)viewgroup1.findViewById(av.nux_dayone_register_email)).setOnClickListener(new u(this));
        viewgroup1.findViewById(av.nux_dayone_log_in).setOnClickListener(new com.instagram.android.nux.v(this));
        if (!com.instagram.common.s.b.d())
        {
            a(viewgroup1);
        }
        return viewgroup1;
    }

    public final void a(int l, int i1, Intent intent)
    {
        com.facebook.b.b b1 = com.instagram.share.b.a.a();
        b1.a(b);
        b1.a(l, i1, intent);
    }

    public final void b()
    {
        com.instagram.share.b.a.a(false);
        d();
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
        if (StringBridge.a())
        {
            com.instagram.common.i.c.b("failed_to_load_library_logged_out", "failed_to_load_library_logged_out");
            (new com.instagram.ui.dialog.b(l())).a(false).a(az.incompatible_device).a(a(az.unsupported_device_message, new Object[] {
                "http://bit.ly/igdevices"
            })).b(az.ok, new o(this)).c().show();
        }
        if (b(n()))
        {
            com.instagram.common.i.c.b("failed_to_write_to_fs", "logged out");
            (new com.instagram.ui.dialog.b(l())).a(a(az.read_only_filesystem_message, new Object[] {
                "http://bit.ly/igfilesystem"
            })).b(az.dismiss, new com.instagram.android.nux.s(this)).c().show();
        }
        String s1 = com.instagram.common.y.g.a.a(((ConnectivityManager)n().getSystemService("connectivity")).getActiveNetworkInfo());
        boolean flag = com.instagram.share.b.a.a().a(n());
        com.instagram.p.b.a.b().a("did_log_in", com.instagram.n.a.c()).a("did_facebook_sso", com.instagram.n.a.a()).a("fb4a_installed", flag).a("network_type", s1).a();
    }

    public final String j_()
    {
        return "landing";
    }

    public final void k_()
    {
        a = l().getRequestedOrientation();
        l().setRequestedOrientation(1);
        super.k_();
    }

    public final void l_()
    {
        l().setRequestedOrientation(a);
        super.l_();
    }
}
