// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.instagram.android.directshare.widget.DirectShareSearchEditText;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class m
    implements android.widget.AdapterView.OnItemClickListener
{

    final d a;

    m(d d1)
    {
        a = d1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        int j = i - d.m(a).getHeaderViewsCount();
        if ("TAG_ROW_FOOTER_SEARCH".equals(view.getTag()))
        {
            a.a(d.l(a).getStrippedText().toString());
            return;
        } else
        {
            d.a(a, view, j);
            return;
        }
    }
}
