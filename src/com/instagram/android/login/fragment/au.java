// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.facebook.az;
import com.instagram.android.login.k;
import com.instagram.common.y.e;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            bt, an, bx

final class au extends bt
{

    final an a;

    au(an an1)
    {
        a = an1;
        super(an1, (byte)0);
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            b.G.c();
        } else
        {
            String s = an.q(a);
            if (an.v(a) != k.c && !e.b(s))
            {
                an.c(a, com.instagram.android.login.fragment.bx.b);
                com.instagram.o.e.a(az.please_enter_a_valid_email_address);
                return;
            }
            String s1 = com.instagram.android.login.b.a(an.p(a));
            if (an.v(a) != k.c && s1 != null)
            {
                an.f(a, s1);
                return;
            }
        }
    }
}
