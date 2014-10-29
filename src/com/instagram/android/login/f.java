// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import android.text.Editable;
import android.text.TextUtils;
import android.widget.EditText;

// Referenced classes of package com.instagram.android.login:
//            i, d, j

final class f extends i
{

    final d a;

    f(d d1)
    {
        a = d1;
        super((byte)0);
    }

    public final void afterTextChanged(Editable editable)
    {
        if (d.b(a) && TextUtils.getTrimmedLength(d.a(a).getText()) >= 6)
        {
            d.a(a, false);
        }
        if (d.c(a) != null)
        {
            d.c(a).a();
        }
    }
}
