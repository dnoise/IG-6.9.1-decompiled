// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.List;

public abstract class a extends BaseAdapter
    implements ListAdapter
{

    protected List k;
    protected Context l;

    public a(Context context)
    {
        k = new ArrayList();
        l = context;
    }

    protected abstract View a(Context context, int i, ViewGroup viewgroup);

    protected abstract void a(View view, Context context, int i);

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public final Context g()
    {
        return l;
    }

    public int getCount()
    {
        return k.size();
    }

    public Object getItem(int i)
    {
        if (i >= 0 && i < getCount())
        {
            return k.get(i);
        } else
        {
            return null;
        }
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a(l, i, viewgroup);
        }
        a(view, l, i);
        return view;
    }

    public boolean hasStableIds()
    {
        return true;
    }

    public boolean isEmpty()
    {
        return k.isEmpty();
    }
}
