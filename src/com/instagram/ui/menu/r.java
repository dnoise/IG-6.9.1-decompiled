// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.at;
import com.instagram.common.y.f;
import com.instagram.ui.d.a;
import java.util.Collection;
import java.util.List;

// Referenced classes of package com.instagram.ui.menu:
//            d, i, p, n, 
//            y, u, l, j, 
//            s, f, z, ab, 
//            aa, b, a, g

public final class r extends a
{

    private boolean a;
    private boolean b;
    private boolean c;

    public r(Context context)
    {
        super(context);
    }

    private boolean a(int k)
    {
        return (getItem(k) instanceof d) || (getItem(k) instanceof i);
    }

    protected final View a(Context context, int k, ViewGroup viewgroup)
    {
        switch (getItemViewType(k))
        {
        default:
            View view1 = com.instagram.ui.menu.p.a(context);
            if (a)
            {
                view1.setPadding(0, 0, 0, 0);
            }
            return view1;

        case 1: // '\001'
            return com.instagram.ui.menu.n.a(context, viewgroup);

        case 3: // '\003'
            View view = com.instagram.ui.menu.n.a(context, viewgroup);
            f.b(view, context.getResources().getDimensionPixelSize(at.menu_separator_height));
            return view;

        case 2: // '\002'
            return com.instagram.ui.menu.y.a(context, viewgroup);

        case 4: // '\004'
            return com.instagram.ui.menu.u.a(context, viewgroup);

        case 5: // '\005'
            return com.instagram.ui.menu.l.a(context);

        case 6: // '\006'
            return com.instagram.ui.menu.j.a(context, viewgroup);

        case 7: // '\007'
            return com.instagram.ui.menu.s.a(context);
        }
    }

    protected final void a(View view, Context context, int k)
    {
        boolean flag = true;
        switch (getItemViewType(k))
        {
        default:
            com.instagram.ui.menu.f f1 = (com.instagram.ui.menu.f)getItem(k);
            d d1;
            boolean flag1;
            boolean flag2;
            if (b && k == 0)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            if (!c || k != -1 + getCount())
            {
                flag = false;
            }
            com.instagram.ui.menu.p.a(view, f1, flag2, flag);
            // fall through

        case 3: // '\003'
            return;

        case 1: // '\001'
            d1 = (d)getItem(k);
            flag1 = false;
            if (k != 0)
            {
                flag1 = flag;
            }
            com.instagram.ui.menu.n.a(view, d1, flag1, flag);
            return;

        case 2: // '\002'
            com.instagram.ui.menu.y.a((z)view.getTag(), (ab)getItem(k));
            return;

        case 4: // '\004'
            com.instagram.ui.menu.u.a(view, (aa)getItem(k));
            return;

        case 5: // '\005'
            com.instagram.ui.menu.l.a(view, (b)getItem(k));
            return;

        case 6: // '\006'
            com.instagram.ui.menu.j.a(view, (com.instagram.ui.menu.a)getItem(k));
            return;

        case 7: // '\007'
            com.instagram.ui.menu.s.a(view, context, (g)getItem(k));
            return;
        }
    }

    public final void a(Collection collection)
    {
        k.clear();
        k.addAll(collection);
        notifyDataSetChanged();
    }

    public final void a(boolean flag)
    {
        b = flag;
    }

    public final void a(CharSequence acharsequence[])
    {
        int k = acharsequence.length;
        for (int i1 = 0; i1 < k; i1++)
        {
            CharSequence charsequence = acharsequence[i1];
            this.k.add(new com.instagram.ui.menu.f(charsequence));
        }

        a = true;
        notifyDataSetChanged();
    }

    public final boolean areAllItemsEnabled()
    {
        return false;
    }

    public final void b(boolean flag)
    {
        c = flag;
    }

    public final int getItemViewType(int k)
    {
        if (getItem(k) instanceof d)
        {
            return 1;
        }
        if (getItem(k) instanceof i)
        {
            return 3;
        }
        if (getItem(k) instanceof ab)
        {
            return 2;
        }
        if (getItem(k) instanceof aa)
        {
            return 4;
        }
        if (getItem(k) instanceof b)
        {
            return 5;
        }
        if (getItem(k) instanceof com.instagram.ui.menu.a)
        {
            return 6;
        }
        return !(getItem(k) instanceof g) ? 0 : 7;
    }

    public final int getViewTypeCount()
    {
        return 8;
    }

    public final boolean isEnabled(int k)
    {
        return !a(k) && !(getItem(k) instanceof ab);
    }
}
