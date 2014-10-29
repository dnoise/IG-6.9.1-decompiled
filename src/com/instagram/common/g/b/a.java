// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.instagram.common.g.b:
//            b

public final class a
{

    static final Executor a;
    private static final ThreadFactory b;
    private static final BlockingQueue c;

    static 
    {
        b = new b();
        c = new LinkedBlockingQueue(10);
        a = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, c, b);
    }
}
