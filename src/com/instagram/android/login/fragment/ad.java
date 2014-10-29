// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.i.d;
import com.instagram.a.c;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.c.a.w;
import com.instagram.android.e.a;
import com.instagram.android.fragment.ac;
import com.instagram.android.login.c.n;
import com.instagram.base.a.b;
import com.instagram.common.y.e;
import com.instagram.common.y.f;
import com.instagram.ui.widget.refresh.RefreshButton;
import java.util.Locale;

// Referenced classes of package com.instagram.android.login.fragment:
//            cv, al, aj, ae, 
//            af, ag, ah, ai

public final class ad extends b
    implements c, a, cv
{

    private com.instagram.common.r.a a;
    private d b;
    private RefreshButton c;
    private EditText d;
    private TextView e;
    private TextView f;
    private String g;
    private final Handler h = new Handler();

    public ad()
    {
    }

    private void V()
    {
        while (E() == null || c == null || j() == null || !j().getBoolean("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_SMS_RESET_FLOW")) 
        {
            return;
        }
        RefreshButton refreshbutton = c;
        boolean flag;
        if (!com.instagram.common.y.e.c(aa()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        refreshbutton.setEnabled(flag);
    }

    private void W()
    {
        ((MainTabActivity)l().getParent()).a(8);
    }

    private void X()
    {
        if (j() != null && j().getBoolean("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"))
        {
            if (com.instagram.common.y.e.c(aa()))
            {
                Bundle bundle = new Bundle();
                bundle.putString("new_phone_number", "");
                p().b(null);
                (new com.instagram.base.a.a.a(p())).a(new ac(), bundle).a();
                return;
            } else
            {
                (new w(l(), z(), new al(this, (byte)0), Z())).g();
                return;
            }
        } else
        {
            (new n(n(), z(), new aj(this, (byte)0), Z())).g();
            return;
        }
    }

    private String Y()
    {
        String s1 = a.a().toUpperCase(Locale.US);
        if (!com.instagram.common.y.e.c(s1))
        {
            return (new StringBuilder("+")).append(String.valueOf(b.a(s1))).toString();
        } else
        {
            return (new StringBuilder("+")).append(b.a("US")).toString();
        }
    }

    private String Z()
    {
        return PhoneNumberUtils.stripSeparators((new StringBuilder()).append(ab()).append(" ").append(aa()).toString());
    }

    static EditText a(ad ad1)
    {
        return ad1.d;
    }

    static String a(ad ad1, String s1)
    {
        ad1.g = s1;
        return s1;
    }

    private String aa()
    {
        return d.getText().toString();
    }

    private String ab()
    {
        return e.getText().toString();
    }

    static TextView b(ad ad1)
    {
        return ad1.f;
    }

    private void c()
    {
        d.requestFocus();
        ((InputMethodManager)l().getSystemService("input_method")).showSoftInput(d, 1);
    }

    static void c(ad ad1)
    {
        ad1.V();
    }

    static RefreshButton d(ad ad1)
    {
        return ad1.c;
    }

    private void d()
    {
        com.instagram.common.y.f.a(l(), E());
        l().getWindow().setSoftInputMode(3);
    }

    static void e(ad ad1)
    {
        ad1.X();
    }

    static String f(ad ad1)
    {
        return ad1.Z();
    }

    static Handler g(ad ad1)
    {
        return ad1.h;
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_phone_number_entry, viewgroup, false);
        e = (TextView)view.findViewById(av.country_code_picker);
        d = (EditText)view.findViewById(av.phone_number);
        d.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
        f = (TextView)view.findViewById(av.clear_phone_text);
        f.setOnClickListener(new ae(this));
        d.addTextChangedListener(new af(this));
        if (j() != null)
        {
            String s1 = j().getString("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_COUNTRY_CODE");
            String s2;
            if (com.instagram.common.y.e.c(s1))
            {
                s2 = Y();
            } else
            {
                s2 = (new StringBuilder("+")).append(s1).toString();
            }
            a(s2);
            d.setText(j().getString("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_NATIONAL_NUMBER"));
        }
        e.setOnClickListener(new ag(this));
        d.setOnEditorActionListener(new ah(this));
        if (j() != null && j().getBoolean("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"))
        {
            view.findViewById(av.instructions_container).setVisibility(8);
        }
        com.instagram.common.analytics.a.a().a(d);
        return view;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        a = new com.instagram.common.r.a((TelephonyManager)n().getSystemService("phone"));
        b = com.facebook.i.d.a(n());
    }

    public final void a(com.instagram.a.b b1)
    {
        c = b1.c(az.phone_number, new ai(this));
        c.setButtonResource(au.nav_arrow_next);
        V();
    }

    public final void a(String s1)
    {
        e.setText(s1);
    }

    public final void b()
    {
        Bundle bundle = new Bundle();
        p().b(null);
        bundle.putString("new_phone_number", g);
        (new com.instagram.base.a.a.a(p())).a(new ac(), bundle).a();
    }

    public final String j_()
    {
        return "phone_number_entry";
    }

    public final void k_()
    {
        c();
        if (j() != null && j().getBoolean("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"))
        {
            W();
        }
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
