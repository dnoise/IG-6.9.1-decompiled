// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Handler;
import android.support.v4.app.k;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.c.b.a;
import com.instagram.android.login.d;
import com.instagram.base.a.b;
import com.instagram.common.a.a.g;
import com.instagram.common.y.f;
import com.instagram.o.e;

// Referenced classes of package com.instagram.android.fragment:
//            w, t, p, q, 
//            r, s, v

public final class o extends b
    implements c
{

    private int a;
    private d aa;
    private final w ab = new w(this, (byte)0);
    private Handler b;
    private EditText c;
    private EditText d;
    private EditText e;
    private View f;
    private View g;
    private boolean h;
    private boolean i;

    public o()
    {
        b = new Handler();
    }

    static w a(o o1)
    {
        return o1.ab;
    }

    private void a(int j)
    {
        ((MainTabActivity)l().getParent()).a(j);
    }

    static boolean a(o o1, boolean flag)
    {
        o1.i = flag;
        return flag;
    }

    private void b()
    {
        if (!aa.a())
        {
            com.instagram.o.e.a(aa.b());
            return;
        } else
        {
            a a1 = new a(c.getText().toString(), d.getText().toString(), e.getText().toString());
            a1.a(new t(this));
            (new g(n(), z())).a(a1);
            return;
        }
    }

    static void b(o o1)
    {
        o1.c();
    }

    static void b(o o1, boolean flag)
    {
        o1.c(flag);
    }

    static View c(o o1)
    {
        return o1.f;
    }

    private void c()
    {
        if (f != null && c != null)
        {
            boolean flag;
            if (aa.c() && !com.instagram.common.y.e.c(c.getText().toString()))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            f.setEnabled(flag);
        }
    }

    private void c(boolean flag)
    {
        c.setEnabled(flag);
        d.setEnabled(flag);
        e.setEnabled(flag);
    }

    static void d(o o1)
    {
        o1.b();
    }

    static Handler e(o o1)
    {
        return o1.b;
    }

    static View f(o o1)
    {
        return o1.g;
    }

    public final void F()
    {
        super.F();
        a = l().getRequestedOrientation();
        l().setRequestedOrientation(-1);
        l().getParent().getWindow().setSoftInputMode(16);
        if (!h)
        {
            c.requestFocus();
            com.instagram.common.y.f.b(n(), c);
            h = true;
        }
    }

    public final void G()
    {
        super.G();
        f = null;
        l().setRequestedOrientation(a);
        l().getParent().getWindow().setSoftInputMode(48);
        com.instagram.common.y.f.a(l(), l().getWindow().getDecorView());
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_change_password, viewgroup, false);
        c = (EditText)view.findViewById(av.current_password);
        d = (EditText)view.findViewById(av.new_password);
        e = (EditText)view.findViewById(av.confirm_new_password);
        c.setTypeface(Typeface.DEFAULT);
        c.setTransformationMethod(new PasswordTransformationMethod());
        d.setTypeface(Typeface.DEFAULT);
        d.setTransformationMethod(new PasswordTransformationMethod());
        e.setTypeface(Typeface.DEFAULT);
        e.setTransformationMethod(new PasswordTransformationMethod());
        g = view.findViewById(av.reset_using_facebook_link);
        g.setOnClickListener(new p(this));
        aa = new d(o(), d, e);
        aa.a(new q(this));
        c.addTextChangedListener(new r(this));
        e.setOnEditorActionListener(new s(this));
        com.instagram.common.analytics.d d1 = com.instagram.common.analytics.a.a();
        d1.a(c);
        d1.a(d);
        d1.a(e);
        return view;
    }

    public final void a(int j, int l, Intent intent)
    {
        if (l == -1)
        {
            com.facebook.b.b b1 = com.instagram.share.b.a.a();
            b1.a(ab);
            b1.a(j, l, intent);
        }
        super.a(j, l, intent);
    }

    public final void a(com.instagram.a.b b1)
    {
        f = b1.c(az.change_password, new v(this));
        b1.b(i);
        c();
    }

    public final String j_()
    {
        return "change_password";
    }

    public final void k_()
    {
        super.k_();
        a(8);
    }

    public final void l_()
    {
        super.l_();
        a(0);
    }

    public final void m_()
    {
        super.m_();
        com.instagram.common.analytics.d d1 = com.instagram.common.analytics.a.a();
        d1.b(c);
        d1.b(d);
        d1.b(e);
        aa.a(null);
        aa = null;
        c = null;
        d = null;
        e = null;
    }
}
