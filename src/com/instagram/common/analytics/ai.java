// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.os.Handler;

// Referenced classes of package com.instagram.common.analytics:
//            ab, i, b

final class ai
    implements Runnable
{

    final ab a;
    private final b b;

    private ai(ab ab1, b b1)
    {
        a = ab1;
        super();
        b = b1;
    }

    ai(ab ab1, b b1, byte byte0)
    {
        this(ab1, b1);
    }

    public final void run()
    {
        ab.a(a, b);
        b _tmp = b;
        if (ab.d(a) == null)
        {
            ab.a(a, ab.l(a));
            ab.d(a).g();
            ab.i(a).sendEmptyMessageDelayed(1, 5000L);
        }
        ab.d(a).a(b);
    }
}
