// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import java.util.concurrent.CountDownLatch;

// Referenced classes of package android.support.v4.a:
//            i, a

final class b extends i
    implements Runnable
{

    Object a;
    boolean b;
    final a c;
    private CountDownLatch e;

    b(a a1)
    {
        c = a1;
        super();
        e = new CountDownLatch(1);
    }

    private transient Object e()
    {
        a = c.e();
        return a;
    }

    protected final void a()
    {
        a a1 = c;
        a;
        a1.a(this);
        e.countDown();
        return;
        Exception exception;
        exception;
        e.countDown();
        throw exception;
    }

    protected final void a(Object obj)
    {
        c.a(this, obj);
        e.countDown();
        return;
        Exception exception;
        exception;
        e.countDown();
        throw exception;
    }

    protected final Object b()
    {
        return e();
    }

    public final void run()
    {
        b = false;
        c.c();
    }
}
