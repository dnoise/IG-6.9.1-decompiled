// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.a;

import android.content.Context;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.common.j.b;
import com.instagram.common.j.e;
import com.instagram.common.j.g;
import com.instagram.ui.d.c;
import com.instagram.ui.widget.loadmore.f;
import com.instagram.user.c.d;
import com.instagram.user.follow.h;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.android.k.a:
//            d, c, j, b, 
//            f, k

public class a extends c
    implements Filterable
{

    protected boolean a;
    protected boolean b;
    protected boolean c;
    protected h d;
    protected an e;
    protected s f;
    protected Filter g;
    protected com.instagram.android.k.a.f h;
    protected Map i;
    protected com.instagram.user.c.a j;
    private final Set o;
    private com.instagram.android.k.a.d p;
    private final e q;

    protected a(Context context, an an, s s, boolean flag, boolean flag1, h h1)
    {
        this(context, an, s, flag, flag1, false, h1, ((com.instagram.ui.widget.loadmore.c) (new f())));
    }

    protected a(Context context, an an, s s, boolean flag, boolean flag1, boolean flag2, h h1, 
            com.instagram.ui.widget.loadmore.c c1)
    {
        super(context, c1);
        o = new HashSet();
        p = new com.instagram.android.k.a.d(this, (byte)0);
        q = new com.instagram.android.k.a.c(this);
        e = an;
        f = s;
        a = flag;
        b = flag1;
        c = flag2;
        d = h1;
        i = new HashMap();
        if (a)
        {
            com.instagram.common.j.g.a().a(com/instagram/user/c/d, q);
        }
    }

    static Set a(a a1)
    {
        return a1.o;
    }

    private void a(View view, com.instagram.user.c.a a1)
    {
        boolean flag;
        List list;
        if (j != null && a1.g().equals(j.g()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            list = a(a1);
        } else
        {
            list = null;
        }
        b().a((j)view.getTag(), a1, a, b, c, false, e, f, list, new com.instagram.android.k.a.b(this));
    }

    static com.instagram.android.k.a.d b(a a1)
    {
        return a1.p;
    }

    protected View a()
    {
        View view = LayoutInflater.from(g()).inflate(aw.row_no_results, null);
        ((TextView)view.findViewById(av.row_no_results_textview)).setText(az.no_users_found);
        return view;
    }

    protected final View a(Context context, int l, ViewGroup viewgroup)
    {
        return b().a(context, h.a, d, true);
    }

    protected final List a(com.instagram.user.c.a a1)
    {
        if (i.containsKey(a1.g()))
        {
            return (List)i.get(a1.g());
        } else
        {
            List list = com.instagram.android.i.b.a(a1);
            i.put(a1.g(), list);
            return list;
        }
    }

    protected final void a(View view, Context context, int l)
    {
        a(view, (com.instagram.user.c.a)getItem(l));
    }

    public final void a_(List list)
    {
        super.a_(list);
        com.instagram.user.c.a a1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); o.add(a1.g()))
        {
            a1 = (com.instagram.user.c.a)iterator.next();
        }

    }

    public com.instagram.android.k.a.f b()
    {
        if (h == null)
        {
            h = new com.instagram.android.k.a.f();
        }
        return h;
    }

    public final void d()
    {
        com.instagram.common.j.g.a().b(com/instagram/user/c/d, q);
    }

    public final List e()
    {
        return k;
    }

    public final List f()
    {
        return k;
    }

    public Filter getFilter()
    {
        if (g == null)
        {
            g = new k(this);
        }
        return g;
    }
}
