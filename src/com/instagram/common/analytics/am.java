// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.instagram.common.p.b.b;

// Referenced classes of package com.instagram.common.analytics:
//            ab, m

final class am
    implements Runnable
{

    final ab a;

    private am(ab ab1)
    {
        a = ab1;
        super();
    }

    am(ab ab1, byte byte0)
    {
        this(ab1);
    }

    public final void run()
    {
        if (b.a().b())
        {
            ab.j(a);
            if (!ab.f(a).a())
            {
                ab.o(a);
            }
        }
    }
}
