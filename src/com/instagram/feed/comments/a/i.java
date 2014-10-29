// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.instagram.feed.d.b;
import com.instagram.feed.d.l;
import com.instagram.ui.d.a;
import com.instagram.ui.widget.loadmore.c;
import com.instagram.ui.widget.loadmore.d;
import com.instagram.ui.widget.loadmore.e;
import java.util.List;

// Referenced classes of package com.instagram.feed.comments.a:
//            a, h, g

public final class i extends a
{

    private final c a;
    private final com.instagram.feed.comments.a.a b;
    private l c;
    private boolean d;
    private boolean e;

    public i(Context context, c c1, g g)
    {
        super(context);
        a = c1;
        b = new com.instagram.feed.comments.a.a(g);
    }

    private b a(int j)
    {
        if (getItemViewType(j) == 2 || !e)
        {
            return (b)super.getItem(j);
        } else
        {
            return (b)super.getItem(j - 1);
        }
    }

    public final int a()
    {
        int j = 1;
        int k;
        if (d)
        {
            k = j;
        } else
        {
            k = 0;
        }
        if (!e)
        {
            j = 0;
        }
        return k + j;
    }

    protected final View a(Context context, int j, ViewGroup viewgroup)
    {
        switch (getItemViewType(j))
        {
        default:
            throw new RuntimeException("No item view type found");

        case 2: // '\002'
            return com.instagram.feed.comments.a.a.b(context, viewgroup);

        case 0: // '\0'
            return com.instagram.feed.comments.a.a.a(context, viewgroup);

        case 1: // '\001'
            return com.instagram.ui.widget.loadmore.d.a(context, viewgroup);
        }
    }

    protected final void a(View view, Context context, int j)
    {
        switch (getItemViewType(j))
        {
        default:
            return;

        case 0: // '\0'
        case 2: // '\002'
            b b1 = a(j);
            com.instagram.feed.comments.a.a a1 = b;
            h h1 = (h)view.getTag();
            boolean flag;
            if (j == -1 + getCount())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a1.a(context, h1, b1, flag);
            return;

        case 1: // '\001'
            com.instagram.ui.widget.loadmore.d.a((e)view.getTag(), a);
            return;
        }
    }

    public final void a(l l1)
    {
        c = l1;
        e = l1.n();
        k.clear();
        k.addAll(l1.D().c());
        boolean flag;
        if (!k.isEmpty() && ((b)k.get(0)).i() == com.instagram.feed.d.d.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
        notifyDataSetChanged();
    }

    public final int getCount()
    {
        if (e)
        {
            return 1 + k.size();
        } else
        {
            return k.size();
        }
    }

    public final Object getItem(int j)
    {
        return a(j);
    }

    public final int getItemViewType(int j)
    {
        byte byte0 = 1;
        if (d && j == 0)
        {
            byte0 = 2;
        } else
        if (!e || (d || j != 0) && (!d || j != byte0))
        {
            return 0;
        }
        return byte0;
    }

    public final int getViewTypeCount()
    {
        return 3;
    }

    public final void notifyDataSetChanged()
    {
        if (c != null)
        {
            c.b();
        }
        super.notifyDataSetChanged();
    }

    public final void notifyDataSetInvalidated()
    {
        if (c != null)
        {
            c.b();
        }
        super.notifyDataSetInvalidated();
    }
}
