// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import com.facebook.ac;
import com.facebook.bh;
import com.facebook.bn;
import com.facebook.bo;
import com.facebook.g.q;
import com.facebook.h.h;

// Referenced classes of package com.facebook.widget:
//            LoginButton

final class a
    implements bh
{

    final bo a;
    final LoginButton b;

    a(LoginButton loginbutton, bo bo)
    {
        b = loginbutton;
        a = bo;
        super();
    }

    public final void a(h h, bn bn1)
    {
        if (a == LoginButton.a(b).b())
        {
            LoginButton.a(b, h);
            if (LoginButton.b(b) != null)
            {
                LoginButton.b(b);
                LoginButton.c(b);
            }
        }
        if (bn1.a() != null)
        {
            b.a(bn1.a().e());
        }
    }
}
