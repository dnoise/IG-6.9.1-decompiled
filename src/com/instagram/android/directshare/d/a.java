// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.instagram.android.feed.a.a.ah;
import com.instagram.android.feed.a.b.ac;
import com.instagram.android.feed.a.b.x;
import com.instagram.feed.comments.a.h;
import com.instagram.feed.d.b;
import com.instagram.feed.d.e;
import com.instagram.feed.d.l;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.d:
//            aj, b

final class a extends BaseAdapter
{

    private final Context a;
    private final com.instagram.android.directshare.d.b b;
    private final ah c;
    private final x d;
    private final com.instagram.feed.comments.a.a e;
    private l f;
    private com.instagram.model.b.a g;
    private List h;
    private List i;

    a(Context context, com.instagram.android.directshare.d.b b1, ah ah1)
    {
        i = new ArrayList();
        a = context;
        b = b1;
        c = ah1;
        d = new x(context, b1);
        e = new com.instagram.feed.comments.a.a(b1);
    }

    private View a(int j, ViewGroup viewgroup)
    {
        switch (getItemViewType(j))
        {
        default:
            x _tmp = d;
            return x.a(a, viewgroup);

        case 2: // '\002'
            return com.instagram.feed.comments.a.a.a(a, viewgroup);

        case 1: // '\001'
            return aj.a(a, viewgroup);
        }
    }

    private void a(int j, View view)
    {
        switch (getItemViewType(j))
        {
        default:
            ac ac1 = (ac)view.getTag();
            d.a(ac1, f, 0, false, c.a(j, f));
            return;

        case 2: // '\002'
            b b1 = (b)i.get(j - 2);
            com.instagram.feed.comments.a.a a1 = e;
            Context context = a;
            h h1 = (h)view.getTag();
            int k = -1 + getCount();
            boolean flag = false;
            if (j == k)
            {
                flag = true;
            }
            a1.a(context, h1, b1, flag);
            return;

        case 1: // '\001'
            aj.a(view, g, h, b);
            return;
        }
    }

    public final void a(l l1)
    {
        f = l1;
        g = l1.al();
        h = l1.am();
        i.clear();
        i.addAll(l1.D().c());
        notifyDataSetChanged();
    }

    public final int getCount()
    {
        if (f != null)
        {
            return 2 + i.size();
        } else
        {
            return 0;
        }
    }

    public final Object getItem(int j)
    {
        switch (getItemViewType(j))
        {
        default:
            return f;

        case 2: // '\002'
            return i.get(j - 2);

        case 1: // '\001'
            return h;
        }
    }

    public final long getItemId(int j)
    {
        return 0L;
    }

    public final int getItemViewType(int j)
    {
        int k = 1;
        if (j > k)
        {
            k = 2;
        } else
        if (j != k)
        {
            return 0;
        }
        return k;
    }

    public final View getView(int j, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a(j, viewgroup);
        }
        a(j, view);
        return view;
    }

    public final int getViewTypeCount()
    {
        return 3;
    }
}
