// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.ar;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.feed.comments.ui.CommentAutoCompleteTextView;
import com.instagram.api.j.j;
import com.instagram.base.a.c;
import com.instagram.common.analytics.d;
import com.instagram.common.y.f;
import com.instagram.feed.a.h;
import com.instagram.feed.comments.a.g;
import com.instagram.feed.comments.a.i;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import com.instagram.feed.d.t;
import com.instagram.o.f.e;
import com.instagram.ui.dialog.b;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            b, k, l, f, 
//            j, d, c, n, 
//            i, o, p, q, 
//            r, m, e, g, 
//            h

public final class a extends c
    implements com.instagram.a.c, g, com.instagram.feed.g.a, com.instagram.ui.widget.loadmore.c
{

    private com.instagram.common.a.a.g aa;
    private l ab;
    private i ac;
    private CommentAutoCompleteTextView ad;
    private ImageView ae;
    private Dialog af;
    private boolean ag;
    private boolean ah;
    private int ai;
    private final com.instagram.common.j.d aj = new com.instagram.android.feed.comments.a.b(this);
    private final DataSetObserver ak = new com.instagram.android.feed.comments.a.k(this);
    private final TextWatcher al = new com.instagram.android.feed.comments.a.l(this);
    private com.instagram.android.feed.e.k am;
    private final Handler i = new Handler();

    public a()
    {
    }

    private boolean W()
    {
        if (ab == null || TextUtils.isEmpty(ad.getText().toString().trim()))
        {
            ae.setEnabled(false);
            ae.getDrawable().mutate().setAlpha(77);
            return false;
        } else
        {
            ae.setEnabled(true);
            ae.getDrawable().mutate().setAlpha(255);
            return true;
        }
    }

    private boolean X()
    {
        return j() != null && j().getBoolean("CommentThreadFragment.SHOW_KEYBOARD");
    }

    private void Y()
    {
        if (ab != null)
        {
            ad.setAdapter(new com.instagram.android.a.a(n(), ab));
        }
    }

    private h Z()
    {
        return new com.instagram.android.feed.comments.a.f(this);
    }

    static l a(a a1)
    {
        return a1.ab;
    }

    static l a(a a1, l l1)
    {
        a1.ab = l1;
        return l1;
    }

    private void a(View view)
    {
        view.requestFocus();
        ((InputMethodManager)l().getSystemService("input_method")).toggleSoftInput(2, 1);
    }

    private void a(EditText edittext)
    {
        com.instagram.common.y.f.a(l(), edittext);
    }

    private void a(TextView textview)
    {
        if (textview.getText().length() > 0)
        {
            a(textview.getText().toString());
            textview.setText("");
            f(0);
        }
    }

    static void a(a a1, View view)
    {
        a1.a(view);
    }

    static void a(a a1, TextView textview)
    {
        a1.a(textview);
    }

    static void a(a a1, com.instagram.feed.d.b b1)
    {
        a1.f(b1);
    }

    static void a(a a1, com.instagram.feed.d.b b1, int i1)
    {
        a1.a(b1, i1);
    }

    static void a(a a1, String s)
    {
        a1.b(s);
    }

    private void a(com.instagram.feed.d.b b1, int i1)
    {
        String as[] = o().getStringArray(ar.comment_report_options);
        (new b(n())).a(c(az.flag_comment_title)).a(as, new com.instagram.android.feed.comments.a.j(this, as, i1, b1)).a(true).c().show();
    }

    private void a(String s)
    {
        if (ab != null)
        {
            com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
            com.instagram.android.feed.comments.b.a.a(s, ab, a1, this);
        }
    }

    static i b(a a1)
    {
        return a1.ac;
    }

    private void b(String s)
    {
        String s1;
label0:
        {
            s1 = "@".concat(s);
            String s2 = ad.getText().toString();
            if (!s2.toLowerCase().contains(s1.toLowerCase()))
            {
                if (!s2.endsWith(" "))
                {
                    break label0;
                }
                ad.append(s1.concat(" "));
            }
            return;
        }
        ad.append(" ".concat(s1).concat(" "));
    }

    static boolean c(a a1)
    {
        return a1.W();
    }

    static void d(a a1)
    {
        a1.Y();
    }

    private void d(com.instagram.feed.d.b b1)
    {
        (new b(n())).a(b1.k()).b(az.learn_more, new com.instagram.android.feed.comments.a.d(this)).c(az.delete, new com.instagram.android.feed.comments.a.c(this, b1)).c().show();
    }

    static CommentAutoCompleteTextView e(a a1)
    {
        return a1.ad;
    }

    private CharSequence[] e(com.instagram.feed.d.b b1)
    {
        ArrayList arraylist = new ArrayList();
        if (com.instagram.feed.comments.util.a.a(b1))
        {
            arraylist.add(c(az.delete_comment));
            if (!b1.g().equals(com.instagram.service.a.a.a().b()))
            {
                arraylist.add(c(az.delete_and_report_comment));
            }
        } else
        {
            arraylist.add(c(az.report_comment));
        }
        arraylist.add(c(az.reply_comment));
        arraylist.add(c(az.view_profile));
        arraylist.add(c(az.copy_text));
        return (CharSequence[])arraylist.toArray(new CharSequence[arraylist.size()]);
    }

    private void f(int i1)
    {
        if (E() != null && v_() != null && v_().getHandler() != null)
        {
            v_().getHandler().postDelayed(new n(this), 0L);
        }
    }

    static void f(a a1)
    {
        a1.f(0);
    }

    private void f(com.instagram.feed.d.b b1)
    {
        (new b(n())).b(az.delete_comment_are_you_sure).b(az.delete, new com.instagram.android.feed.comments.a.i(this, b1)).c(az.cancel, null).c().show();
    }

    static Handler g(a a1)
    {
        return a1.i;
    }

    private void g(int i1)
    {
        ((MainTabActivity)l().getParent()).a(i1);
    }

    public final void F()
    {
        super.F();
        ai = l().getRequestedOrientation();
        l().setRequestedOrientation(-1);
        ac.registerDataSetObserver(ak);
        if (l().getParent() != null && (l().getParent() instanceof MainTabActivity))
        {
            l().getParent().getWindow().setSoftInputMode(16);
            g(8);
        }
        if (X())
        {
            a(ad);
        } else
        {
            l().getWindow().setSoftInputMode(2);
        }
        am.a();
        W();
    }

    public final void G()
    {
        l().setRequestedOrientation(ai);
        ac.unregisterDataSetObserver(ak);
        if (l().getParent() != null && (l().getParent() instanceof MainTabActivity))
        {
            l().getParent().getWindow().setSoftInputMode(48);
            g(0);
        }
        a(ad);
        am.b();
        if (af != null)
        {
            if (af.isShowing())
            {
                af.dismiss();
            }
            af = null;
        }
        super.G();
    }

    public final void H()
    {
        com.instagram.common.j.g.a().b(com/instagram/feed/d/t, aj);
        super.H();
    }

    public final boolean V()
    {
        return ah;
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.layout_comment_thread, viewgroup, false);
        ad = (CommentAutoCompleteTextView)view.findViewById(av.layout_comment_thread_edittext);
        ae = (ImageView)view.findViewById(av.layout_comment_thread_button_send);
        Y();
        ad.setOnEditorActionListener(new o(this));
        ae.setOnClickListener(new p(this));
        com.instagram.common.analytics.a.a().a(ad);
        ad.addTextChangedListener(al);
        ad.setBackButtonListener(new q(this));
        ad.setSimpleChangedLayoutListener(new r(this));
        return view;
    }

    public final View a(ViewGroup viewgroup)
    {
        return null;
    }

    public final void a(Bundle bundle)
    {
        String s = j().getString("CommentThreadFragment.MEDIA_ID");
        ab = com.instagram.feed.d.ad.a().b(s);
        ac = new i(n(), this, this);
        ag = j().getBoolean("CommentThreadFragment.IS_SPONSORED");
        ah = j().getBoolean("CommentThreadFragment.IS_ORGANIC");
        am = new com.instagram.android.feed.e.k(this, this);
        aa = new com.instagram.common.a.a.g(n(), z());
        if (ab == null)
        {
            aa.a(Z().a(new m(this)));
        } else
        {
            ac.a(ab);
        }
        a(((android.widget.ListAdapter) (ac)));
        com.instagram.common.j.g.a().a(com/instagram/feed/d/t, aj);
        super.a(bundle);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        v_().setTranscriptMode(1);
        v_().setStackFromBottom(true);
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.comments);
        b1.a(true);
        b1.a(new com.instagram.android.feed.comments.a.e(this));
    }

    public final void a(com.instagram.feed.d.b b1)
    {
        com.instagram.common.y.f.a(n(), E());
        CharSequence acharsequence[] = e(b1);
        af = (new b(n())).a(acharsequence, new com.instagram.android.feed.comments.a.g(this, acharsequence, b1)).a(true).d().c();
        af.show();
    }

    public final void a(com.instagram.feed.d.b b1, j j1)
    {
        com.instagram.feed.comments.b.a.a(b1);
        com.instagram.g.c.a(l().d(), j1);
    }

    public final void a(com.instagram.user.c.a a1, String s)
    {
        com.instagram.o.f.f.a().a(p(), a1.g()).b(s).a();
        com.instagram.feed.c.g.a(a1, ab, this);
    }

    public final void b(com.instagram.feed.d.b b1)
    {
        if (b1.j())
        {
            c(b1);
            return;
        } else
        {
            b b2 = new b(n());
            com.instagram.android.feed.comments.a.h h1 = new com.instagram.android.feed.comments.a.h(this, b1);
            b2.b(az.comment_failed_to_post).b(az.try_again, h1).c(az.delete, h1).a(true).c().show();
            return;
        }
    }

    public final void c(com.instagram.feed.d.b b1)
    {
        if (l() == null) goto _L2; else goto _L1
_L1:
        if (!b1.j() || b1.k() == null) goto _L4; else goto _L3
_L3:
        d(b1);
_L6:
        return;
_L4:
        if (!"checkpoint_required".equals(b1.k()))
        {
            com.instagram.ui.dialog.a.a(n());
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (b1.j())
        {
            com.instagram.feed.comments.b.a.a(b1);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
    }

    public final boolean d()
    {
        return true;
    }

    public final boolean e()
    {
        return ab != null && ab.M();
    }

    public final boolean f()
    {
        return true;
    }

    public final boolean g()
    {
        return ab != null && ab.n();
    }

    public final View h()
    {
        return null;
    }

    public final boolean i()
    {
        return false;
    }

    public final String j_()
    {
        if (j().getBoolean("CommentThreadFragment.IS_SELF_MEDIA"))
        {
            return "self_comments";
        } else
        {
            return "comments";
        }
    }

    public final void k_()
    {
        super.k_();
    }

    public final void l_()
    {
        super.l_();
    }

    public final void m_()
    {
        super.m_();
        com.instagram.common.analytics.a.a().b(ad);
        ad.removeTextChangedListener(al);
        ad.setOnEditorActionListener(null);
        ad = null;
        ae = null;
    }

    public final void n_()
    {
        (new com.instagram.feed.comments.c.c(n(), z(), com.instagram.common.y.e.a.a())).a(ab);
    }

    public final boolean o_()
    {
        return false;
    }

    public final void onConfigurationChanged(Configuration configuration)
    {
        if (l().getParent() != null && (l().getParent() instanceof MainTabActivity) && ((MainTabActivity)l().getParent()).d() != null)
        {
            g(8);
            super.onConfigurationChanged(configuration);
        }
    }

    public final boolean p_()
    {
        return ag;
    }
}
