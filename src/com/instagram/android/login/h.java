// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import android.text.Editable;
import android.widget.EditText;

// Referenced classes of package com.instagram.android.login:
//            i, d, j

final class h extends i
{

    final d a;

    h(d d1)
    {
        a = d1;
        super((byte)0);
    }

    public final void afterTextChanged(Editable editable)
    {
        String s = d.a(a).getText().toString();
        String s1 = d.d(a).getText().toString();
        if (d.e(a) && s.equals(s1))
        {
            d.b(a, false);
        }
        if (d.c(a) != null)
        {
            d.c(a).a();
        }
    }
}
