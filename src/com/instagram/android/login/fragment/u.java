// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.instagram.android.login.fragment:
//            o

final class u
    implements TextWatcher
{

    final o a;

    private u(o o1)
    {
        a = o1;
        super();
    }

    u(o o1, byte byte0)
    {
        this(o1);
    }

    public final void afterTextChanged(Editable editable)
    {
        o.e(a);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
