// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import android.view.View;
import android.widget.EditText;
import com.facebook.az;
import com.instagram.o.e;

// Referenced classes of package com.instagram.android.login:
//            d

final class g
    implements android.view.View.OnFocusChangeListener
{

    final d a;

    g(d d1)
    {
        a = d1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            String s = d.a(a).getText().toString();
            String s1 = d.d(a).getText().toString();
            if (!d.b(a) && !s.equals(s1))
            {
                d.b(a, true);
                e.a(az.passwords_do_not_match);
            }
        }
    }
}
