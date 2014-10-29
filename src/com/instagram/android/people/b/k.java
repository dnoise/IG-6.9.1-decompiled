// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.widget.Filter;
import com.instagram.android.people.widget.d;
import com.instagram.common.y.e;
import com.instagram.ui.widget.searchedittext.SearchEditText;
import com.instagram.ui.widget.searchedittext.b;

// Referenced classes of package com.instagram.android.people.b:
//            h

final class k extends b
{

    final h a;

    private k(h h1)
    {
        a = h1;
        super();
    }

    k(h h1, byte byte0)
    {
        this(h1);
    }

    public final void a(SearchEditText searchedittext, CharSequence charsequence)
    {
        h.a(a, false);
        String s = e.a(searchedittext.getStrippedText());
        com.instagram.android.people.b.h.b(a).getFilter().filter(s);
        if (s.length() > 0)
        {
            h.a(a, s);
            h.c(a);
            return;
        } else
        {
            com.instagram.android.people.b.h.d(a);
            com.instagram.android.people.b.h.e(a);
            return;
        }
    }

    public final void a(String s)
    {
        a.a(s);
    }
}
