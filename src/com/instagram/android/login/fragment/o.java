// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.login.c.j;
import com.instagram.base.a.b;
import com.instagram.common.analytics.a;
import com.instagram.common.analytics.d;
import com.instagram.common.y.e;
import com.instagram.common.y.f;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.login.fragment:
//            p, s, u, t

public final class o extends b
    implements c
{

    public final com.instagram.api.j.a a = new p(this);
    public final android.view.View.OnClickListener b = new s(this);
    private final Handler c = new Handler();
    private EditText d;
    private RefreshButton e;

    public o()
    {
    }

    private void V()
    {
        if (e != null)
        {
            RefreshButton refreshbutton = e;
            boolean flag;
            if (!com.instagram.common.y.e.c(W()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            refreshbutton.setEnabled(flag);
        }
    }

    private String W()
    {
        return d.getText().toString();
    }

    static String a(o o1)
    {
        return o1.W();
    }

    static Handler b(o o1)
    {
        return o1.c;
    }

    private void b()
    {
        com.instagram.p.b.an.c();
        (new j(n(), z(), a)).a(W());
    }

    static RefreshButton c(o o1)
    {
        return o1.e;
    }

    private void c()
    {
        d.requestFocus();
        ((InputMethodManager)l().getSystemService("input_method")).showSoftInput(d, 1);
    }

    private void d()
    {
        f.a(l(), E());
        l().getWindow().setSoftInputMode(3);
    }

    static void d(o o1)
    {
        o1.b();
    }

    static void e(o o1)
    {
        o1.V();
    }

    public final void F()
    {
        super.F();
        V();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_lookup, viewgroup, false);
        d = (EditText)view.findViewById(av.fragment_lookup_edittext);
        d.setText(j().getString("com.instagram.android.login.fragment.ARGUMENT_USERNAME"));
        d.addTextChangedListener(new u(this, (byte)0));
        d.setOnEditorActionListener(new t(this));
        com.instagram.common.analytics.a.a().a(d);
        return view;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        com.instagram.p.b.am.c();
    }

    public final void a(com.instagram.a.b b1)
    {
        e = b1.c(az.reset_password, b);
        e.setButtonResource(au.nav_arrow_next);
        V();
    }

    public final void d(Bundle bundle)
    {
        super.a(bundle);
        l().findViewById(av.fragment_lookup_edittext).requestFocus();
    }

    public final String j_()
    {
        return "password_lookup";
    }

    public final void k_()
    {
        c();
        super.k_();
    }

    public final void l_()
    {
        d();
        super.l_();
    }

    public final void m_()
    {
        super.m_();
        com.instagram.common.analytics.a.a().b(d);
        d = null;
    }
}
