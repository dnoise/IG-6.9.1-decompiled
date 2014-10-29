// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.a;

import android.widget.Filter;
import com.instagram.feed.d.l;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.a.a:
//            b

public final class a extends Filter
{

    private b a;
    private com.instagram.android.a.a b;

    public a(com.instagram.android.a.a a1)
    {
        b = a1;
        a = new b();
    }

    public a(com.instagram.android.a.a a1, l l1)
    {
        b = a1;
        com.instagram.android.g.a.a a2 = com.instagram.android.g.a.a.a();
        java.util.Iterator iterator;
        if (l1.ak())
        {
            iterator = a2.b(l1);
        } else
        {
            iterator = a2.a(l1);
        }
        a = new b(iterator);
    }

    protected final android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        if (charsequence != null && charsequence.length() > 0)
        {
            if (charsequence.charAt(0) == '#')
            {
                List list = com.instagram.h.a.a.a(charsequence.subSequence(1, charsequence.length()));
                android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
                filterresults.values = list;
                filterresults.count = list.size();
                return filterresults;
            }
            if (charsequence.charAt(0) == '@')
            {
                return a.performFiltering(charsequence.subSequence(1, charsequence.length()));
            }
        }
        return null;
    }

    protected final void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        if (filterresults == null)
        {
            return;
        }
        b.a((ArrayList)filterresults.values);
        if (filterresults.count > 0)
        {
            b.notifyDataSetChanged();
            return;
        } else
        {
            b.notifyDataSetInvalidated();
            return;
        }
    }
}
