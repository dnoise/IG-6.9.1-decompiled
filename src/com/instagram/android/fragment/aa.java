// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.common.y.e;
import com.instagram.ui.widget.searchedittext.SearchEditText;
import com.instagram.ui.widget.searchedittext.b;

// Referenced classes of package com.instagram.android.fragment:
//            y, ef, ej, eh, 
//            ea

public final class aa extends b
{

    final y a;

    protected aa(y y1)
    {
        a = y1;
        super();
    }

    public final void a(SearchEditText searchedittext, CharSequence charsequence)
    {
        y.a(a, e.a(searchedittext.getStrippedText()));
        if (charsequence == null || charsequence.length() <= 0) goto _L2; else goto _L1
_L1:
        char c = charsequence.charAt(0);
        if (c != '@') goto _L4; else goto _L3
_L3:
        a.a(com.instagram.android.fragment.ef.b);
_L2:
        y.d(a).c(y.c(a));
        com.instagram.android.fragment.y.e(a).c(y.c(a));
        return;
_L4:
        if (c == '#')
        {
            a.a(ef.a);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final void a(String s)
    {
        com.instagram.android.fragment.y.b(a).clearFocus();
        y.a(a).b(s);
    }
}
