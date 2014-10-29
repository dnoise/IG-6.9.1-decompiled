// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.login.c.o;
import com.instagram.base.a.b;
import com.instagram.common.ui.widget.imageview.CircularImageView;
import com.instagram.common.y.e;
import com.instagram.user.c.a;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.android.login.fragment:
//            cf, ad, ca, cb, 
//            ce, cc, cd, ch

public final class bz extends b
    implements c
{

    private String a;
    private int b;
    private TextView c;
    private View d;
    private View e;
    private Handler f;
    private a g;
    private final cf h = new cf(this, (byte)0);

    public bz()
    {
        f = new Handler();
    }

    private static void a(View view, a a1)
    {
        if (view == null)
        {
            return;
        } else
        {
            ((TextView)view.findViewById(av.username_textview)).setText(a1.b());
            ((CircularImageView)view.findViewById(av.user_profile_picture)).setUrl(a1.f());
            return;
        }
    }

    static void a(bz bz1)
    {
        bz1.c();
    }

    static a b(bz bz1)
    {
        return bz1.g;
    }

    static cf c(bz bz1)
    {
        return bz1.h;
    }

    private void c()
    {
        com.instagram.p.b.ar.c();
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_SMS_RESET_FLOW", true);
        (new com.instagram.base.a.a.a(p())).a(new ad(), bundle).a();
    }

    static int d(bz bz1)
    {
        return bz1.b;
    }

    private void d()
    {
        b = az.email_sent_short;
        d = E().findViewById(av.email_spinner);
        String s1 = o().getString(az.email_sent);
        Object aobj[] = new Object[1];
        aobj[0] = c(az.instagram_help_center);
        a = com.instagram.common.y.e.a(s1, aobj);
        c = (TextView)E().findViewById(av.fragment_user_password_recovery_button_email_reset);
        e = E().findViewById(av.fragment_user_password_recovery_button_email_reset_container);
    }

    static TextView e(bz bz1)
    {
        return bz1.c;
    }

    static String f(bz bz1)
    {
        return bz1.a;
    }

    static View g(bz bz1)
    {
        return bz1.d;
    }

    static void h(bz bz1)
    {
        bz1.d();
    }

    static View i(bz bz1)
    {
        return bz1.e;
    }

    static Handler j(bz bz1)
    {
        return bz1.f;
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_user_password_recovery, null);
        ((TextView)view.findViewById(av.connect_with_facebook_textview)).getCompoundDrawables()[0].mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(o().getColor(as.grey_2)));
        if (j().getBoolean("can_sms_reset"))
        {
            view.findViewById(av.fragment_user_password_recovery_button_sms_reset_container).setVisibility(0);
        }
        if (j().getBoolean("can_email_reset"))
        {
            view.findViewById(av.fragment_user_password_recovery_button_email_reset_container).setVisibility(0);
        }
        if (j().containsKey("email_lookup"))
        {
            view.findViewById(av.fragment_user_password_recovery_textview_email_alt).setVisibility(0);
            view.findViewById(av.user_profile_picture).setVisibility(8);
            view.findViewById(av.username_textview).setVisibility(8);
            view.findViewById(av.divider_row).setVisibility(8);
            view.findViewById(av.fragment_user_password_recovery_button_email_reset_container).setOnClickListener(new ca(this));
            view.findViewById(av.fragment_user_password_recovery_button_sms_reset_container).setOnClickListener(new cb(this));
        } else
        {
            g = com.instagram.user.c.j.a().a(j().getString("userid"));
            if (g == null)
            {
                Toast.makeText(n(), az.try_again, 0).show();
                p().d();
                return view;
            }
            view.findViewById(av.fragment_user_password_recovery_button_email_reset_container).setOnClickListener(new cc(this));
            view.findViewById(av.fragment_user_password_recovery_button_sms_reset_container).setOnClickListener(new cd(this));
        }
        view.findViewById(av.fragment_user_password_recovery_button_connect_with_facebook).setOnClickListener(new ce(this));
        if (g != null)
        {
            a(view, g);
        }
        return view;
    }

    public final void a(int k, int l, Intent intent)
    {
        if (l == -1)
        {
            com.facebook.b.b b1 = com.instagram.share.b.a.a();
            b1.a(h);
            b1.a(k, l, intent);
        }
        super.a(k, l, intent);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        com.instagram.p.b.ap.c();
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.reset_password);
        b1.a(true);
    }

    public final o b()
    {
        return new o(n(), z(), new ch(this, (byte)0));
    }

    public final String j_()
    {
        return "user_password_recovery";
    }

    public final void k_()
    {
        super.k_();
    }
}
