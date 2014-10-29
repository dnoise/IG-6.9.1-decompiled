// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.c;

import com.facebook.d.b.b;
import com.instagram.common.y.b.a;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.y.c:
//            e, f

public final class d
    implements Executor
{

    private final a a;
    private final b b;
    private final String c;
    private final Executor d;
    private final int e;
    private final int f;
    private final int g;
    private final Queue h;
    private f i;

    private d(e e1)
    {
        a = com.instagram.common.y.c.e.a(e1);
        b = com.instagram.common.y.c.e.b(e1);
        c = com.instagram.common.y.c.e.c(e1);
        d = com.instagram.common.y.c.e.d(e1);
        e = com.instagram.common.y.c.e.e(e1);
        f = com.instagram.common.y.c.e.f(e1);
        g = com.instagram.common.y.c.e.g(e1);
        h = new LinkedList();
    }

    d(e e1, byte byte0)
    {
        this(e1);
    }

    static a a(d d1)
    {
        return d1.a;
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        i = (f)h.poll();
        if (i != null)
        {
            d.execute(i);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static int b(d d1)
    {
        return d1.g;
    }

    static String c(d d1)
    {
        return d1.c;
    }

    static b d(d d1)
    {
        return d1.b;
    }

    static int e(d d1)
    {
        return d1.e;
    }

    static int f(d d1)
    {
        return d1.f;
    }

    static void g(d d1)
    {
        d1.a();
    }

    public final void execute(Runnable runnable)
    {
        this;
        JVM INSTR monitorenter ;
        h.add(new f(this, runnable));
        if (i == null)
        {
            a();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
