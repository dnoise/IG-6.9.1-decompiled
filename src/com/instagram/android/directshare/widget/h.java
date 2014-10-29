// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.widget;

import com.instagram.android.a.a.b;
import com.instagram.common.y.e;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.widget:
//            i

public final class h extends b
{

    private final i a;

    public h(i j)
    {
        a = j;
    }

    protected final android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        if (e.c(e.a(charsequence)))
        {
            android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
            List list = a.c();
            filterresults.count = list.size();
            filterresults.values = list;
            return filterresults;
        } else
        {
            return super.performFiltering(charsequence);
        }
    }

    protected final void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        if (e.c(e.a(charsequence)))
        {
            a.a(false);
        } else
        {
            a.a(true);
        }
        if (filterresults != null)
        {
            a.c((List)filterresults.values);
        }
    }
}
