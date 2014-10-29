// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.c.a.ac;
import com.instagram.android.directshare.widget.DirectShareRecipientView;
import com.instagram.android.directshare.widget.DirectShareSearchEditText;
import com.instagram.android.directshare.widget.i;
import com.instagram.android.directshare.widget.j;
import com.instagram.base.a.b;
import com.instagram.common.a.a.k;
import com.instagram.common.ui.a.a;
import com.instagram.creation.b.a.e;
import com.instagram.creation.b.a.f;
import com.instagram.creation.b.a.g;
import com.instagram.creation.b.a.h;
import com.instagram.creation.b.d.c;
import java.util.List;

// Referenced classes of package com.instagram.android.creation.a:
//            e, r, s, i, 
//            a, k, l, m, 
//            n, o, p, f, 
//            g, h, j, q

public final class d extends b
    implements j, h
{

    private com.instagram.creation.b.a.b a;
    private com.instagram.android.creation.a.a aa;
    private k ab;
    private i ac;
    private boolean ad;
    private com.instagram.android.directshare.widget.d ae;
    private Runnable af;
    private Dialog ag;
    private final a ah = new a();
    private final Handler ai = new com.instagram.android.creation.a.e(this);
    private com.instagram.android.creation.a aj;
    private boolean ak;
    private com.instagram.common.d.h al;
    private r am;
    private s an;
    private final com.instagram.common.a.a.j ao = new com.instagram.android.creation.a.i(this);
    private HorizontalScrollView b;
    private ViewGroup c;
    private ImageView d;
    private DirectShareSearchEditText e;
    private EditText f;
    private ListView g;
    private View h;
    private View i;

    public d()
    {
        am = new r(this, (byte)0);
        an = new s(this, (byte)0);
    }

    private void X()
    {
        if (!a.N().b())
        {
            ah.a(c.getChildAt(-1 + ae()));
            ad = false;
        }
    }

    private i Y()
    {
        if (ac == null)
        {
            ac = new i(n(), this);
        }
        return ac;
    }

    private void Z()
    {
        if (!a.N().b())
        {
            e.setHint("");
            return;
        } else
        {
            e.setHint(az.directshare_search_edit_text_hint);
            return;
        }
    }

    static com.instagram.creation.b.a.b a(d d1, com.instagram.creation.b.a.b b1)
    {
        d1.a = b1;
        return b1;
    }

    private void a(View view, int i1)
    {
        boolean flag = true;
        if (!Y().a(i1))
        {
            return;
        }
        CheckBox checkbox = (CheckBox)view.findViewById(av.recipient_toggle);
        com.instagram.user.c.a a1 = Y().b(i1);
        f f1 = new f(a1.g(), a1.b(), a1.f());
        if (checkbox.isChecked())
        {
            a.N().b(f1);
            if (checkbox.isChecked())
            {
                flag = false;
            }
            checkbox.setChecked(flag);
            return;
        }
        if (a.N().a() < 15)
        {
            a.N().a(f1);
            if (checkbox.isChecked())
            {
                flag = false;
            }
            checkbox.setChecked(flag);
            return;
        } else
        {
            ag = (new com.instagram.ui.dialog.b(n())).a(az.directshare_max_recipients_reached_title).b(az.directshare_max_recipients_reached_body).b(az.ok, null).c();
            ag.show();
            return;
        }
    }

    static void a(d d1, Intent intent)
    {
        d1.b(intent);
    }

    static void a(d d1, View view)
    {
        d1.b(view);
    }

    static void a(d d1, View view, int i1)
    {
        d1.a(view, i1);
    }

    static void a(d d1, CharSequence charsequence)
    {
        d1.a(charsequence);
    }

    private void a(CharSequence charsequence)
    {
        h.findViewById(av.row_search_for_x_container).setVisibility(0);
        ((TextView)h.findViewById(av.row_search_for_x_textview)).setText(n().getString(az.search_for_x, new Object[] {
            charsequence
        }));
    }

    static boolean a(d d1)
    {
        return d1.ad;
    }

    static boolean a(d d1, boolean flag)
    {
        d1.ad = flag;
        return flag;
    }

    private void aa()
    {
        if (!a.N().b() && !e.hasFocus() && e.getText().length() == 0)
        {
            ac();
            return;
        } else
        {
            ab();
            return;
        }
    }

    private void ab()
    {
        d.setVisibility(8);
        e.setVisibility(0);
    }

    private void ac()
    {
        d.setVisibility(0);
        e.setVisibility(8);
    }

    private void ad()
    {
        Y().b(W());
        Y().notifyDataSetChanged();
    }

    private int ae()
    {
        return -2 + c.getChildCount();
    }

    private void af()
    {
        h.findViewById(av.row_search_for_x_container).setVisibility(8);
    }

    private void b(Intent intent)
    {
        ak = intent.getBooleanExtra("MetadataFragment.IS_DIRECT_SHARE_SELECTED", false);
    }

    private void b(View view)
    {
        com.instagram.common.y.f.b(l(), view);
    }

    static void b(d d1)
    {
        d1.X();
    }

    static void c(d d1)
    {
        d1.aa();
    }

    private static void c(boolean flag)
    {
        Intent intent = new Intent("MetadataFragment.INTENT_ACTION_UPDATE_DS_SHARE_ENABLED");
        intent.putExtra("MetadataFragment.IS_DS_SHARE_ENABLED", flag);
        com.instagram.common.y.d.b(intent);
    }

    static EditText d(d d1)
    {
        return d1.f;
    }

    static void e(d d1)
    {
        d1.af();
    }

    static i f(d d1)
    {
        return d1.Y();
    }

    static View g(d d1)
    {
        return d1.i;
    }

    static void h(d d1)
    {
        d1.ad();
    }

    static com.instagram.creation.b.a.b i(d d1)
    {
        return d1.a;
    }

    static boolean j(d d1)
    {
        d1.ak = true;
        return true;
    }

    static void k(d d1)
    {
        d1.ab();
    }

    static DirectShareSearchEditText l(d d1)
    {
        return d1.e;
    }

    static ListView m(d d1)
    {
        return d1.g;
    }

    static Handler n(d d1)
    {
        return d1.ai;
    }

    static int o(d d1)
    {
        return d1.ae();
    }

    static ViewGroup p(d d1)
    {
        return d1.c;
    }

    static a q(d d1)
    {
        return d1.ah;
    }

    static HorizontalScrollView r(d d1)
    {
        return d1.b;
    }

    public final void G()
    {
        super.G();
        if (ag != null)
        {
            ag.dismiss();
            ag = null;
        }
        if (ak)
        {
            a.d(aj.b());
        }
        com.instagram.creation.b.d.c.a().b();
    }

    public final boolean V()
    {
        return com.instagram.f.d.a.a().b();
    }

    public final List W()
    {
        return com.instagram.f.d.a.a().h();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.layout_listview, viewgroup, false);
        g = (ListView)view.findViewById(0x102000a);
        g.setScrollBarStyle(0x2000000);
        g.setClipToPadding(false);
        if (com.instagram.common.y.f.d(n()))
        {
            View view3 = layoutinflater.inflate(aw.view_switcher_buttons, g, false);
            g.addHeaderView(view3);
            view3.findViewById(av.tab_shadow).setVisibility(0);
            aa = new com.instagram.android.creation.a.a(view3);
            aa.a(1);
            aa.a();
        }
        View view1 = layoutinflater.inflate(aw.row_directshare_metadata_header, g, false);
        b = (HorizontalScrollView)view1.findViewById(av.recipients_scroll_container);
        c = (ViewGroup)view1.findViewById(av.recipients_container);
        d = (ImageView)view1.findViewById(av.people_picker_search);
        e = (DirectShareSearchEditText)view1.findViewById(av.search_edit_text);
        e.setClearButtonEnabled(false);
        h = layoutinflater.inflate(aw.directshare_row_search, g, false);
        h.setTag("TAG_ROW_FOOTER_SEARCH");
        ((ImageView)h.findViewById(av.search_glyph)).setColorFilter(com.instagram.common.ui.colorfilter.a.a(o().getColor(as.accent_blue_medium)));
        i = h.findViewById(av.search_loading_spinner);
        View view2 = layoutinflater.inflate(aw.row_caption, g, false);
        view2.setId(av.row_caption_directshare);
        com.instagram.common.y.f.b(view2, o().getDimensionPixelSize(at.row_text_padding));
        f = (EditText)view2.findViewById(av.caption_text_view);
        g.addHeaderView(view2);
        g.addHeaderView(view1);
        g.addFooterView(h);
        com.instagram.common.y.f.a(g, o().getDimensionPixelSize(at.row_padding));
        g.setClipToPadding(false);
        af();
        return view;
    }

    public final void a(Context context)
    {
        super.a(context);
        al = (new com.instagram.common.d.j(l())).a().a("MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY", an).a("DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED", am).a();
        al.b();
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        ab = new com.instagram.common.a.a.g(n(), z());
    }

    public final void a(View view)
    {
        aj = new com.instagram.android.creation.a(a, view, this);
        aj.a();
        view.findViewById(av.caption_text_view).setOnFocusChangeListener(new com.instagram.android.creation.a.k(this));
        c.setOnClickListener(new l(this));
        g.setAdapter(Y());
        Y().b(W());
        g.setOnItemClickListener(new m(this));
        g.setOnScrollListener(new n(this));
        e.setOnFocusChangeListener(new o(this));
        e.setOnDeleteKeyListener(new p(this));
        com.instagram.common.analytics.a.a().a(e);
        d.setOnClickListener(new com.instagram.android.creation.a.f(this));
        ae = new com.instagram.android.creation.a.g(this);
        af = new com.instagram.android.creation.a.h(this);
        b();
    }

    public final void a(View view, Bundle bundle)
    {
        ((e)l()).a(new com.instagram.android.creation.a.j(this, view));
    }

    protected final void a(String s1)
    {
        String s2 = com.instagram.common.y.e.a(s1);
        e.clearFocus();
        if (com.instagram.common.y.e.c(s2))
        {
            return;
        } else
        {
            ab.a((new ac(s2)).a(ao));
            return;
        }
    }

    public final void b()
    {
        List list = a.N().c();
        int i1 = c.getChildCount();
        c.removeViews(0, ae());
        for (int j1 = 0; j1 < list.size(); j1++)
        {
            f f1 = (f)list.get(j1);
            DirectShareRecipientView directsharerecipientview = (DirectShareRecipientView)LayoutInflater.from(n()).inflate(aw.directshare_recipient, c, false);
            directsharerecipientview.setTooltipString(f1.a());
            directsharerecipientview.setUrl(f1.c());
            directsharerecipientview.setOnDeleteKeyListener(ae);
            directsharerecipientview.setTag(f1);
            c.addView(directsharerecipientview, j1);
        }

        if (e.getText().length() != 0 && g.getFirstVisiblePosition() > 1)
        {
            g.setSelection(1);
        }
        e.setText("");
        Z();
        aa();
        if (c.getChildCount() > i1)
        {
            ai.post(af);
        }
        boolean flag = list.isEmpty();
        boolean flag1 = false;
        if (!flag)
        {
            flag1 = true;
        }
        c(flag1);
    }

    public final boolean c()
    {
        return com.instagram.f.d.a.a().e();
    }

    public final int d()
    {
        return com.instagram.f.d.a.a().f();
    }

    public final void h(Bundle bundle)
    {
        super.h(bundle);
        e.setOnFilterTextListener(new q(this, (byte)0));
    }

    public final String j_()
    {
        return "metadata_direct_share";
    }

    public final void m_()
    {
        super.m_();
        ai.removeCallbacksAndMessages(null);
        if (a != null)
        {
            a.N().a(null);
        }
        e.setOnFocusChangeListener(null);
        e.setOnDeleteKeyListener(null);
        com.instagram.common.analytics.a.a().b(e);
        b = null;
        c = null;
        e = null;
        if (g != null)
        {
            g.setOnScrollListener(null);
        }
        g = null;
        h = null;
        aj = null;
        f = null;
        i = null;
        aa = null;
    }

    public final void r_()
    {
        super.r_();
        al.c();
    }
}
