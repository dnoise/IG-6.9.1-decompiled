// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.View;
import com.instagram.android.login.k;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

final class ar
    implements android.view.View.OnClickListener
{

    final an a;

    ar(an an1)
    {
        a = an1;
        super();
    }

    public final void onClick(View view)
    {
        if (an.v(a) == k.b)
        {
            b.ac.b().a("method", "phone").a();
            an.a(a, k.c);
            com.instagram.android.login.fragment.an.b(a, an.v(a));
        } else
        {
            b.ac.b().a("method", "email").a();
            an.a(a, k.b);
            com.instagram.android.login.fragment.an.b(a, an.v(a));
        }
        an.n(a);
    }
}
