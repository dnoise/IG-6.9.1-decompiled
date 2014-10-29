// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.a;

import com.android.internal.util.Predicate;
import com.instagram.android.a.a.b;
import com.instagram.android.j.d;
import com.instagram.android.j.f;
import com.instagram.common.y.e;
import com.instagram.user.userservice.a.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.k.a:
//            a

public final class k extends b
{

    private final a a;
    private Collection b;

    public k(a a1)
    {
        a = a1;
    }

    private Collection a(boolean flag)
    {
        if (b == null || flag)
        {
            b = f.a();
        }
        return b;
    }

    protected final Set a(CharSequence charsequence, Predicate predicate)
    {
        Set set = super.a(charsequence, predicate);
        Collection collection = a(false);
        if (collection != null && !collection.isEmpty())
        {
            i.a(charsequence, set, collection, null);
        }
        return set;
    }

    protected final android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        if (e.c(e.a(charsequence)))
        {
            Object obj = a(true);
            if (obj == null)
            {
                obj = new ArrayList();
            }
            android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
            filterresults.count = ((Collection) (obj)).size();
            filterresults.values = obj;
            return filterresults;
        } else
        {
            return super.performFiltering(charsequence);
        }
    }

    protected final void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        if (filterresults != null)
        {
            a.c((List)filterresults.values);
        }
        if (charsequence != null && (a instanceof d))
        {
            List list = ((d)a).c().a(charsequence.toString());
            if (list != null)
            {
                a.d(list);
            }
        }
    }
}
