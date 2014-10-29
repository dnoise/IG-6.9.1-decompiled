// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o;


public final class a
{

    private static a a = new a();
    private volatile boolean b;

    public a()
    {
    }

    public static a a()
    {
        return a;
    }

    public final void b()
    {
        this;
        JVM INSTR monitorenter ;
        b = true;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = b;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        throw new RuntimeException(interruptedexception);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

}
