// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

abstract class bv
    implements TextWatcher
{

    final an b;

    private bv(an an1)
    {
        b = an1;
        super();
    }

    bv(an an1, byte byte0)
    {
        this(an1);
    }

    public abstract void a();

    public final void afterTextChanged(Editable editable)
    {
        if (!an.F(b))
        {
            a();
        }
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
