// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;

import android.text.TextUtils;
import com.instagram.common.a.a.k;
import com.instagram.common.analytics.a;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;

// Referenced classes of package com.instagram.m:
//            k, m

final class l
{

    final com.instagram.m.k a;

    l(com.instagram.m.k k1)
    {
        a = k1;
        super();
    }

    final void a(String s)
    {
        com.instagram.common.analytics.a.a().a((new b("qe_exposure", null)).a("device_id", k.c(a)).a("experiments", TextUtils.join(",", com.instagram.m.k.b(a))));
        com.instagram.m.a.a a1 = new com.instagram.m.a.a(k.c(a), s, null);
        a1.a(new m(this, (byte)0));
        com.instagram.m.k.d(a).a(a1);
    }
}
