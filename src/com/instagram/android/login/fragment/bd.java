// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.instagram.registrationpush.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            bv, an, bx

final class bd extends bv
{

    final an a;

    bd(an an1)
    {
        a = an1;
        super(an1, (byte)0);
    }

    public final void a()
    {
        (new a(a.n())).d();
        if (an.B(a) != com.instagram.android.login.fragment.bx.a)
        {
            boolean flag;
            an an1;
            bx bx1;
            if (an.e(a).length() >= 6)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            an1 = a;
            if (flag)
            {
                bx1 = bx.c;
            } else
            {
                bx1 = bx.b;
            }
            an.d(an1, bx1);
        }
    }
}
