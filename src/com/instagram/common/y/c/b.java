// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.c;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.instagram.common.y.c:
//            c

final class b
    implements ThreadFactory
{

    private final AtomicInteger a = new AtomicInteger(1);

    b()
    {
    }

    public final Thread newThread(Runnable runnable)
    {
        return new c(runnable, (new StringBuilder("IgExecutor #")).append(a.getAndIncrement()).toString(), 9);
    }
}
