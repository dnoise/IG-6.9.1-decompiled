// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package android.support.v4.a:
//            j, o, p, k, 
//            l, n, m, q

abstract class i
{

    private static final ThreadFactory a;
    private static final BlockingQueue b;
    private static final o c = new o((byte)0);
    public static final Executor d;
    private static volatile Executor e;
    private final q f = new k(this);
    private final FutureTask g;
    private volatile int h;
    private final AtomicBoolean i = new AtomicBoolean();

    public i()
    {
        h = p.a;
        g = new l(this, f);
    }

    static Object a(i i1, Object obj)
    {
        return i1.c(obj);
    }

    static AtomicBoolean a(i i1)
    {
        return i1.i;
    }

    static void b(i i1, Object obj)
    {
        i1.b(obj);
    }

    private void b(Object obj)
    {
        if (!i.get())
        {
            c(obj);
        }
    }

    private Object c(Object obj)
    {
        c.obtainMessage(1, new n(this, new Object[] {
            obj
        })).sendToTarget();
        return obj;
    }

    protected static transient void c()
    {
    }

    static void c(i i1, Object obj)
    {
        i1.d(obj);
    }

    private void d(Object obj)
    {
        if (f())
        {
            e();
        } else
        {
            a(obj);
        }
        h = p.c;
    }

    private void e()
    {
        a();
    }

    private boolean f()
    {
        return g.isCancelled();
    }

    public final transient i a(Executor executor)
    {
        if (h == p.a) goto _L2; else goto _L1
_L1:
        m.a[-1 + h];
        JVM INSTR tableswitch 1 2: default 44
    //                   1 71
    //                   2 81;
           goto _L2 _L3 _L4
_L2:
        h = p.b;
        f.b = null;
        executor.execute(g);
        return this;
_L3:
        throw new IllegalStateException("Cannot execute task: the task is already running.");
_L4:
        throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    }

    protected void a()
    {
    }

    protected void a(Object obj)
    {
    }

    protected transient abstract Object b();

    public final boolean d()
    {
        return g.cancel(false);
    }

    static 
    {
        a = new j();
        b = new LinkedBlockingQueue(10);
        d = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, b, a);
        e = d;
    }
}
