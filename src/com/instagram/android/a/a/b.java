// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.a;

import android.widget.Filter;
import com.android.internal.util.Predicate;
import com.instagram.common.l.a.f;
import com.instagram.common.y.e;
import com.instagram.user.c.a;
import com.instagram.user.userservice.a.h;
import com.instagram.user.userservice.d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class b extends Filter
{

    private final d a;

    public b()
    {
        a = new d();
    }

    public b(Iterator iterator)
    {
        a = new d();
        for (; iterator.hasNext(); a.a((a)iterator.next())) { }
    }

    protected Set a(CharSequence charsequence, Predicate predicate)
    {
        boolean flag;
        HashSet hashset;
        if (charsequence != null && charsequence.length() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f.a(flag);
        hashset = new HashSet();
        h.a(charsequence, hashset, predicate);
        a.a(charsequence, hashset, predicate);
        return hashset;
    }

    protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        String s = e.a(charsequence);
        ArrayList arraylist;
        android.widget.Filter.FilterResults filterresults;
        if (s == null || s.length() == 0)
        {
            arraylist = new ArrayList();
        } else
        {
            arraylist = new ArrayList(a(s, null));
        }
        filterresults = new android.widget.Filter.FilterResults();
        filterresults.values = arraylist;
        filterresults.count = arraylist.size();
        return filterresults;
    }

    protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
    }
}
