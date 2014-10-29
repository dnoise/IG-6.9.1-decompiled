// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.Html;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.DigitsKeyListener;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.i.d;
import com.instagram.a.c;
import com.instagram.android.e.a;
import com.instagram.android.fragment.bi;
import com.instagram.android.fragment.bx;
import com.instagram.android.fragment.fx;
import com.instagram.android.login.c.l;
import com.instagram.android.login.c.p;
import com.instagram.android.login.k;
import com.instagram.android.nux.SignedOutFragmentActivity;
import com.instagram.android.nux.e;
import com.instagram.android.nux.j;
import com.instagram.base.a.b;
import com.instagram.common.a.a.g;
import com.instagram.common.u.b.h;
import com.instagram.common.u.b.i;
import com.instagram.common.y.f;
import com.instagram.ui.widget.spinner.RefreshSpinner;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.android.login.fragment:
//            cv, br, ao, bx, 
//            RegisterParameters, bq, bp, ap, 
//            ar, as, at, au, 
//            av, aw, ay, az, 
//            ba, bd, be, bf, 
//            bg, bh, bu, bl, 
//            bm, bo, bs, bn, 
//            bw, bi, bb, bj

public final class an extends b
    implements c, a, cv, e
{

    private static int a = 2;
    private com.instagram.android.login.fragment.bx aA;
    private com.instagram.android.login.fragment.bx aB;
    private com.instagram.android.login.fragment.bx aC;
    private boolean aD;
    private boolean aE;
    private boolean aF;
    private boolean aG;
    private String aH;
    private boolean aI;
    private String aJ;
    private p aa;
    private com.instagram.android.d.a ab;
    private com.instagram.android.nux.a ac;
    private com.instagram.common.d.h ad;
    private k ae;
    private k af;
    private AutoCompleteTextView ag;
    private EditText ah;
    private EditText ai;
    private EditText aj;
    private TextView ak;
    private TextView al;
    private TextView am;
    private EditText an;
    private EditText ao;
    private ImageView ap;
    private RefreshSpinner aq;
    private View ar;
    private View as;
    private View at;
    private View au;
    private View av;
    private com.instagram.common.r.a aw;
    private d ax;
    private PhoneNumberFormattingTextWatcher ay;
    private com.instagram.android.login.fragment.bx az;
    private final br b = new br(this, (byte)0);
    private final Handler c = new ao(this);
    private com.instagram.quicksand.a d;
    private com.instagram.common.a.a.k e;
    private l f;
    private RegisterParameters g;
    private com.instagram.android.login.c.a h;
    private com.instagram.android.login.c.b i;

    public an()
    {
        az = com.instagram.android.login.fragment.bx.a;
        aA = com.instagram.android.login.fragment.bx.a;
        aB = com.instagram.android.login.fragment.bx.a;
        aC = com.instagram.android.login.fragment.bx.a;
        aD = false;
        aE = false;
        aF = false;
        aG = false;
        aH = null;
        aI = false;
        aJ = null;
    }

    static boolean A(an an1)
    {
        return an1.aD;
    }

    static com.instagram.android.login.fragment.bx B(an an1)
    {
        return an1.aB;
    }

    static void C(an an1)
    {
        an1.ad();
    }

    static com.instagram.quicksand.a D(an an1)
    {
        return an1.d;
    }

    static void E(an an1)
    {
        an1.am();
    }

    static boolean F(an an1)
    {
        return an1.aI;
    }

    static int V()
    {
        int i1 = a;
        a = i1 - 1;
        return i1;
    }

    private boolean W()
    {
        return !aG && g.b().isEmpty();
    }

    private String X()
    {
        String s1 = af();
        int i1 = s1.indexOf('@');
        if (i1 <= 0)
        {
            return null;
        } else
        {
            return s1.substring(0, i1).replaceAll(com.instagram.ui.c.c.a, "");
        }
    }

    private void Y()
    {
        if (TextUtils.isEmpty(ai()))
        {
            String s1 = X();
            if (s1 != null)
            {
                c(s1);
            }
        }
    }

    private void Z()
    {
        a(ao);
        com.instagram.android.login.a a1 = new com.instagram.android.login.a();
        a1.b = ai();
        a1.c = aj();
        a1.h = ab.h();
        a1.f = com.instagram.common.z.a.b(l());
        a1.e = com.instagram.common.z.a.a(l());
        a1.g = ak();
        if (d != null)
        {
            d.a();
            a1.j = d.c();
        }
        if (af != k.c)
        {
            a1.a = af();
            a1.d = al();
            i.a(a1);
            return;
        } else
        {
            a1.a = al();
            a1.d = PhoneNumberUtils.stripSeparators((new StringBuilder()).append(ah()).append(ag()).toString());
            aa.a(a1);
            return;
        }
    }

    static k a(an an1, k k1)
    {
        an1.af = k1;
        return k1;
    }

    static com.instagram.quicksand.a a(an an1, com.instagram.quicksand.a a1)
    {
        an1.d = a1;
        return a1;
    }

    static String a(an an1)
    {
        return an1.ai();
    }

    private void a(View view)
    {
        aI = true;
        if (view.hasFocus())
        {
            view.clearFocus();
        }
        view.requestFocus();
        aI = false;
    }

    private void a(TextView textview, com.instagram.android.login.fragment.bx bx1)
    {
        android.graphics.ColorFilter colorfilter = com.instagram.android.login.fragment.bx.a(bx1, n());
        Drawable adrawable[] = textview.getCompoundDrawables();
        int i1 = adrawable.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            Drawable drawable = adrawable[j1];
            if (drawable != null)
            {
                drawable.mutate().setColorFilter(colorfilter);
            }
        }

    }

    private void a(TextView textview, String s1)
    {
        aI = true;
        textview.setText("");
        textview.setText(s1);
        aI = false;
    }

    static void a(an an1, View view)
    {
        an1.a(view);
    }

    static void a(an an1, com.instagram.android.login.fragment.bx bx1)
    {
        an1.c(bx1);
    }

    static void a(an an1, String s1)
    {
        an1.c(s1);
    }

    private void a(com.instagram.android.login.fragment.bx bx1)
    {
        aC = bx1;
        a(((TextView) (ah)), aC);
    }

    private void a(k k1)
    {
        if (k1 == k.c)
        {
            ag.setVisibility(8);
            am.setVisibility(0);
            av.setVisibility(0);
            f(c(az.use_email_address));
            e(al());
            ao.removeTextChangedListener(ay);
            ao.setInputType(32);
            i(af());
            ao.setHint(az.email);
            ao.setCompoundDrawablesWithIntrinsicBounds(o().getDrawable(au.profile_glyph_email), null, null, null);
            if (TextUtils.isEmpty(ag()))
            {
                a(((View) (ah)));
            }
        } else
        if (k1 == k.b)
        {
            av.setVisibility(8);
            am.setVisibility(0);
            ag.setVisibility(0);
            f(c(az.use_phone_number));
            d(al());
            ao.setInputType(2);
            ao.setKeyListener(DigitsKeyListener.getInstance("0123456789()- "));
            ao.addTextChangedListener(ay);
            i(ag());
            ao.setHint(az.phone);
            ao.setCompoundDrawablesWithIntrinsicBounds(o().getDrawable(au.profile_glyph_phone), null, null, null);
            if (TextUtils.isEmpty(af()))
            {
                a(((View) (ag)));
                return;
            }
        }
    }

    static boolean a(an an1, boolean flag)
    {
        an1.aE = flag;
        return flag;
    }

    private void aa()
    {
        com.instagram.common.analytics.b b1 = com.instagram.p.b.S.b();
        if (af != k.c && az == com.instagram.android.login.fragment.bx.b)
        {
            b1.a("email_error", true);
        }
        if (af == k.c && aC == com.instagram.android.login.fragment.bx.b)
        {
            b1.a("phone_error", true);
        }
        if (aA == com.instagram.android.login.fragment.bx.c)
        {
            b1.a("username_available", true);
        }
        if (aA == com.instagram.android.login.fragment.bx.b)
        {
            b1.a("username_error", true);
        }
        if (aB == com.instagram.android.login.fragment.bx.b)
        {
            b1.a("password_error", true);
        }
        b1.a("method", af.a());
        b1.a();
        if ((new Date()).getTime() < 0x139b37cbc60L)
        {
            com.instagram.o.e.a(az.wrong_datetime);
            return;
        }
        if (aA != com.instagram.android.login.fragment.bx.c && g.b().size() > 1)
        {
            c(true);
            return;
        }
        if (af != k.c)
        {
            String s1 = af();
            if (aG || s1.equals(aH))
            {
                Z();
                return;
            } else
            {
                SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder();
                spannablestringbuilder.append(c(az.you_entered_your_email_as));
                spannablestringbuilder.append("\n");
                spannablestringbuilder.append(com.instagram.common.y.f.a(s1));
                spannablestringbuilder.append("\n\n");
                spannablestringbuilder.append(c(az.is_this_correct));
                (new com.instagram.ui.dialog.b(l())).a(spannablestringbuilder).a(true).b(az.yes, new bq(this)).c(az.no, new bp(this)).c().show();
                return;
            }
        } else
        {
            Z();
            return;
        }
    }

    private void ab()
    {
        if (aF)
        {
            ab.g();
        }
        h = new com.instagram.android.login.c.a(n(), z(), 1, new ap(this));
        if (W())
        {
            Y();
        }
        am.setOnClickListener(new ar(this));
        al.setOnClickListener(new com.instagram.android.login.fragment.as(this));
        ah.setOnFocusChangeListener(new at(this));
        ag.setOnFocusChangeListener(new com.instagram.android.login.fragment.au(this));
        ag.addTextChangedListener(new com.instagram.android.login.fragment.av(this));
        ai.setOnFocusChangeListener(new com.instagram.android.login.fragment.aw(this));
        at.setOnClickListener(new ay(this));
        ai.addTextChangedListener(new com.instagram.android.login.fragment.az(this));
        aj.setOnFocusChangeListener(new ba(this));
        aj.addTextChangedListener(new bd(this));
        ak.setOnClickListener(new be(this));
        an.setOnFocusChangeListener(new bf(this));
        ao.setOnFocusChangeListener(new bg(this));
        ap.setOnClickListener(new bh(this));
    }

    private void ac()
    {
        Account aaccount[] = AccountManager.get(n()).getAccounts();
        ArrayList arraylist = new ArrayList();
        int i1 = aaccount.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            Account account = aaccount[j1];
            if (com.instagram.common.y.e.b(account.name) && !arraylist.contains(account.name))
            {
                arraylist.add(account.name);
            }
        }

        if (arraylist.isEmpty())
        {
            return;
        }
        String as1[] = (String[])arraylist.toArray(new String[arraylist.size()]);
        ArrayAdapter arrayadapter = new ArrayAdapter(l(), aw.row_autocomplete_email, as1);
        if (af != k.c)
        {
            d(as1[0]);
            ag.setAdapter(arrayadapter);
            return;
        } else
        {
            i(as1[0]);
            return;
        }
    }

    private void ad()
    {
        com.instagram.p.b.O.c();
        com.instagram.share.b.a.b();
        ab.g();
        if (!aE)
        {
            ac.b();
        }
    }

    private void ae()
    {
        com.instagram.common.y.f.a(l(), E());
        l().getWindow().setSoftInputMode(3);
    }

    private String af()
    {
        return ag.getText().toString();
    }

    private String ag()
    {
        return ah.getText().toString();
    }

    private String ah()
    {
        return al.getText().toString();
    }

    private String ai()
    {
        return ai.getText().toString();
    }

    private String aj()
    {
        return aj.getText().toString();
    }

    private String ak()
    {
        return an.getText().toString();
    }

    private String al()
    {
        return ao.getText().toString();
    }

    private void am()
    {
        f = new l("signup", com.instagram.common.z.a.a().replaceAll("-", ""));
        f.a(new bu(this, (byte)0));
        e.a(f);
    }

    private void an()
    {
        if (l() instanceof SignedOutFragmentActivity)
        {
            ((SignedOutFragmentActivity)l()).g();
        }
        android.support.v4.app.k k1 = l();
        com.instagram.common.u.b.i.a().a(k1);
        if (com.instagram.share.b.a.d())
        {
            com.instagram.share.b.a.e();
        }
        if (com.instagram.share.f.a.c())
        {
            com.instagram.share.f.a.d();
        }
        if (com.instagram.share.vkontakte.a.d())
        {
            com.instagram.share.vkontakte.a.e();
        }
        com.facebook.b.b b1 = com.instagram.share.b.a.a();
        if (b1.b() && b1.c() != null)
        {
            new fx();
            fx.a(p(), b1.c(), c(az.find_friends_item_facebook_friends), true, false).a();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW", true);
        Object obj;
        if (com.instagram.share.vkontakte.a.a(n()))
        {
            obj = new bx();
        } else
        {
            obj = new bi();
        }
        (new com.instagram.base.a.a.a(p())).a(((android.support.v4.app.Fragment) (obj)), bundle).b().a();
    }

    private String ao()
    {
        String s1 = aw.a().toUpperCase(Locale.US);
        if (!com.instagram.common.y.e.c(s1))
        {
            return (new StringBuilder("+")).append(String.valueOf(ax.a(s1))).toString();
        } else
        {
            return (new StringBuilder("+")).append(ax.a("US")).toString();
        }
    }

    private void ap()
    {
        if (E() == null || ar == null)
        {
            return;
        }
        String s1;
        if (af == k.c)
        {
            s1 = ag();
        } else
        {
            s1 = af();
        }
        if (com.instagram.common.y.e.c(s1) || com.instagram.common.y.e.c(aj()) || aj().length() < 6 || com.instagram.common.y.e.c(ai()))
        {
            ar.setEnabled(false);
            return;
        }
        if (!ar.isEnabled())
        {
            com.instagram.p.b.R.c();
        }
        ar.setEnabled(true);
    }

    static void b(an an1)
    {
        an1.an();
    }

    static void b(an an1, com.instagram.android.login.fragment.bx bx1)
    {
        an1.a(bx1);
    }

    static void b(an an1, k k1)
    {
        an1.a(k1);
    }

    static void b(an an1, String s1)
    {
        an1.d(s1);
    }

    private void b(com.instagram.android.login.fragment.bx bx1)
    {
        az = bx1;
        a(ag, az);
    }

    private void b(j j1)
    {
        e(false);
        if (j1.b() != null && TextUtils.isEmpty(an.getText()))
        {
            h(j1.b());
            com.instagram.p.b.M.c();
        }
    }

    private void b(String s1)
    {
        com.instagram.ui.dialog.b b1 = new com.instagram.ui.dialog.b(l());
        b1.a(az.email_suggestion_title);
        b1.a(s1);
        b1.b(az.yes, new bl(this, s1));
        b1.c(az.no, new bm(this));
        b1.c().show();
    }

    static Handler c(an an1)
    {
        return an1.c;
    }

    static String c(an an1, String s1)
    {
        an1.aJ = s1;
        return s1;
    }

    static void c(an an1, com.instagram.android.login.fragment.bx bx1)
    {
        an1.b(bx1);
    }

    private void c(com.instagram.android.login.fragment.bx bx1)
    {
        boolean flag = true;
        aA = bx1;
        a(ai, aA);
        if (aA != com.instagram.android.login.fragment.bx.b || g.b().size() <= flag)
        {
            flag = false;
        }
        d(flag);
    }

    private void c(String s1)
    {
        if (s1 == null)
        {
            s1 = ai();
        }
        boolean flag = s1.equals(ai());
        if (com.instagram.common.y.e.c(s1))
        {
            if (flag)
            {
                c(com.instagram.android.login.fragment.bx.b);
            }
        } else
        if (!s1.equals(h.e()))
        {
            if (flag)
            {
                com.instagram.p.b.y.b().a("username", s1).a();
            }
            h.a(s1);
            return;
        }
    }

    private void c(boolean flag)
    {
        String as1[] = (String[])g.b().toArray(new String[0]);
        StringBuilder stringbuilder = new StringBuilder();
        int i1 = az.username_taken;
        Object aobj[] = new Object[1];
        aobj[0] = (new StringBuilder("<b>")).append(ai()).append("</b>").toString();
        android.text.Spanned spanned = Html.fromHtml(stringbuilder.append(a(i1, aobj)).append("<br/>").append(c(az.here_are_some_suggestions)).toString());
        (new com.instagram.ui.dialog.b(l())).a(spanned).b().a(as1, new bo(this, flag)).c().show();
    }

    static String d(an an1)
    {
        return an1.al();
    }

    static void d(an an1, com.instagram.android.login.fragment.bx bx1)
    {
        an1.d(bx1);
    }

    static void d(an an1, String s1)
    {
        an1.g(s1);
    }

    private void d(com.instagram.android.login.fragment.bx bx1)
    {
        aB = bx1;
        a(aj, aB);
    }

    private void d(String s1)
    {
        a(ag, s1);
    }

    private void d(boolean flag)
    {
        View view = au;
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

    static String e(an an1)
    {
        return an1.aj();
    }

    static String e(an an1, String s1)
    {
        an1.aH = s1;
        return s1;
    }

    private void e(String s1)
    {
        a(ah, s1);
    }

    private void e(boolean flag)
    {
        Resources resources = o();
        int i1;
        int j1;
        Drawable adrawable[];
        int k1;
        if (flag)
        {
            i1 = as.grey_2;
        } else
        {
            i1 = as.accent_blue_medium;
        }
        j1 = resources.getColor(i1);
        adrawable = ak.getCompoundDrawables();
        k1 = adrawable.length;
        for (int l1 = 0; l1 < k1; l1++)
        {
            Drawable drawable = adrawable[l1];
            if (drawable != null)
            {
                drawable.mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(j1));
            }
        }

        Resources resources1 = o();
        int i2;
        int j2;
        if (flag)
        {
            i2 = as.grey_medium;
        } else
        {
            i2 = as.accent_blue_medium;
        }
        j2 = resources1.getColor(i2);
        ak.setTextColor(j2);
        ak.setEnabled(flag);
    }

    static String f(an an1)
    {
        return an1.ak();
    }

    static void f(an an1, String s1)
    {
        an1.b(s1);
    }

    private void f(String s1)
    {
        a(am, s1);
    }

    static com.instagram.android.d.a g(an an1)
    {
        return an1.ab;
    }

    private void g(String s1)
    {
        a(ai, s1);
    }

    static String h(an an1)
    {
        return an1.ah();
    }

    private void h(String s1)
    {
        a(an, s1);
    }

    static String i(an an1)
    {
        return an1.ag();
    }

    private void i(String s1)
    {
        a(ao, s1);
    }

    static String j(an an1)
    {
        return an1.aJ;
    }

    static String k(an an1)
    {
        return an1.X();
    }

    static void l(an an1)
    {
        an1.Y();
    }

    static RegisterParameters m(an an1)
    {
        return an1.g;
    }

    static void n(an an1)
    {
        an1.ap();
    }

    static void o(an an1)
    {
        an1.aa();
    }

    static AutoCompleteTextView p(an an1)
    {
        return an1.ag;
    }

    static String q(an an1)
    {
        return an1.af();
    }

    static void r(an an1)
    {
        an1.Z();
    }

    static com.instagram.android.login.c.a s(an an1)
    {
        return an1.h;
    }

    static RefreshSpinner t(an an1)
    {
        return an1.aq;
    }

    static boolean u(an an1)
    {
        an1.aD = true;
        return true;
    }

    static k v(an an1)
    {
        return an1.af;
    }

    static d w(an an1)
    {
        return an1.ax;
    }

    static com.instagram.android.login.fragment.bx x(an an1)
    {
        return an1.az;
    }

    static View y(an an1)
    {
        return an1.as;
    }

    static void z(an an1)
    {
        an1.c(false);
    }

    public final void F()
    {
        super.F();
        ad.b();
        if (d != null)
        {
            if (!d.b())
            {
                com.instagram.common.y.c.a.a().execute(d);
                return;
            } else
            {
                am();
                return;
            }
        } else
        {
            am();
            return;
        }
    }

    public final void G()
    {
        super.G();
        ad.c();
        if (d != null)
        {
            d.a();
        }
    }

    public final void H()
    {
        ab.d();
        super.H();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_register, viewgroup, false);
        ag = (AutoCompleteTextView)view.findViewById(av.email);
        ah = (EditText)view.findViewById(av.phone);
        ah.addTextChangedListener(ay);
        am = (TextView)view.findViewById(av.phone_toggle);
        al = (TextView)view.findViewById(av.country_code);
        ai = (EditText)view.findViewById(av.username);
        aj = (EditText)view.findViewById(av.password);
        ak = (TextView)view.findViewById(av.use_my_facebook_info);
        an = (EditText)view.findViewById(av.name);
        ao = (EditText)view.findViewById(av.optional_contact);
        ap = (ImageView)view.findViewById(av.avatar);
        aq = (RefreshSpinner)view.findViewById(av.fragment_sign_up_username_spinner);
        as = view.findViewById(av.username_background);
        at = view.findViewById(av.show_suggested_usernames);
        au = view.findViewById(av.show_suggested_usernames_container);
        av = view.findViewById(av.phone_container);
        aj.setTypeface(Typeface.DEFAULT);
        aj.setTransformationMethod(new PasswordTransformationMethod());
        if (ae != k.a)
        {
            am.setVisibility(0);
            a(af);
        }
        b(az);
        a(aC);
        c(aA);
        d(aB);
        e(true);
        if (com.instagram.share.b.a.a().b())
        {
            aF = true;
            ak.setVisibility(8);
        }
        a(ao());
        bs bs1;
        AutoCompleteTextView autocompletetextview;
        InputFilter ainputfilter[];
        EditText edittext;
        InputFilter ainputfilter1[];
        com.instagram.common.analytics.d d1;
        TextView textview;
        int i1;
        Object aobj[];
        if (g.a() != null)
        {
            com.instagram.p.b.L.c();
            d(g.a());
            aG = true;
            ag.setVisibility(8);
        } else
        {
            ac();
        }
        if (!g.b().isEmpty())
        {
            com.instagram.p.b.K.c();
            g((String)g.b().get(0));
            aD = true;
            c(com.instagram.android.login.fragment.bx.c);
        }
        if (g.c() != null)
        {
            com.instagram.p.b.M.c();
            h(g.c());
        }
        if (g.d() != null && af != k.c)
        {
            i(g.d());
        }
        bs1 = new bs(this, (byte)0);
        ag.addTextChangedListener(bs1);
        if (!aG)
        {
            ag.addTextChangedListener(new bn(this));
        }
        ah.addTextChangedListener(bs1);
        ai.addTextChangedListener(bs1);
        aj.addTextChangedListener(bs1);
        autocompletetextview = ag;
        ainputfilter = new InputFilter[1];
        ainputfilter[0] = new bw((byte)0);
        autocompletetextview.setFilters(ainputfilter);
        edittext = ai;
        ainputfilter1 = new InputFilter[2];
        ainputfilter1[0] = new com.instagram.ui.c.c(n());
        ainputfilter1[1] = new android.text.InputFilter.LengthFilter(30);
        edittext.setFilters(ainputfilter1);
        ai.setInputType(144);
        d1 = com.instagram.common.analytics.a.a();
        d1.a(ag);
        d1.a(ah);
        d1.a(ai);
        d1.a(aj);
        d1.a(an);
        d1.a(ao);
        textview = (TextView)view.findViewById(av.tos_warning);
        textview.setMovementMethod(new LinkMovementMethod());
        i1 = az.tos_warning_with_privacy_policy;
        aobj = new Object[2];
        aobj[0] = Html.fromHtml((new StringBuilder("&lt;a href=&quot;http://instagram.com/about/legal/terms/&quot;&gt;")).append(c(az.terms_of_service)).append("&lt;/a&gt").toString());
        aobj[1] = Html.fromHtml((new StringBuilder("&lt;a href=&quot;http://instagram.com/about/legal/privacy/&quot;&gt;")).append(c(az.privacy_policy)).append("&lt;/a&gt").toString());
        textview.setText(Html.fromHtml(a(i1, aobj)));
        return view;
    }

    public final void a(int i1, int j1, Intent intent)
    {
        com.facebook.b.b b1 = com.instagram.share.b.a.a();
        b1.a(b);
        b1.a(i1, j1, intent);
        ab.a(i1, j1, intent, true);
    }

    public final void a(Bitmap bitmap)
    {
        if (bitmap != null)
        {
            ap.setImageBitmap(bitmap);
        }
    }

    public final void a(Drawable drawable)
    {
        if (drawable != null)
        {
            ap.setImageDrawable(drawable);
        }
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        e = new g(n(), z());
        ab = new com.instagram.android.d.a(this, bundle);
        if (j() != null && j().containsKey("com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS"))
        {
            g = (RegisterParameters)j().getParcelable("com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS");
        } else
        {
            g = new RegisterParameters();
        }
        aw = new com.instagram.common.r.a((TelephonyManager)n().getSystemService("phone"));
        ax = com.facebook.i.d.a(n());
        ay = new PhoneNumberFormattingTextWatcher();
        ae = com.instagram.android.login.k.b();
        af = ae;
        com.instagram.share.f.a.a(false);
        com.instagram.p.b.w.b().a("method", ae.a()).a("qe_synching", com.instagram.m.j.a().b()).a();
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        ab.a();
    }

    public final void a(com.instagram.a.b b1)
    {
        ar = b1.c(az.new_account, new com.instagram.android.login.fragment.bi(this));
        ap();
    }

    public final void a(j j1)
    {
        if (j1 != null)
        {
            b(j1);
        }
    }

    public final void a(String s1)
    {
        al.setPadding(4, 0, 0, 0);
        if (s1.length() > 2)
        {
            al.setPadding(2, 0, 0, 0);
        }
        a(al, s1);
    }

    public final void b()
    {
        an();
    }

    public final void c()
    {
        e(true);
    }

    public final void d()
    {
        com.instagram.p.b.N.c();
        com.facebook.b.b b1 = com.instagram.share.b.a.a();
        if (b1.b())
        {
            ad();
            return;
        } else
        {
            b1.a(this, com.instagram.share.b.g.c, b);
            return;
        }
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
        ac = new com.instagram.android.nux.a(l(), this);
        ab();
        i = new com.instagram.android.login.c.b(l(), z(), com.instagram.android.login.c.d.a, new bb(this, n(), c, p(), l()));
        aa = new p(l(), z(), new bj(this, n(), c, p()));
        ad = com.instagram.g.c.a(l());
    }

    public final void e(Bundle bundle)
    {
        ab.a(bundle);
        super.e(bundle);
    }

    public final String j_()
    {
        return "register";
    }

    public final void k_()
    {
        super.k_();
        if (af == k.c || !TextUtils.isEmpty(af())) goto _L2; else goto _L1
_L1:
        Object obj = ag;
_L4:
        if (obj != null)
        {
            a(((View) (obj)));
            com.instagram.common.y.f.b(n(), ((View) (obj)));
        }
        return;
_L2:
        if (af == k.c && TextUtils.isEmpty(ag()))
        {
            obj = ah;
        } else
        if (TextUtils.isEmpty(ai()))
        {
            boolean flag1 = W();
            obj = null;
            if (!flag1)
            {
                obj = ai;
            }
        } else
        {
            boolean flag = TextUtils.isEmpty(aj());
            obj = null;
            if (flag)
            {
                obj = aj;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void l_()
    {
        ae();
        super.l_();
    }

    public final void m_()
    {
        c.removeCallbacksAndMessages(null);
        ag.setOnFocusChangeListener(null);
        ai.setOnFocusChangeListener(null);
        aj.setOnFocusChangeListener(null);
        an.setOnFocusChangeListener(null);
        ao.setOnFocusChangeListener(null);
        ah.setOnFocusChangeListener(null);
        com.instagram.common.analytics.d d1 = com.instagram.common.analytics.a.a();
        d1.b(ag);
        d1.b(ai);
        d1.b(aj);
        d1.b(an);
        d1.b(ao);
        d1.b(ah);
        ag = null;
        ah = null;
        ai = null;
        aj = null;
        ak = null;
        an = null;
        ao = null;
        ap = null;
        aq = null;
        ar = null;
        as = null;
        at = null;
        au = null;
        av = null;
        al = null;
        if (d != null)
        {
            d.a();
            d = null;
        }
        ac.a();
        super.m_();
    }

}
