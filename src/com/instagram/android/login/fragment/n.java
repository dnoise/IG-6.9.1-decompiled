// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.text.Editable;
import android.text.TextWatcher;
import com.instagram.registrationpush.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            h

final class n
    implements TextWatcher
{

    final h a;

    private n(h h1)
    {
        a = h1;
        super();
    }

    n(h h1, byte byte0)
    {
        this(h1);
    }

    public final void afterTextChanged(Editable editable)
    {
        (new a(a.n())).d();
        h.d(a);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
