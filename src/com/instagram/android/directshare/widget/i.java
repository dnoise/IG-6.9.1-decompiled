// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.creation.b.a.b;
import com.instagram.ui.d.c;
import com.instagram.ui.menu.d;
import com.instagram.ui.menu.n;
import com.instagram.user.c.a;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.widget:
//            j, k, l, h

public final class i extends c
    implements Filterable
{

    private final j a;
    private b b;
    private k c;
    private Filter d;
    private boolean e;
    private final d f;
    private final d g;

    public i(Context context, j j1)
    {
        super(context);
        f = new d(az.directshare_user_list_header_suggestions);
        g = new d(az.directshare_user_list_header_following);
        a = j1;
    }

    private int c(int i1)
    {
        if (k.isEmpty())
        {
            return 1;
        }
        return i1 != e() && i1 != f() ? 0 : 2;
    }

    private int d()
    {
        return !k.isEmpty() ? 0 : 1;
    }

    private int d(int i1)
    {
        if (a.c() || a.V() || i1 > e() && i1 < f())
        {
            return i1 - 1;
        }
        if (i1 > f() && i1 < getCount())
        {
            return i1 - 2;
        } else
        {
            throw new IndexOutOfBoundsException("Cannot adjust for headers.");
        }
    }

    private int e()
    {
        return !a.c() ? 0 : -1;
    }

    private int f()
    {
        if (a.V())
        {
            return -1;
        }
        if (a.c())
        {
            return 0;
        } else
        {
            return 1 + a.d();
        }
    }

    private int h()
    {
        boolean flag = a.c();
        int i1 = 0;
        if (!flag)
        {
            i1 = 1;
        }
        if (!a.V())
        {
            i1++;
        }
        return i1;
    }

    private k i()
    {
        if (c == null)
        {
            c = new k();
        }
        return c;
    }

    protected final View a()
    {
        return LayoutInflater.from(g()).inflate(aw.directshare_row_no_results, null);
    }

    protected final View a(Context context, int i1, ViewGroup viewgroup)
    {
        switch (getItemViewType(i1))
        {
        default:
            throw new IndexOutOfBoundsException("Unhandled view type");

        case 0: // '\0'
            return i().a(context);

        case 1: // '\001'
            return a();

        case 2: // '\002'
            return n.a(context, viewgroup);
        }
    }

    protected final void a(View view, Context context, int i1)
    {
        switch (getItemViewType(i1))
        {
        default:
            throw new IndexOutOfBoundsException("Unhandled view type");

        case 0: // '\0'
            i();
            com.instagram.android.directshare.widget.k.a((l)view.getTag(), b(i1), b);
            // fall through

        case 1: // '\001'
            return;

        case 2: // '\002'
            break;
        }
        d d1;
        if (i1 == e())
        {
            d1 = f;
        } else
        {
            d1 = g;
        }
        n.a(view, d1, true, true);
    }

    public final void a(b b1)
    {
        b = b1;
    }

    public final void a(List list)
    {
        if (list.isEmpty())
        {
            e = false;
        }
        k.addAll(list);
        notifyDataSetChanged();
    }

    public final void a(boolean flag)
    {
        e = flag;
    }

    public final boolean a(int i1)
    {
        return getItemViewType(i1) == 0;
    }

    public final a b(int i1)
    {
        if (getItemViewType(i1) != 0)
        {
            throw new IndexOutOfBoundsException("Cannot getItem() on a header row.");
        }
        if (!e)
        {
            i1 = d(i1);
        }
        return (a)super.getItem(i1);
    }

    public final List b()
    {
        return Collections.unmodifiableList(k);
    }

    public final List c()
    {
        return a.W();
    }

    public final int getCount()
    {
        if (e)
        {
            return k.size();
        }
        if (k.isEmpty())
        {
            return 1;
        } else
        {
            return k.size() + h();
        }
    }

    public final Filter getFilter()
    {
        if (d == null)
        {
            d = new h(this);
        }
        return d;
    }

    public final Object getItem(int i1)
    {
        return b(i1);
    }

    public final int getItemViewType(int i1)
    {
        if (i1 >= getCount())
        {
            throw new IndexOutOfBoundsException("Unsupported item view type");
        }
        if (e)
        {
            return d();
        } else
        {
            return c(i1);
        }
    }

    public final int getViewTypeCount()
    {
        return 3;
    }

    public final boolean isEnabled(int i1)
    {
        while (e || i1 != e() && i1 != f()) 
        {
            return true;
        }
        return false;
    }
}
