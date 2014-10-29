// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.instagram.common.y.e;
import com.instagram.registrationpush.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            bv, an, bx

final class av extends bv
{

    final an a;

    av(an an1)
    {
        a = an1;
        super(an1, (byte)0);
    }

    public final void a()
    {
        (new a(a.n())).d();
        if (an.x(a) != com.instagram.android.login.fragment.bx.a)
        {
            boolean flag = e.b(an.q(a));
            an an1 = a;
            bx bx1;
            if (flag)
            {
                bx1 = bx.c;
            } else
            {
                bx1 = bx.b;
            }
            an.c(an1, bx1);
        }
    }
}
