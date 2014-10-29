// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.instagram.ui.widget.loadmore.d;
import com.instagram.ui.widget.loadmore.e;
import com.instagram.ui.widget.loadmore.f;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.ui.d:
//            a

public abstract class c extends a
{

    protected boolean m;
    protected final com.instagram.ui.widget.loadmore.c n;

    public c(Context context)
    {
        super(context);
        m = false;
        n = new f();
    }

    public c(Context context, com.instagram.ui.widget.loadmore.c c1)
    {
        super(context);
        m = false;
        n = c1;
    }

    protected abstract View a();

    public void a_(List list)
    {
        k.addAll(list);
        m = true;
        notifyDataSetChanged();
    }

    public final void b(List list)
    {
        k.clear();
        a_(list);
    }

    public final void c(List list)
    {
        k.clear();
        if (list != null)
        {
            k.addAll(list);
        }
        m = false;
        notifyDataSetChanged();
    }

    public final void d(List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = iterator.next();
            if (k.contains(obj))
            {
                iterator.remove();
            }
        } while (true);
        k.addAll(list);
        m = true;
        notifyDataSetChanged();
    }

    public int getCount()
    {
        int i = 1;
        if (k.size() > 0)
        {
            int j = k.size();
            if (!n.g())
            {
                i = 0;
            }
            i += j;
        } else
        if (!m)
        {
            return 0;
        }
        return i;
    }

    public Object getItem(int i)
    {
        if (i < k.size())
        {
            return k.get(i);
        } else
        {
            return null;
        }
    }

    public int getItemViewType(int i)
    {
        if (m && k.size() == 0)
        {
            return 1;
        }
        return i != -1 + getCount() || !n.g() ? 0 : 2;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (getItemViewType(i) == 2)
        {
            if (view == null)
            {
                view = com.instagram.ui.widget.loadmore.d.a(g(), viewgroup);
            }
            com.instagram.ui.widget.loadmore.d.a((e)view.getTag(), n);
            return view;
        }
        if (getItemViewType(i) == 1)
        {
            return a();
        } else
        {
            return super.getView(i, view, viewgroup);
        }
    }

    public int getViewTypeCount()
    {
        return 3;
    }

    public boolean isEmpty()
    {
        return getCount() == 0;
    }

    public boolean isEnabled(int i)
    {
        if (getItemViewType(i) == 1)
        {
            return false;
        } else
        {
            return super.isEnabled(i);
        }
    }
}
