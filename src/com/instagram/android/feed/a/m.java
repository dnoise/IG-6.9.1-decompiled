// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.instagram.android.fragment.a;

// Referenced classes of package com.instagram.android.feed.a:
//            a

public abstract class m extends com.instagram.android.feed.a.a
{

    protected Object e;

    public m(a a1, int i)
    {
        super(a1, i);
        e = null;
    }

    protected abstract View a(Context context);

    protected final View a(Context context, int i, ViewGroup viewgroup)
    {
        if (i >= k())
        {
            return super.a(context, i, viewgroup);
        }
        int j = getItemViewType(i);
        if (f(0) == j)
        {
            return a(context);
        } else
        {
            throw new UnsupportedOperationException("View type not handled");
        }
    }

    protected final void a(Context context, View view, int i)
    {
        if (i >= k())
        {
            super.a(context, view, i);
            return;
        }
        int j = getItemViewType(i);
        if (f(0) == j)
        {
            b(context, view, i);
            return;
        } else
        {
            throw new UnsupportedOperationException("View type not handled");
        }
    }

    public final void a(Object obj)
    {
        e = obj;
        notifyDataSetChanged();
    }

    protected abstract void b(Context context, View view, int i);

    public Object getItem(int i)
    {
        if (k() > i)
        {
            return e;
        } else
        {
            return super.getItem(i);
        }
    }

    public int getItemViewType(int i)
    {
        if (i >= k())
        {
            return super.getItemViewType(i);
        } else
        {
            return f(0);
        }
    }

    public int getViewTypeCount()
    {
        return 1 + super.getViewTypeCount();
    }

    public int k()
    {
        return e != null ? 1 : 0;
    }
}
