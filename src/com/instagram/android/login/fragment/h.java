// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.method.PasswordTransformationMethod;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.login.c.g;
import com.instagram.base.a.b;
import com.instagram.common.a.a.k;
import com.instagram.common.analytics.d;
import com.instagram.common.y.e;
import com.instagram.common.y.f;
import com.instagram.common.z.a;
import com.instagram.ui.widget.refresh.RefreshButton;
import java.util.Date;

// Referenced classes of package com.instagram.android.login.fragment:
//            n, i, j, k, 
//            l, m

public final class h extends b
    implements c
{

    private k a;
    private TextView b;
    private TextView c;
    private RefreshButton d;
    private View e;

    public h()
    {
    }

    private void V()
    {
        if (d != null)
        {
            RefreshButton refreshbutton = d;
            boolean flag;
            if (!com.instagram.common.y.e.c(d()) && !com.instagram.common.y.e.c(c()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            refreshbutton.setEnabled(flag);
        }
    }

    static RefreshButton a(h h1)
    {
        return h1.d;
    }

    private void b()
    {
        if ((new Date()).getTime() < 0x139b37cbc60L)
        {
            com.instagram.o.e.a(az.wrong_datetime);
            return;
        } else
        {
            String s = c();
            com.instagram.p.b.ag.b().a("log_in_token", s).a();
            String s1 = com.instagram.common.z.a.a(n());
            String s2 = com.instagram.common.z.a.b(n());
            a.a((new g(s, d(), s1, s2)).a(new com.instagram.android.login.a.h(this, s)));
            return;
        }
    }

    static void b(h h1)
    {
        h1.b();
    }

    private String c()
    {
        return b.getText().toString();
    }

    static String c(h h1)
    {
        return h1.c();
    }

    private String d()
    {
        return c.getText().toString();
    }

    static void d(h h1)
    {
        h1.V();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        ViewGroup viewgroup1 = (ViewGroup)layoutinflater.inflate(aw.fragment_login, viewgroup, false);
        b = (EditText)viewgroup1.findViewById(av.username);
        Bundle bundle = j();
        String s = null;
        if (bundle != null)
        {
            s = j().getString("com.instagram.android.login.fragment.ARGUMENT_USERNAME");
        }
        if (s == null && !com.instagram.common.y.e.b(com.instagram.n.a.b()))
        {
            s = com.instagram.n.a.b();
        }
        n n1;
        if (s != null)
        {
            com.instagram.p.b.ad.b().a("log_in_token", s).a();
            b.setText(s);
        } else
        {
            com.instagram.p.b.ad.c();
        }
        c = (EditText)viewgroup1.findViewById(av.password);
        e = viewgroup1.findViewById(av.forgot_password_link);
        c.setTypeface(Typeface.DEFAULT);
        c.setTransformationMethod(new PasswordTransformationMethod());
        n1 = new n(this, (byte)0);
        b.addTextChangedListener(n1);
        c.addTextChangedListener(n1);
        c.setOnEditorActionListener(new i(this));
        com.instagram.common.analytics.a.a().a(b);
        com.instagram.common.analytics.a.a().a(c);
        e.setOnClickListener(new j(this));
        b.setOnFocusChangeListener(new com.instagram.android.login.fragment.k(this));
        c.setOnFocusChangeListener(new l(this));
        return viewgroup1;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        a = new com.instagram.common.a.a.g(n(), z());
    }

    public final void a(com.instagram.a.b b1)
    {
        d = b1.c(az.nux_dayone_log_in, new m(this));
        V();
    }

    public final String j_()
    {
        return "login";
    }

    public final void k_()
    {
        super.k_();
        if (o().getDisplayMetrics().density >= 1.0F)
        {
            TextView textview;
            if (com.instagram.common.y.e.c(b.getText().toString()))
            {
                textview = b;
            } else
            {
                textview = c;
            }
            if (textview.hasFocus())
            {
                textview.clearFocus();
            }
            textview.requestFocus();
            f.b(n(), textview);
        }
    }

    public final void l_()
    {
        super.l_();
        f.a(l(), E());
    }

    public final void m_()
    {
        super.m_();
        com.instagram.common.analytics.a.a().b(b);
        com.instagram.common.analytics.a.a().b(c);
        b = null;
        c = null;
        d = null;
        e = null;
    }
}
