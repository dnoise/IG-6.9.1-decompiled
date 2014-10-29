// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.content.Context;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.az;
import com.instagram.android.a.b.ac;
import com.instagram.android.a.b.ag;
import com.instagram.android.a.b.e;
import com.instagram.android.a.b.f;
import com.instagram.android.a.b.g;
import com.instagram.ui.d.a;
import com.instagram.ui.menu.d;
import com.instagram.ui.menu.n;
import com.instagram.user.follow.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class m extends a
{

    private final an a;
    private final boolean b;
    private final s c;
    private final boolean d;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final int i;
    private final d j;
    private final h m;
    private final f n;
    private final Set o = new HashSet();

    protected m(Context context, an an, s s, boolean flag, boolean flag1, boolean flag2, boolean flag3, 
            boolean flag4, boolean flag5, int k, f f1, h h1)
    {
        super(context);
        j = new d(az.suggested_for_you);
        a = an;
        b = flag;
        c = s;
        d = flag1;
        e = flag2;
        f = flag3;
        g = flag4;
        h = flag5;
        i = k;
        n = f1;
        m = h1;
    }

    private boolean a()
    {
        return n != null;
    }

    protected final View a(Context context, int k, ViewGroup viewgroup)
    {
        switch (getItemViewType(k))
        {
        default:
            throw new IndexOutOfBoundsException("Unhandled view type");

        case 0: // '\0'
            return ac.a(context, m);

        case 1: // '\001'
            return com.instagram.android.a.b.e.a(context, n);

        case 2: // '\002'
            return com.instagram.ui.menu.n.a(context, viewgroup);
        }
    }

    protected final void a(View view, Context context, int k)
    {
        switch (getItemViewType(k))
        {
        default:
            throw new IndexOutOfBoundsException("Unhandled view type");

        case 0: // '\0'
            ac.a((ag)view.getTag(), k, i, (com.instagram.user.d.a)getItem(k), c, a, b, d, e, f, g, h);
            return;

        case 1: // '\001'
            com.instagram.android.a.b.e.a((g)view.getTag(), n);
            return;

        case 2: // '\002'
            com.instagram.ui.menu.n.a(view, (d)getItem(k), true, false);
            break;
        }
    }

    public final void a(ArrayList arraylist)
    {
        k.clear();
        o.clear();
        com.instagram.user.d.a a1;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); o.add(a1.a().g()))
        {
            a1 = (com.instagram.user.d.a)iterator.next();
        }

        if (a() && !arraylist.isEmpty())
        {
            k.add(j);
        }
        k.addAll(arraylist);
        notifyDataSetChanged();
    }

    public final boolean a(String s)
    {
        return o.contains(s);
    }

    public final int getCount()
    {
        if (a())
        {
            return 1 + k.size();
        } else
        {
            return k.size();
        }
    }

    public final Object getItem(int k)
    {
        if (k >= 0 && k < getCount())
        {
            if (a())
            {
                return this.k.get(k - 1);
            } else
            {
                return this.k.get(k);
            }
        } else
        {
            return null;
        }
    }

    public final int getItemViewType(int k)
    {
        if (a() && k == 0)
        {
            return 1;
        }
        return !(getItem(k) instanceof d) ? 0 : 2;
    }

    public final int getViewTypeCount()
    {
        return 3;
    }

    public final boolean isEnabled(int k)
    {
        return false;
    }
}
