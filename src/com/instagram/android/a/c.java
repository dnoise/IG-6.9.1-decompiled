// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.widget.Filter;
import com.instagram.common.y.e;
import com.instagram.h.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.a:
//            b

final class c extends Filter
{

    private final b a;

    public c(b b1)
    {
        a = b1;
    }

    private static List a(android.widget.Filter.FilterResults filterresults)
    {
        List list = (List)filterresults.values;
        ArrayList arraylist = new ArrayList(list.size());
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new com.instagram.android.g.c((String)iterator.next()))) { }
        return arraylist;
    }

    protected final android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        String s = e.a(charsequence);
        List list;
        android.widget.Filter.FilterResults filterresults;
        if (e.c(s))
        {
            list = com.instagram.android.j.c.a();
        } else
        {
            list = com.instagram.h.a.a.a(s);
        }
        filterresults = new android.widget.Filter.FilterResults();
        filterresults.values = list;
        filterresults.count = list.size();
        return filterresults;
    }

    protected final void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        if (filterresults == null)
        {
            return;
        } else
        {
            a.c(a(filterresults));
            return;
        }
    }
}
