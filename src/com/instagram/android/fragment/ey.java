// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListView;
import com.facebook.aw;
import com.instagram.android.a.m;
import com.instagram.android.c.a.q;
import com.instagram.base.a.c;
import com.instagram.base.a.e;
import com.instagram.m.a;
import com.instagram.ui.d.b;
import com.instagram.user.follow.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.instagram.android.fragment:
//            ez, fa, fb

public abstract class ey extends c
    implements android.widget.AbsListView.OnScrollListener, e
{

    protected h aa;
    protected boolean ab;
    private IntentFilter ac;
    private final Set ad = new HashSet();
    private boolean ae;
    private final BroadcastReceiver af = new ez(this);
    protected m i;

    public ey()
    {
        ab = true;
    }

    static void a(ey ey1)
    {
        ey1.d();
    }

    static boolean a(ey ey1, boolean flag)
    {
        ey1.ae = flag;
        return flag;
    }

    private void d()
    {
        if (E() != null && Y() && v_().getEmptyView() == null)
        {
            View view = LayoutInflater.from(n()).inflate(aw.recommended_user_empty, (ViewGroup)E(), false);
            v_().setEmptyView(view);
            ((ViewGroup)E()).addView(view);
        }
    }

    public final void F()
    {
        super.F();
        android.support.v4.a.e.a(l()).a(af, ac);
    }

    public final void G()
    {
        android.support.v4.a.e.a(l()).a(af);
        ad.clear();
        super.G();
    }

    public abstract void W();

    public abstract void X();

    public abstract boolean Y();

    protected abstract m Z();

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return layoutinflater.inflate(aw.layout_listview_with_progress, viewgroup, false);
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        ac = new IntentFilter("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED");
        h h1;
        if (com.instagram.m.c.d.b())
        {
            h1 = h.b;
        } else
        {
            h1 = h.a;
        }
        aa = h1;
    }

    public void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        v_().setOnScrollListener(this);
        v_().setAdapter(Z());
        if (!e() && !ab)
        {
            d();
        }
        boolean flag;
        if (ae || ab)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b.a(flag, E());
    }

    public final void a(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList(arraylist.size());
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); arraylist1.add(((com.instagram.user.d.a)iterator.next()).a())) { }
        if (!arraylist1.isEmpty())
        {
            (new com.instagram.user.follow.a(l(), z(), 1, new fa(this))).a(arraylist1);
        }
    }

    protected final void aa()
    {
        (new q(n(), z(), false, true, new fb(this))).g();
    }

    public final boolean e()
    {
        return ae;
    }

    public final void m_()
    {
        v_().setOnScrollListener(null);
        super.m_();
    }

    public void onScroll(AbsListView abslistview, int j, int k, int l)
    {
        if (abslistview != null && k > 0 && j > 0)
        {
            for (int i1 = j; i1 < j + k; i1++)
            {
                Object obj = Z().getItem(i1);
                if (!(obj instanceof com.instagram.user.d.a))
                {
                    continue;
                }
                com.instagram.user.d.a a1 = (com.instagram.user.d.a)obj;
                if (ad.add(a1.a().g()))
                {
                    com.instagram.user.d.b.a(this, a1, i1, true);
                }
            }

        }
    }

    public void onScrollStateChanged(AbsListView abslistview, int j)
    {
    }

    public final void s_()
    {
        if (E() != null)
        {
            v_().smoothScrollToPosition(0);
        }
    }
}
