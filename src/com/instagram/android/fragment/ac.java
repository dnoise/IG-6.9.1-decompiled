// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.k;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.c.a.aa;
import com.instagram.android.c.a.ab;
import com.instagram.android.login.b.d;
import com.instagram.base.a.b;
import com.instagram.common.y.e;
import com.instagram.service.a.a;
import com.instagram.ui.widget.refresh.RefreshButton;
import com.instagram.user.c.f;

// Referenced classes of package com.instagram.android.fragment:
//            ad, af, ap, al, 
//            an, ak, aj, ao, 
//            ag, ah, ai, ae

public final class ac extends b
    implements c
{

    private com.instagram.android.g.b.c a;
    private View aa;
    private EditText ab;
    private EditText ac;
    private EditText ad;
    private EditText ae;
    private EditText af;
    private TextView ag;
    private Spinner ah;
    private View ai;
    private CompoundButton aj;
    private View ak;
    private final android.view.View.OnFocusChangeListener al = new ad(this);
    private final TextWatcher am = new af(this);
    private boolean b;
    private boolean c;
    private int d;
    private ao e;
    private com.instagram.android.login.c.a f;
    private com.instagram.android.g.a g;
    private RefreshButton h;
    private View i;

    public ac()
    {
    }

    private boolean V()
    {
        return !ag.getText().toString().equals(c(az.add_phone_number));
    }

    private void W()
    {
        a.a(ab.getText().toString());
        a.b(ac.getText().toString());
        a.d(ae.getText().toString());
        a.f(af.getText().toString());
        a.a(com.instagram.android.fragment.ap.b(ah.getSelectedItemPosition()));
        String s;
        f f1;
        if (V())
        {
            a.e(ag.getText().toString());
        } else
        {
            a.e("");
        }
        s = ad.getText().toString().trim();
        if (s.length() > 0 && !s.matches("^https?://.+"))
        {
            s = (new StringBuilder("http://")).append(s).toString();
        }
        a.c(s);
        if (aj.isChecked())
        {
            f1 = f.c;
        } else
        {
            f1 = f.b;
        }
        a.a(f1);
        if (f1 != com.instagram.service.a.a.a().b().s())
        {
            a(f1);
            return;
        } else
        {
            X();
            return;
        }
    }

    private void X()
    {
        (new ab(n(), z(), a, new al(this))).g();
    }

    private void Y()
    {
        f = new com.instagram.android.login.c.a(l(), z(), com.instagram.common.y.e.a.a(), new an(this));
    }

    private void Z()
    {
        if (ac == null)
        {
            return;
        }
        if (ac.getText().length() == 0)
        {
            aa();
            return;
        }
        String s = ac.getText().toString();
        if (s.equals(a.b()))
        {
            ac();
            return;
        }
        if (s.equals(f.e()) && g != null)
        {
            if (g.b())
            {
                ab();
                return;
            } else
            {
                aa();
                com.instagram.android.login.b.d.a(g);
                return;
            }
        } else
        {
            f.a(s);
            return;
        }
    }

    static ao a(ac ac1)
    {
        return ac1.e;
    }

    static com.instagram.android.g.a a(ac ac1, com.instagram.android.g.a a1)
    {
        ac1.g = a1;
        return a1;
    }

    static com.instagram.android.g.b.c a(ac ac1, com.instagram.android.g.b.c c1)
    {
        ac1.a = c1;
        return c1;
    }

    private void a(int i1)
    {
        ((MainTabActivity)l().getParent()).b(i1);
    }

    private void a(f f1)
    {
        com.instagram.ui.dialog.b b1 = new com.instagram.ui.dialog.b(n());
        String s;
        if (f1 == f.c)
        {
            s = ad();
        } else
        {
            s = ae();
        }
        b1.a(s).b(az.yes_im_sure, new ak(this)).c(az.cancel, null).c().show();
    }

    static boolean a(ac ac1, boolean flag)
    {
        ac1.b = flag;
        return flag;
    }

    private void aa()
    {
        ac.setCompoundDrawablesWithIntrinsicBounds(au.profile_glyph_username_red, 0, 0, 0);
    }

    private void ab()
    {
        ac.setCompoundDrawablesWithIntrinsicBounds(au.profile_glyph_username_green, 0, 0, 0);
    }

    private void ac()
    {
        ac.setCompoundDrawablesWithIntrinsicBounds(au.profile_glyph_username, 0, 0, 0);
    }

    private String ad()
    {
        return (new StringBuilder()).append(c(az.toggle_privacy_confirm_turning_on_title)).append("\n\n").append(c(az.toggle_privacy_confirm_turning_on_body)).toString();
    }

    private String ae()
    {
        return (new StringBuilder()).append(c(az.toggle_privacy_confirm_turning_off_title)).append("\n\n").append(c(az.toggle_privacy_confirm_turning_off_body)).toString();
    }

    static void b(ac ac1)
    {
        ac1.Z();
    }

    private boolean b()
    {
        String s = af.getText().toString();
        String s1 = ag.getText().toString();
        if (!com.instagram.common.y.e.b(s) && com.instagram.common.y.e.c(s1))
        {
            af.requestFocus();
            com.instagram.o.e.a(az.please_enter_a_valid_email_address);
            return false;
        } else
        {
            return true;
        }
    }

    static boolean b(ac ac1, boolean flag)
    {
        ac1.c = flag;
        return flag;
    }

    static EditText c(ac ac1)
    {
        return ac1.ac;
    }

    private void c()
    {
        if (b)
        {
            return;
        } else
        {
            (new aa(n(), z(), new aj(this))).g();
            return;
        }
    }

    private void c(boolean flag)
    {
        View view = E().findViewById(av.edit_profile_fields);
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        view.setVisibility(i1);
    }

    static RefreshButton d(ac ac1)
    {
        return ac1.h;
    }

    private void d()
    {
        if (ac.getText().length() != 0)
        {
            return;
        }
        ab.setText(a.a());
        ac.setText(a.b());
        ad.setText(a.c());
        ae.setText(a.d());
        af.setText(a.i());
        ah.setSelection(com.instagram.android.fragment.ap.a(a.j()));
        String s;
        if (j() != null)
        {
            s = j().getString("new_phone_number");
        } else
        {
            s = a.f();
        }
        if (com.instagram.common.y.e.c(s))
        {
            ag.setText(az.add_phone_number);
            return;
        } else
        {
            ag.setText(s);
            return;
        }
    }

    static boolean e(ac ac1)
    {
        return ac1.V();
    }

    static com.instagram.android.g.b.c f(ac ac1)
    {
        return ac1.a;
    }

    static CompoundButton g(ac ac1)
    {
        return ac1.aj;
    }

    static void h(ac ac1)
    {
        ac1.c(true);
    }

    static void i(ac ac1)
    {
        ac1.d();
    }

    static void j(ac ac1)
    {
        ac1.X();
    }

    static void k(ac ac1)
    {
        ac1.ab();
    }

    static void l(ac ac1)
    {
        ac1.aa();
    }

    static View m(ac ac1)
    {
        return ac1.ai;
    }

    static void n(ac ac1)
    {
        ac1.c();
    }

    static boolean o(ac ac1)
    {
        return ac1.b();
    }

    static void p(ac ac1)
    {
        ac1.W();
    }

    public final void F()
    {
        super.F();
        d = l().getRequestedOrientation();
        l().setRequestedOrientation(-1);
        l().getParent().getWindow().setSoftInputMode(16);
        a(8);
        ac.setOnFocusChangeListener(al);
        ac.addTextChangedListener(am);
        if (a == null)
        {
            c(false);
            c();
        }
    }

    public final void G()
    {
        super.G();
        h = null;
        ac.setOnFocusChangeListener(null);
        ac.removeTextChangedListener(am);
        l().setRequestedOrientation(d);
        l().getParent().getWindow().setSoftInputMode(48);
        a(0);
        com.instagram.common.y.f.a(l(), l().getWindow().getDecorView());
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.fragment_edit_profile, viewgroup, false);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        x();
        e = new ao(this);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        ab = (EditText)view.findViewById(av.full_name);
        ac = (EditText)view.findViewById(av.username);
        ad = (EditText)view.findViewById(av.website);
        ae = (EditText)view.findViewById(av.bio);
        af = (EditText)view.findViewById(av.email);
        ag = (TextView)view.findViewById(av.phone);
        ah = (Spinner)view.findViewById(av.gender);
        i = view.findViewById(av.change_password_button);
        aa = view.findViewById(av.change_phone_button);
        ak = view.findViewById(av.privacy_row);
        ai = view.findViewById(av.username_spinner);
        aj = (CompoundButton)view.findViewById(av.privacy_switch);
        com.instagram.common.analytics.d d1 = com.instagram.common.analytics.a.a();
        d1.a(ab);
        d1.a(ac);
        d1.a(ad);
        d1.a(ae);
        d1.a(af);
        ah.setAdapter(new ap(n()));
        EditText edittext = ac;
        InputFilter ainputfilter[] = new InputFilter[2];
        ainputfilter[0] = new com.instagram.ui.c.c(n());
        ainputfilter[1] = new android.text.InputFilter.LengthFilter(30);
        edittext.setFilters(ainputfilter);
        ac.setInputType(144);
        af.addTextChangedListener(new com.instagram.android.f.a(af));
        ad.addTextChangedListener(new com.instagram.android.f.a(ad, com.instagram.android.f.c.a));
        aa.setOnClickListener(new ag(this));
        i.setOnClickListener(new ah(this));
        CompoundButton compoundbutton = aj;
        boolean flag;
        if (com.instagram.service.a.a.a().b().s() == f.c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        compoundbutton.setChecked(flag);
        ak.setOnClickListener(new ai(this));
        if (a != null)
        {
            c(true);
        }
    }

    public final void a(com.instagram.a.b b1)
    {
        h = b1.c(az.edit_profile, new ae(this));
        if (a == null)
        {
            b1.b(b);
            h.setBackgroundDrawable(null);
            h.setButtonResource(au.nav_refresh);
            h.setVisibility(8);
            return;
        } else
        {
            b1.b(c);
            return;
        }
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
        Y();
    }

    public final String j_()
    {
        return "edit_profile";
    }

    public final void m_()
    {
        super.m_();
        e.removeMessages(1);
        com.instagram.common.analytics.d d1 = com.instagram.common.analytics.a.a();
        d1.b(ab);
        d1.b(ac);
        d1.b(ad);
        d1.b(ae);
        d1.b(af);
        ab = null;
        ac = null;
        ad = null;
        ae = null;
        af = null;
        ag = null;
        ah = null;
        i = null;
        ak = null;
        ai = null;
        aj = null;
    }

    public final void onConfigurationChanged(Configuration configuration)
    {
        a(8);
        super.onConfigurationChanged(configuration);
    }
}
