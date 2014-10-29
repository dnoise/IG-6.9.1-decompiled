// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.instagram.android.a.b.q;
import com.instagram.android.a.b.u;
import com.instagram.android.a.b.w;
import com.instagram.android.feed.e.e;
import com.instagram.creation.b.a.b;
import com.instagram.feed.d.l;
import com.instagram.ui.widget.loadmore.c;
import com.instagram.ui.widget.loadmore.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.c:
//            p, s, t

public final class a extends BaseAdapter
    implements e
{

    private List a;
    private List b;
    private Context c;
    private c d;

    public a(Context context, c c1)
    {
        a = new ArrayList();
        b = new ArrayList();
        c = context;
        d = c1;
    }

    private View a(int i, ViewGroup viewgroup)
    {
        switch (getItemViewType(i))
        {
        default:
            throw new IllegalArgumentException("Unsupported view type");

        case 0: // '\0'
            return p.a(c, viewgroup);

        case 1: // '\001'
            return q.a(c, w.b);

        case 2: // '\002'
            return com.instagram.ui.widget.loadmore.d.a(c, viewgroup);
        }
    }

    private void a(View view, int i)
    {
        int j = getItemViewType(i);
        if (j == 0)
        {
            p.a(c, (s)view.getTag(), (l)getItem(i));
        } else
        {
            if (j == 1)
            {
                q.a(c, (u)view.getTag(), (b)getItem(i));
                return;
            }
            if (j == 2)
            {
                com.instagram.ui.widget.loadmore.d.a((com.instagram.ui.widget.loadmore.e)view.getTag(), d);
                return;
            }
        }
    }

    private void a(l l1)
    {
        if (t.a().a(l1))
        {
            notifyDataSetChanged();
        }
    }

    private void b()
    {
        b.clear();
        Iterator iterator = t.a().f().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            l l1 = (l)iterator.next();
            if (l1.C() == 0)
            {
                b.add(l1);
            }
        } while (true);
    }

    public final void a()
    {
        notifyDataSetChanged();
    }

    public final void a(l l1, boolean flag)
    {
        a(l1);
    }

    public final void a(List list)
    {
        a.clear();
        a.addAll(list);
        notifyDataSetChanged();
    }

    public final boolean areAllItemsEnabled()
    {
        return false;
    }

    public final int getCount()
    {
        return 1 + (b.size() + a.size());
    }

    public final Object getItem(int i)
    {
        if (i >= 0 && i < getCount())
        {
            if (i == -1 + getCount())
            {
                return d;
            }
            if (i < a.size())
            {
                return a.get(i);
            } else
            {
                return b.get(i - a.size());
            }
        } else
        {
            return new IndexOutOfBoundsException();
        }
    }

    public final long getItemId(int i)
    {
        return (long)getItemViewType(i);
    }

    public final int getItemViewType(int i)
    {
        Object obj = getItem(i);
        if (obj instanceof l)
        {
            return 0;
        }
        if (obj instanceof b)
        {
            return 1;
        }
        if (obj instanceof c)
        {
            return 2;
        } else
        {
            throw new IndexOutOfBoundsException("Unsupported view type");
        }
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a(i, viewgroup);
        }
        a(view, i);
        return view;
    }

    public final int getViewTypeCount()
    {
        return 3;
    }

    public final boolean isEmpty()
    {
        return b.isEmpty() && a.isEmpty();
    }

    public final boolean isEnabled(int i)
    {
        return i != getCount();
    }

    public final void notifyDataSetChanged()
    {
        b();
        super.notifyDataSetChanged();
    }
}
