// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.feed.a;
import com.instagram.base.a.b;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.y.e;
import com.instagram.m.c;

// Referenced classes of package com.instagram.android.fragment:
//            eb, y, ef, ed, 
//            ee, eg, ec

public abstract class ea extends b
{

    private String a;
    private TextView aa;
    private TextView ab;
    private View ac;
    private h ad;
    private a ae;
    private final Handler af = new eb(this);
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private View g;
    private ListView h;
    private View i;

    public ea()
    {
        b = false;
    }

    private void a(CharSequence charsequence)
    {
        b = true;
        ac.findViewById(av.row_search_for_x_container).setVisibility(0);
        ((TextView)ac.findViewById(av.row_search_for_x_textview)).setText(n().getString(az.search_for_x, new Object[] {
            charsequence
        }));
    }

    static boolean a(ea ea1)
    {
        return ea1.e;
    }

    private y ag()
    {
        return (y)r();
    }

    private void ah()
    {
        boolean flag = true;
        aa = (TextView)i.findViewById(av.view_switcher_button_second);
        aa.setText(az.tags);
        TextView textview = aa;
        boolean flag1;
        TextView textview1;
        if (b() == com.instagram.android.fragment.ef.a)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        textview.setSelected(flag1);
        aa.setOnClickListener(new ed(this));
        ab = (TextView)i.findViewById(av.view_switcher_button_first);
        if (d)
        {
            ab.setText(az.people);
        } else
        {
            ab.setText(az.users);
        }
        textview1 = ab;
        if (b() != com.instagram.android.fragment.ef.b)
        {
            flag = false;
        }
        textview1.setSelected(flag);
        ab.setOnClickListener(new ee(this));
        i.findViewById(av.tab_shadow).setVisibility(0);
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            h.setClipChildren(false);
        }
    }

    private boolean ai()
    {
        return e;
    }

    static y b(ea ea1)
    {
        return ea1.ag();
    }

    static View c(ea ea1)
    {
        return ea1.i;
    }

    static ListView d(ea ea1)
    {
        return ea1.h;
    }

    public void H()
    {
        super.H();
        ad.c();
        ae = null;
    }

    protected abstract int V();

    public final void W()
    {
        g.setVisibility(0);
    }

    public final void X()
    {
        g.setVisibility(8);
    }

    protected final a Y()
    {
        return ae;
    }

    protected final void Z()
    {
        h.setSelection(0);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        Y().b();
        g = layoutinflater.inflate(aw.fragment_search, viewgroup, false);
        g.setVisibility(8);
        h = (ListView)g.findViewById(0x102000a);
        i = layoutinflater.inflate(aw.view_switcher_buttons, h, false);
        ah();
        ac = layoutinflater.inflate(aw.row_search_for_x, h, false);
        ((ImageView)ac.findViewById(av.search_glyph)).setColorFilter(com.instagram.common.ui.colorfilter.a.a(o().getColor(as.accent_blue_medium)));
        ac.setTag("TAG_ROW_FOOTER_SEARCH");
        h.addHeaderView(i);
        h.addFooterView(ac);
        if (b)
        {
            a(((CharSequence) (ad())));
        }
        return g;
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        ad = (new j(n())).a().a("BROADCAST_UPDATED_SEARCHES", new eg(this, (byte)0)).a();
        c = c.e.b();
        d = Boolean.parseBoolean(c.l.h());
        ae = new a();
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        h.setAdapter(c());
        ad.b();
        c("");
    }

    protected abstract void a(AdapterView adapterview, int k);

    protected abstract void a(String s);

    protected final void aa()
    {
        b = false;
        ac.findViewById(av.row_search_for_x_container).setVisibility(8);
    }

    protected final void ab()
    {
        af.removeCallbacksAndMessages(null);
        af.sendEmptyMessageDelayed(1, 200L);
    }

    protected final boolean ac()
    {
        return c;
    }

    protected final String ad()
    {
        return a;
    }

    protected final boolean ae()
    {
        return f;
    }

    public final void af()
    {
        Y().a(this, ad());
    }

    protected abstract int b();

    protected final void b(String s)
    {
        if (!ai() || ac())
        {
            String s1 = com.instagram.common.y.e.a(s);
            if (!TextUtils.isEmpty(s1))
            {
                a(s1);
            }
        }
    }

    protected abstract BaseAdapter c();

    public final void c(String s)
    {
label0:
        {
            if (!s.equals(ad()))
            {
                a = s;
                d().filter(s);
                if (com.instagram.common.y.e.c(s))
                {
                    break label0;
                }
                a(s);
                if (ac())
                {
                    d(s);
                }
            }
            return;
        }
        aa();
    }

    protected final void c(boolean flag)
    {
        View view = ac.findViewById(av.search_loading_spinner);
        int k;
        if (flag)
        {
            k = 0;
        } else
        {
            k = 8;
        }
        view.setVisibility(k);
    }

    protected abstract Filter d();

    public final void d(Bundle bundle)
    {
        h.setOnItemClickListener(new ec(this));
        super.d(bundle);
    }

    protected void d(String s)
    {
        ab();
    }

    protected final void d(boolean flag)
    {
        e = flag;
    }

    protected final void e(boolean flag)
    {
        f = flag;
    }

    public void m_()
    {
        super.m_();
        h.setOnItemClickListener(null);
        aa.setOnClickListener(null);
        ab.setOnClickListener(null);
        g = null;
        h = null;
        i = null;
        ac = null;
        aa = null;
        ab = null;
    }
}
