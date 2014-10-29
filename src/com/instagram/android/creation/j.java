// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation;

import com.instagram.android.a.d;
import com.instagram.ui.widget.searchedittext.SearchEditText;
import com.instagram.ui.widget.searchedittext.b;

// Referenced classes of package com.instagram.android.creation:
//            d

final class j extends b
{

    final com.instagram.android.creation.d a;

    j(com.instagram.android.creation.d d1)
    {
        a = d1;
        super();
    }

    public final void a(SearchEditText searchedittext, CharSequence charsequence)
    {
        d.a(a, searchedittext.getSearchString());
        com.instagram.android.creation.d.b(a).a(d.i(a));
    }

    public final void a(String s)
    {
        d.a(a, s);
        d.a(a.p(), d.i(a), com.instagram.android.creation.d.d(a));
    }
}
