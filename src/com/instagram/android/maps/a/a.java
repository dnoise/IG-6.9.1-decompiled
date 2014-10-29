// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.instagram.android.feed.a.b.s;
import com.instagram.android.feed.a.b.w;
import com.instagram.android.g.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a extends com.instagram.ui.d.a
{

    private List a;
    private com.instagram.android.maps.d.a b;

    public a(Context context, com.instagram.android.maps.d.a a1)
    {
        super(context);
        b = a1;
    }

    private int a()
    {
        return a.size();
    }

    private ArrayList a(int i)
    {
        ArrayList arraylist = new ArrayList();
        int j = i * 3;
        for (int k = 0; k < 3; k++)
        {
            int l = j + k;
            if (l < a())
            {
                arraylist.add(b(l));
            }
        }

        return arraylist;
    }

    private b b(int i)
    {
        return (b)a.get(i);
    }

    protected final View a(Context context, int i, ViewGroup viewgroup)
    {
        return s.a(context, 3);
    }

    protected final void a(View view, Context context, int i)
    {
        w w1 = (w)view.getTag();
        ArrayList arraylist = a(i);
        boolean flag;
        if (i == getCount())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.a(w1, arraylist, flag, com.instagram.android.maps.e.a.a().b(), i, b);
    }

    public final void a(List list)
    {
        a = list;
        notifyDataSetChanged();
    }

    public final boolean a(String s1)
    {
        for (Iterator iterator = a.iterator(); iterator.hasNext();)
        {
            if (((b)iterator.next()).f().compareTo(s1) == 0)
            {
                iterator.remove();
                notifyDataSetChanged();
                return true;
            }
        }

        return false;
    }

    public final int getCount()
    {
        return (int)Math.ceil((double)a.size() / 3D);
    }

    public final boolean isEmpty()
    {
        return a.isEmpty();
    }
}
