// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.d;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.b.d:
//            c

final class g
    implements Runnable
{

    final c a;

    g(c c1)
    {
        a = c1;
        super();
    }

    public final void run()
    {
        Object obj = c.b(a);
        obj;
        JVM INSTR monitorenter ;
        c.a(a, Boolean.valueOf(true));
        for (Iterator iterator = c.c(a).iterator(); iterator.hasNext(); ((Runnable)iterator.next()).run()) { }
        break MISSING_BLOCK_LABEL_69;
        Exception exception;
        exception;
        throw exception;
        c.c(a).clear();
        obj;
        JVM INSTR monitorexit ;
    }
}
