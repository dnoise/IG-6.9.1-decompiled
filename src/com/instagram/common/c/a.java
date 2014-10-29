// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.c;

import android.os.Message;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.instagram.common.c:
//            f, g, b, c, 
//            d, h, e

public abstract class a
{

    private static final f a = new f((byte)0);
    private static volatile Executor b = com.instagram.common.y.c.a.a();
    private final h c = new b(this);
    private final FutureTask d;
    private volatile int e;
    private final AtomicBoolean f = new AtomicBoolean();

    public a()
    {
        e = g.a;
        d = new c(this, c);
    }

    private transient a a(Executor executor, Object aobj[])
    {
        if (e == g.a) goto _L2; else goto _L1
_L1:
        d.a[-1 + e];
        JVM INSTR tableswitch 1 2: default 44
    //                   1 75
    //                   2 85;
           goto _L2 _L3 _L4
_L2:
        e = g.b;
        a();
        c.b = aobj;
        executor.execute(d);
        return this;
_L3:
        throw new IllegalStateException("Cannot execute task: the task is already running.");
_L4:
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    }

    static Object a(a a1, Object obj)
    {
        return a1.c(obj);
    }

    static AtomicBoolean a(a a1)
    {
        return a1.f;
    }

    protected static transient void b()
    {
    }

    static void b(a a1, Object obj)
    {
        a1.b(obj);
    }

    private void b(Object obj)
    {
        if (!f.get())
        {
            c(obj);
        }
    }

    private Object c(Object obj)
    {
        a.obtainMessage(1, new e(this, new Object[] {
            obj
        })).sendToTarget();
        return obj;
    }

    static void c(a a1, Object obj)
    {
        a1.d(obj);
    }

    private boolean c()
    {
        return d.isCancelled();
    }

    private void d(Object obj)
    {
        if (!c())
        {
            a(obj);
        }
        e = g.c;
    }

    protected transient abstract Object a(Object aobj[]);

    protected void a()
    {
    }

    protected void a(Object obj)
    {
    }

    public final transient a b(Object aobj[])
    {
        return a(b, aobj);
    }

}
