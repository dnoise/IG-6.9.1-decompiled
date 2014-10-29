// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class l
    implements TextWatcher
{

    final a a;

    l(a a1)
    {
        a = a1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
        com.instagram.android.feed.comments.a.a.c(a);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
