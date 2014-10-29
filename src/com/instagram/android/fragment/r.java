// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.instagram.android.fragment:
//            o

final class r
    implements TextWatcher
{

    final o a;

    r(o o1)
    {
        a = o1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
        o.b(a);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
