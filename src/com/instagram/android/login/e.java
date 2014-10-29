// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import android.view.View;
import android.widget.EditText;
import com.facebook.az;

// Referenced classes of package com.instagram.android.login:
//            d

final class e
    implements android.view.View.OnFocusChangeListener
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
label0:
        {
            if (!flag)
            {
                String s = d.a(a).getText().toString().trim();
                d.a(a).setText(s);
                if (s.length() >= 6)
                {
                    break label0;
                }
                d.a(a, true);
                com.instagram.o.e.a(az.password_must_be_six_characters);
            }
            return;
        }
        d.a(a, false);
    }
}
