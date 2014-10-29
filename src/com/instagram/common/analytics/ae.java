// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.instagram.common.analytics:
//            ar, ab

final class ae
    implements TextWatcher
{

    final ab a;

    ae(ab ab1)
    {
        a = ab1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        ab.a(a, ar.b);
    }
}
