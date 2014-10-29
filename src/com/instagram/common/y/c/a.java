// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.c;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.instagram.common.y.c:
//            b

public final class a
{

    private static final ThreadFactory a;
    private static final BlockingQueue b;
    private static final Executor c;

    public static Executor a()
    {
        return c;
    }

    static 
    {
        a = new b();
        b = new LinkedBlockingQueue(10);
        c = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, b, a);
    }
}
