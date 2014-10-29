// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class r
    implements TextWatcher
{

    final c a;

    r(c c1)
    {
        a = c1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
        c.k(a);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
