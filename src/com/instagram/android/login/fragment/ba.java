// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.facebook.az;
import com.instagram.o.e;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            bt, an, bx

final class ba extends bt
{

    final an a;

    ba(an an1)
    {
        a = an1;
        super(an1, (byte)0);
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            b.B.c();
            return;
        }
        if (com.instagram.android.login.fragment.an.e(a).length() < 6)
        {
            an.d(a, com.instagram.android.login.fragment.bx.b);
            e.a(az.password_must_be_six_characters);
            return;
        } else
        {
            b.C.c();
            return;
        }
    }
}
