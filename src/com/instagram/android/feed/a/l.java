// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.instagram.android.a.b.ab;
import com.instagram.android.a.b.h;
import com.instagram.android.a.b.j;
import com.instagram.android.a.b.q;
import com.instagram.android.a.b.u;
import com.instagram.android.a.b.w;
import com.instagram.android.a.b.x;
import com.instagram.android.feed.e.e;
import com.instagram.feed.e.a.a.a;
import com.instagram.feed.e.a.a.g;
import com.instagram.feed.e.b;
import com.instagram.feed.f.c;
import com.instagram.feed.f.d;
import java.util.List;

// Referenced classes of package com.instagram.android.feed.a:
//            a

public final class l extends com.instagram.android.feed.a.a
    implements e
{

    protected List e;
    private com.instagram.feed.a.e f;

    public l(com.instagram.android.fragment.a a1, int i)
    {
        super(a1, i);
        e = null;
    }

    private static View a(Context context)
    {
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setOrientation(1);
        return linearlayout;
    }

    private void a(Context context, ViewGroup viewgroup)
    {
        viewgroup.removeAllViews();
        if (f != null)
        {
            if (f.a() != null)
            {
                View view2 = f.a().a(h.a(context));
                h.a((j)f.a().a().getTag(), (b)c());
                viewgroup.addView(view2);
            }
            if (f.b() != null)
            {
                View view1 = f.b().a(com.instagram.feed.e.a.a.a.a(context));
                com.instagram.feed.e.a.a.a.a(c(), (g)f.b().a().getTag(), c().z(), f.b(), (com.instagram.feed.e.a)c());
                viewgroup.addView(view1);
            }
            if (f.c() != null)
            {
                View view = f.c().a(x.a(context, f.c()));
                x.a(d, (ab)f.c().a().getTag(), (b)c());
                viewgroup.addView(view);
            }
        }
    }

    private int s()
    {
        return f != null && !f.d() ? 1 : 0;
    }

    private int t()
    {
        if (e == null)
        {
            return 0;
        } else
        {
            return e.size();
        }
    }

    protected final View a(Context context, int i, ViewGroup viewgroup)
    {
        int i1 = getItemViewType(i);
        if (i >= k())
        {
            return super.a(context, i, viewgroup);
        }
        if (f(0) == i1)
        {
            return q.a(context, w.a);
        }
        if (f(1) == i1)
        {
            return a(context);
        } else
        {
            throw new UnsupportedOperationException("View type not handled");
        }
    }

    protected final void a(Context context, View view, int i)
    {
        int i1 = getItemViewType(i);
        if (i >= k())
        {
            super.a(context, view, i);
            return;
        }
        if (f(0) == i1)
        {
            q.a(context, (u)view.getTag(), (com.instagram.creation.b.a.b)getItem(i));
            return;
        }
        if (f(1) == i1)
        {
            a(context, (ViewGroup)view);
            return;
        } else
        {
            throw new UnsupportedOperationException("View type not handled");
        }
    }

    public final void a(com.instagram.feed.a.e e1)
    {
        f = e1;
        notifyDataSetChanged();
    }

    public final void a(d d)
    {
        if (f.a(d))
        {
            notifyDataSetChanged();
        }
    }

    public final void a(List list)
    {
        boolean flag;
        if (list.size() != 0 || e != null && e.size() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = list;
        if (flag)
        {
            notifyDataSetChanged();
        }
    }

    protected final boolean b(com.instagram.feed.d.l l1)
    {
        return super.b(l1) && !com.instagram.feed.g.b.a().a(l1);
    }

    public final Object getItem(int i)
    {
        if (k() > i)
        {
            if (s() > i)
            {
                return f;
            } else
            {
                return e.get(i - s());
            }
        } else
        {
            return super.getItem(i);
        }
    }

    public final int getItemViewType(int i)
    {
        if (i >= k())
        {
            return super.getItemViewType(i);
        }
        Object obj = getItem(i);
        if (obj instanceof com.instagram.creation.b.a.b)
        {
            return f(0);
        }
        if (obj instanceof com.instagram.feed.a.e)
        {
            return f(1);
        } else
        {
            throw new UnsupportedOperationException("Unhandled instance type");
        }
    }

    public final int getViewTypeCount()
    {
        return 2 + super.getViewTypeCount();
    }

    public final int k()
    {
        return s() + t();
    }
}
