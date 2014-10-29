// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.c;

import com.instagram.filterkit.a.b;
import com.instagram.filterkit.filter.IgFilter;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.filterkit.c:
//            d, e, b

final class g
    implements d
{

    final e a;

    private g(e e1)
    {
        a = e1;
        super();
    }

    g(e e1, byte byte0)
    {
        this(e1);
    }

    public final void a()
    {
        List list = e.e(a);
        list;
        JVM INSTR monitorenter ;
        for (Iterator iterator = e.e(a).iterator(); iterator.hasNext(); iterator.remove())
        {
            ((Runnable)iterator.next()).run();
        }

        break MISSING_BLOCK_LABEL_60;
        Exception exception;
        exception;
        throw exception;
        list;
        JVM INSTR monitorexit ;
        e.d(a);
        e.j(a).a(e.a(a).b(), e.c(a), e.i(a));
        e.d(a);
        com.instagram.filterkit.c.b b1;
        synchronized (e.k(a))
        {
            if (!e.h(a))
            {
                e.a(a).f();
            }
        }
        b1 = e.d(a);
        e.a(a);
        b1.b();
        return;
    }
}
