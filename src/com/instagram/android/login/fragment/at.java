// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.facebook.az;
import com.facebook.i.b;
import com.facebook.i.d;
import com.instagram.android.login.k;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.android.login.fragment:
//            bt, an, bx

final class at extends bt
{

    final an a;

    at(an an1)
    {
        a = an1;
        super(an1, (byte)0);
    }

    public final void a(boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        com.instagram.p.b.H.c();
_L4:
        return;
_L2:
        if (e.c(an.i(a)))
        {
            continue; /* Loop/switch isn't completed */
        }
        com.facebook.i.m m1 = an.w(a).b((new StringBuilder()).append(an.h(a)).append(an.i(a)).toString());
        com.facebook.i.m m = m1;
_L5:
        if (an.v(a) == k.c && (m == null || !an.w(a).a(m)))
        {
            com.instagram.android.login.fragment.an.b(a, com.instagram.android.login.fragment.bx.b);
            com.instagram.o.e.a(az.please_enter_a_valid_phone_number);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        b b1;
        b1;
        m = null;
          goto _L5
    }
}
