// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.support.v4.app.k;
import android.telephony.PhoneNumberUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.c.a.ad;
import com.instagram.android.login.a;
import com.instagram.android.login.c.d;
import com.instagram.base.a.b;
import com.instagram.common.y.e;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.login.fragment:
//            cv, cs, cr, cn, 
//            cj, cm, ck

public final class ci extends b
    implements c
{

    private com.instagram.android.login.c.b a;
    private EditText b;
    private TextView c;
    private CountDownTimer d;
    private String e;
    private RefreshButton f;
    private final Handler g = new Handler();
    private InputMethodManager h;

    public ci()
    {
    }

    private String V()
    {
        return b.getText().toString().replace(" ", "");
    }

    private void W()
    {
        ((cv)k()).b();
    }

    static RefreshButton a(ci ci1)
    {
        return ci1.f;
    }

    private void b()
    {
        Bundle bundle = j();
        if (bundle != null && bundle.getBoolean("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"))
        {
            c();
        } else
        if (j() != null)
        {
            (new ad(l(), z(), new cs(this, (byte)0), j().getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"), V())).g();
            return;
        }
    }

    static void b(ci ci1)
    {
        ci1.b();
    }

    private void c()
    {
        a a1 = new a();
        Bundle bundle = j();
        a1.a = bundle.getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_EMAIL");
        a1.d = bundle.getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER");
        a1.b = bundle.getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_USERNAME");
        a1.c = bundle.getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PASSWORD");
        a1.h = (Bitmap)bundle.getParcelable("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PROFILE_PIC");
        a1.f = bundle.getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_GUID");
        a1.e = bundle.getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_DEVICE_ID");
        a1.g = bundle.getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_NAME");
        a1.i = V();
        a.a(a1);
    }

    static void c(ci ci1)
    {
        ci1.W();
    }

    static Handler d(ci ci1)
    {
        return ci1.g;
    }

    private void d()
    {
        if (E() == null || f == null)
        {
            return;
        }
        if (com.instagram.common.y.e.c(V()) || V().length() < 6)
        {
            f.setEnabled(false);
            return;
        } else
        {
            f.setEnabled(true);
            return;
        }
    }

    static EditText e(ci ci1)
    {
        return ci1.b;
    }

    static void f(ci ci1)
    {
        ci1.d();
    }

    static TextView g(ci ci1)
    {
        return ci1.c;
    }

    public final void F()
    {
        super.F();
        if (d == null)
        {
            d = new cr(this);
            d.start();
        }
    }

    public final void H()
    {
        super.H();
        d.cancel();
        d = null;
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_verify, viewgroup, false);
        c = (TextView)view.findViewById(av.no_code_received);
        b = (EditText)view.findViewById(av.confirmation_code);
        TextView textview = (TextView)view.findViewById(av.confirmation_title);
        int i = az.code_instructions;
        Object aobj[] = new Object[1];
        aobj[0] = e;
        textview.setText(a(i, aobj));
        b.addTextChangedListener(new cn(this, (byte)0));
        b.setOnEditorActionListener(new cj(this));
        return view;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        if (j() != null)
        {
            e = PhoneNumberUtils.formatNumber(j().getString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER")).replace("-", " ");
        }
        h = (InputMethodManager)l().getSystemService("input_method");
    }

    public final void a(com.instagram.a.b b1)
    {
        f = b1.d(az.verify_phone_number, new cm(this));
        d();
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
        b.clearFocus();
        h.showSoftInput(b, 0);
        if (j() != null && j().getBoolean("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"))
        {
            a = new com.instagram.android.login.c.b(l(), z(), d.b, new ck(this, n(), g, p(), l()));
        }
    }

    public final String j_()
    {
        return "verify";
    }

    public final void m_()
    {
        h.hideSoftInputFromWindow(b.getWindowToken(), 0);
        b = null;
        c = null;
        f = null;
        super.m_();
    }
}
