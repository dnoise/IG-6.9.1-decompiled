// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import com.instagram.android.a.b.b;
import com.instagram.android.a.b.c;
import com.instagram.android.a.b.d;
import com.instagram.feed.d.l;
import java.util.ArrayList;

public final class a extends com.instagram.ui.d.a
    implements Filterable
{

    private com.instagram.android.a.a.a a;
    private l b;
    private ArrayList c;

    public a(Context context)
    {
        super(context);
        l = context;
    }

    public a(Context context, l l)
    {
        super(context);
        b = l;
    }

    protected final View a(Context context, int i, ViewGroup viewgroup)
    {
        switch (getItemViewType(i))
        {
        default:
            return null;

        case 0: // '\0'
            return com.instagram.android.a.b.a.a(context);

        case 1: // '\001'
            return com.instagram.android.a.b.c.a(context);
        }
    }

    protected final void a(View view, Context context, int i)
    {
        switch (getItemViewType(i))
        {
        default:
            return;

        case 0: // '\0'
            com.instagram.android.a.b.a.a((b)view.getTag(), (String)c.get(i));
            return;

        case 1: // '\001'
            com.instagram.android.a.b.c.a((d)view.getTag(), (com.instagram.user.c.a)c.get(i));
            break;
        }
    }

    public final void a(ArrayList arraylist)
    {
        c = arraylist;
    }

    public final int getCount()
    {
        if (c != null)
        {
            return c.size();
        } else
        {
            return 0;
        }
    }

    public final Filter getFilter()
    {
        if (a == null)
        {
            if (b != null)
            {
                a = new com.instagram.android.a.a.a(this, b);
            } else
            {
                a = new com.instagram.android.a.a.a(this);
            }
        }
        return a;
    }

    public final Object getItem(int i)
    {
        int j = getItemViewType(i);
        if (j == 0)
        {
            return (new StringBuilder("#")).append((String)c.get(i)).toString();
        }
        if (j == 1)
        {
            return (new StringBuilder("@")).append(((com.instagram.user.c.a)c.get(i)).b()).toString();
        } else
        {
            return "";
        }
    }

    public final long getItemId(int i)
    {
        return 0L;
    }

    public final int getItemViewType(int i)
    {
        return !(c.get(i) instanceof String) ? 1 : 0;
    }

    public final int getViewTypeCount()
    {
        return 2;
    }
}
