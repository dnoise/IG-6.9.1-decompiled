// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.facebook:
//            bo, bs, cc, ch

final class br
    implements Runnable
{

    final ch a;
    final Exception b;
    final bo c;

    br(bo bo1, ch ch, Exception exception)
    {
        c = bo1;
        a = ch;
        b = exception;
        super();
    }

    public final void run()
    {
        bs bs1;
        for (Iterator iterator = bo.b(c).iterator(); iterator.hasNext(); bo.a(bo.c(c), bs1))
        {
            bs1 = new bs(this, (cc)iterator.next());
        }

    }
}
