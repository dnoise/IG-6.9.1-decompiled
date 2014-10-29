// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.c.a.ac;
import com.instagram.android.people.activity.PeopleTagActivity;
import com.instagram.android.people.widget.d;
import com.instagram.android.people.widget.e;
import com.instagram.base.a.b;
import com.instagram.common.a.a.g;
import com.instagram.common.a.a.j;
import com.instagram.common.a.a.k;
import com.instagram.common.ui.colorfilter.a;
import com.instagram.ui.widget.searchedittext.SearchEditText;

// Referenced classes of package com.instagram.android.people.b:
//            j, l, k, i

public final class h extends b
{

    protected boolean a;
    private k b;
    private SearchEditText c;
    private ListView d;
    private d e;
    private View f;
    private l g;
    private boolean h;
    private final j i = new com.instagram.android.people.b.j(this);

    public h()
    {
        a = false;
        h = false;
    }

    private void V()
    {
        f.findViewById(av.search_loading_spinner).setVisibility(8);
        f.findViewById(av.row_search_for_x_container).setVisibility(8);
    }

    private com.instagram.model.people.b W()
    {
        return ((PeopleTagActivity)l()).h();
    }

    static SearchEditText a(h h1)
    {
        return h1.c;
    }

    public static void a(s s1)
    {
        h h1 = new h();
        Bundle bundle = new Bundle();
        ag ag1 = s1.a();
        h1.g(bundle);
        ag1.a(av.layout_container_main, h1);
        ag1.a("PeopleTagSearch");
        ag1.b();
        s1.b();
    }

    static void a(h h1, CharSequence charsequence)
    {
        h1.a(charsequence);
    }

    private void a(CharSequence charsequence)
    {
        f.findViewById(av.row_search_for_x_container).setVisibility(0);
        ((TextView)f.findViewById(av.row_search_for_x_textview)).setText(a(az.search_for_x, new Object[] {
            charsequence
        }));
    }

    static boolean a(h h1, boolean flag)
    {
        h1.h = flag;
        return flag;
    }

    static d b(h h1)
    {
        return h1.e;
    }

    private void b()
    {
        ((TextView)f.findViewById(av.row_search_for_x_textview)).setText(az.searching);
        f.findViewById(av.search_loading_spinner).setVisibility(0);
    }

    private void c()
    {
        d.setVisibility(0);
    }

    static void c(h h1)
    {
        h1.c();
    }

    private void d()
    {
        d.setVisibility(8);
    }

    static void d(h h1)
    {
        h1.d();
    }

    static void e(h h1)
    {
        h1.V();
    }

    static com.instagram.model.people.b f(h h1)
    {
        return h1.W();
    }

    static ListView g(h h1)
    {
        return h1.d;
    }

    static void h(h h1)
    {
        h1.b();
    }

    public final void G()
    {
        super.G();
        c.b();
    }

    public final void H()
    {
        if (g != null)
        {
            g.g();
        }
        super.H();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        ViewGroup viewgroup1 = (ViewGroup)layoutinflater.inflate(aw.fragment_people_tag_search, viewgroup, false);
        c = (SearchEditText)viewgroup1.findViewById(av.row_search_edit_text);
        android.graphics.ColorFilter colorfilter = com.instagram.common.ui.colorfilter.a.a(o().getColor(as.grey_4));
        c.getCompoundDrawables()[0].mutate().setColorFilter(colorfilter);
        c.getBackground().mutate().setColorFilter(colorfilter);
        if (!h)
        {
            c.setOnFilterTextListener(new com.instagram.android.people.b.k(this, (byte)0));
        }
        d = (ListView)viewgroup1.findViewById(0x102000a);
        d.setOnItemClickListener(new i(this));
        f = layoutinflater.inflate(aw.row_search_for_x_dark, d, false);
        f.setTag("TAG_ROW_FOOTER_SEARCH");
        d.addFooterView(f);
        return viewgroup1;
    }

    public final void a(Context context)
    {
        super.a(context);
        try
        {
            g = (l)context;
            return;
        }
        catch (ClassCastException classcastexception)
        {
            throw new ClassCastException((new StringBuilder()).append(context.toString()).append(" must implement PeopleTagSearchFragmentListener").toString());
        }
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        x();
        e = (new e()).a(n()).a(z()).a().b().a(com.instagram.user.follow.h.b).a(W()).c();
        b = new g(n(), z());
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        d.setAdapter(e);
        c.requestFocus();
        c.c();
    }

    protected final void a(AdapterView adapterview, int i1)
    {
        com.instagram.user.c.a a1 = (com.instagram.user.c.a)adapterview.getItemAtPosition(i1);
        if (g != null)
        {
            g.a(a1);
        }
    }

    protected final void a(String s1)
    {
        String s2 = com.instagram.common.y.e.a(s1);
        c.clearFocus();
        if (TextUtils.isEmpty(s2))
        {
            if (g != null)
            {
                g.g();
            }
            return;
        } else
        {
            b.a((new ac(s2)).a(i));
            return;
        }
    }

    public final String j_()
    {
        return "people_tagging_search";
    }

    public final void k_()
    {
        super.k_();
        if (h)
        {
            c();
            V();
            c.setOnFilterTextListener(new com.instagram.android.people.b.k(this, (byte)0));
        }
    }

    public final void m_()
    {
        super.m_();
        c.setOnFilterTextListener(null);
        c = null;
        d = null;
        f = null;
    }

    public final void r_()
    {
        super.r_();
        g = null;
    }
}
