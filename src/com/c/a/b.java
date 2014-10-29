// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.c.a;

import java.util.concurrent.Callable;

// Referenced classes of package com.c.a:
//            a

final class b
    implements Callable
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    private Void a()
    {
label0:
        {
            synchronized (a)
            {
                if (com.c.a.a.a(a) != null)
                {
                    break label0;
                }
            }
            return null;
        }
        com.c.a.a.b(a);
        if (com.c.a.a.c(a))
        {
            com.c.a.a.d(a);
            com.c.a.a.e(a);
        }
        a1;
        JVM INSTR monitorexit ;
        return null;
        exception;
        throw exception;
    }

    public final Object call()
    {
        return a();
    }
}
