// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import com.instagram.android.maps.a.a;
import com.instagram.common.j.d;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import com.instagram.feed.d.t;
import java.util.Set;

// Referenced classes of package com.instagram.android.maps.d:
//            a

final class e
    implements d
{

    final com.instagram.android.maps.d.a a;

    e(com.instagram.android.maps.d.a a1)
    {
        a = a1;
        super();
    }

    private boolean a(t t1)
    {
        return com.instagram.android.maps.d.a.c(a).contains(t1.a);
    }

    private void b(t t1)
    {
        if (ad.a().b(t1.a).C() != 0)
        {
            a.aa.a(t1.a);
            com.instagram.android.maps.d.a.c(a).remove(t1.a);
        }
    }

    public final volatile boolean a(com.instagram.common.j.a a1)
    {
        return a((t)a1);
    }

    public final volatile void b(com.instagram.common.j.a a1)
    {
        b((t)a1);
    }
}
