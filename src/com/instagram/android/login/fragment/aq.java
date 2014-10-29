// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.text.TextUtils;
import com.instagram.android.g.a;
import com.instagram.android.login.b.d;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            ap, an, bx

final class aq
    implements Runnable
{

    final a a;
    final ap b;

    aq(ap ap1, a a1)
    {
        b = ap1;
        a = a1;
        super();
    }

    public final void run()
    {
        String s = com.instagram.android.login.fragment.an.a(b.a);
        if (TextUtils.isEmpty(s))
        {
            if (a.b() && a.a().equals(an.k(b.a)))
            {
                an.c(b.a, a.a());
            }
        } else
        if (s.equals(a.a()))
        {
            if (a.b())
            {
                com.instagram.android.login.fragment.an.a(b.a, bx.c);
                b.z.b().a("username", s).a();
                return;
            } else
            {
                com.instagram.android.login.fragment.an.a(b.a, com.instagram.android.login.fragment.bx.b);
                d.a(a);
                return;
            }
        }
    }
}
