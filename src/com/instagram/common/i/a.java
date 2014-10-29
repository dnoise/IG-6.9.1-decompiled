// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.i;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.instagram.common.i:
//            b

public class a
{

    private static ExecutorService a;

    public a()
    {
    }

    public static ExecutorService a()
    {
        com/instagram/common/i/a;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b("ErrorReportingThread-"));
        }
        com/instagram/common/i/a;
        JVM INSTR monitorexit ;
        return a;
        Exception exception;
        exception;
        throw exception;
    }
}
