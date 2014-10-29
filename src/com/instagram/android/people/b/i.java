// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.view.View;
import android.widget.AdapterView;
import com.instagram.ui.widget.searchedittext.SearchEditText;

// Referenced classes of package com.instagram.android.people.b:
//            h

final class i
    implements android.widget.AdapterView.OnItemClickListener
{

    final h a;

    i(h h1)
    {
        a = h1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        if (view.getTag() != null && view.getTag().equals("TAG_ROW_FOOTER_SEARCH"))
        {
            a.a(h.a(a).getStrippedText().toString());
            h.a(a).b();
            return;
        } else
        {
            a.a(adapterview, j);
            return;
        }
    }
}
