// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;

import android.text.TextUtils;
import com.instagram.common.a.a.j;
import com.instagram.common.analytics.a;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.common.l.a.e;

// Referenced classes of package com.instagram.m:
//            l, k

final class m extends j
{

    final l a;

    private m(l l1)
    {
        a = l1;
        super();
    }

    m(l l1, byte byte0)
    {
        this(l1);
    }

    public final void b(e e1)
    {
        com.instagram.common.analytics.a.a().a((new b("qe_failure", null)).a("device_id", k.c(a.a)).a("experiments", TextUtils.join(",", com.instagram.m.k.b(a.a))));
        if (e1.a())
        {
            com.instagram.m.k.d();
            (new Object[1])[0] = ((com.instagram.api.k.a.d)e1.b()).k();
        }
    }
}
