// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

// Referenced classes of package com.instagram.android.fragment:
//            ea, y

final class ec
    implements android.widget.AdapterView.OnItemClickListener
{

    final ea a;

    ec(ea ea1)
    {
        a = ea1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if ("TAG_ROW_FOOTER_SEARCH".equals(view.getTag()))
        {
            if (!a.ac() || a.ae() || a.c().isEmpty() && !ea.a(a))
            {
                a.b(a.ad());
                ea.b(a).b();
            }
        } else
        if (view != ea.c(a))
        {
            a.a(adapterview, i);
            return;
        }
    }
}
