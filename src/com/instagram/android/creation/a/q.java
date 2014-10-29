// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.widget.Filter;
import com.instagram.android.directshare.widget.i;
import com.instagram.ui.widget.searchedittext.SearchEditText;
import com.instagram.ui.widget.searchedittext.b;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class q extends b
{

    final d a;

    private q(d d1)
    {
        a = d1;
        super();
    }

    q(d d1, byte byte0)
    {
        this(d1);
    }

    public final void a(SearchEditText searchedittext, CharSequence charsequence)
    {
        String s = searchedittext.getStrippedText().toString();
        d.f(a).getFilter().filter(s);
        if (s.length() > 0)
        {
            d.a(a, s);
            if (d.a(a))
            {
                com.instagram.android.creation.a.d.b(a);
            }
            return;
        } else
        {
            d.e(a);
            return;
        }
    }

    public final void a(String s)
    {
        a.a(s);
    }
}
