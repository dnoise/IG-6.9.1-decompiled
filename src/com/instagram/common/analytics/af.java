// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.os.Handler;
import com.instagram.common.p.b.b;
import java.util.List;

// Referenced classes of package com.instagram.common.analytics:
//            ab, i, b

final class af
    implements Runnable
{

    final ab a;
    private com.instagram.common.analytics.b b;

    private af(ab ab1, com.instagram.common.analytics.b b1)
    {
        a = ab1;
        super();
        b = b1;
    }

    af(ab ab1, com.instagram.common.analytics.b b1, byte byte0)
    {
        this(ab1, b1);
    }

    public final void run()
    {
        ab.a(a, b);
        com.instagram.common.analytics.b _tmp = b;
        ab.h(a).a(b);
        ab.i(a).removeMessages(2);
        if (ab.h(a).b().size() >= 50)
        {
            ab.j(a);
        } else
        {
            ab.i(a).sendEmptyMessageDelayed(2, 15000L);
        }
        if (com.instagram.common.p.b.b.a().b())
        {
            ab.k(a);
        }
    }
}
