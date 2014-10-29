// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u;

import com.instagram.common.y.c.e;
import java.util.concurrent.Executor;

public final class j
{

    private static Executor a;

    public static Executor a()
    {
        com/instagram/common/u/j;
        JVM INSTR monitorenter ;
        Executor executor;
        if (a == null)
        {
            a = e.a().a("notifications").b().c();
        }
        executor = a;
        com/instagram/common/u/j;
        JVM INSTR monitorexit ;
        return executor;
        Exception exception;
        exception;
        throw exception;
    }
}
