// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.a;

import android.content.Context;
import android.opengl.GLES20;
import com.instagram.filterkit.d.c;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.instagram.filterkit.a:
//            a, c

public final class b
{

    private final a a = new a();
    private final c b;
    private final ReentrantLock c = new ReentrantLock(true);
    private AtomicBoolean d;

    public b(Context context)
    {
        d = new AtomicBoolean(false);
        b = new c(context);
    }

    public final void a(com.instagram.filterkit.a.c c1)
    {
        a.a(c1);
        GLES20.glDisable(2929);
        d.set(true);
        d();
    }

    public final boolean a()
    {
        return d.get();
    }

    public final c b()
    {
        return b;
    }

    public final void c()
    {
        if (d.compareAndSet(true, false))
        {
            b.b();
            e();
            a.d();
        }
    }

    public final void d()
    {
        if (c.isHeldByCurrentThread())
        {
            return;
        } else
        {
            c.lock();
            a.a();
            return;
        }
    }

    public final void e()
    {
        if (!c.isHeldByCurrentThread())
        {
            return;
        } else
        {
            a.b();
            c.unlock();
            return;
        }
    }

    public final void f()
    {
        a.c();
    }
}
