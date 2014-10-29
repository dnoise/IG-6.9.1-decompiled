// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.lux;

import com.instagram.cliffjumper.edit.photo.jpeg.JpegBridge;
import com.instagram.cliffjumper.edit.photo.jpeg.NativeImage;
import com.instagram.filterkit.d.b;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.lux:
//            b, c

public final class a
{

    private Set a;
    private CountDownLatch b;
    private boolean c;
    private int d;
    private int e;
    private float f;
    private float g;

    public a()
    {
        a = new HashSet();
        b = new CountDownLatch(1);
        d = -1;
        e = -1;
        f = -1F;
        g = -1F;
    }

    static float a(a a1, float f1)
    {
        a1.g = f1;
        return f1;
    }

    static int a(a a1, int i)
    {
        a1.e = i;
        return i;
    }

    static CountDownLatch a(a a1)
    {
        return a1.b;
    }

    static CountDownLatch a(a a1, CountDownLatch countdownlatch)
    {
        a1.b = countdownlatch;
        return countdownlatch;
    }

    static float b(a a1, float f1)
    {
        a1.f = f1;
        return f1;
    }

    static boolean b(a a1)
    {
        return a1.c;
    }

    static int c(a a1)
    {
        return a1.e;
    }

    static boolean d(a a1)
    {
        a1.c = false;
        return false;
    }

    public final float a()
    {
        float f1 = -1F;
        this;
        JVM INSTR monitorenter ;
        float f2 = f;
        if (f2 != f1)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        b.await();
        f1 = f;
_L2:
        this;
        JVM INSTR monitorexit ;
        return f1;
        Exception exception;
        exception;
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void a(c c1)
    {
        this;
        JVM INSTR monitorenter ;
        if (b.getCount() != 0L)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        if (e != -1)
        {
            JpegBridge.releaseNativeBuffer(e);
            e = -1;
        }
        b = new CountDownLatch(1);
        c = false;
_L1:
        if (a.remove(c1) && a.isEmpty() && d != -1)
        {
            com.instagram.filterkit.d.b.a(d);
            d = -1;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        c = true;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Executor executor, NativeImage nativeimage)
    {
        executor.execute(new com.instagram.cliffjumper.edit.photo.lux.b(this, nativeimage));
    }

    public final float b()
    {
        float f1 = -1F;
        this;
        JVM INSTR monitorenter ;
        float f2 = g;
        if (f2 != f1)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        b.await();
        f1 = g;
_L2:
        this;
        JVM INSTR monitorexit ;
        return f1;
        Exception exception;
        exception;
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final int b(c c1)
    {
        int i = -1;
        this;
        JVM INSTR monitorenter ;
        int j = d;
        if (j != i)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        b.await();
        d = JpegBridge.loadCDF(e);
        JpegBridge.releaseNativeBuffer(e);
        e = -1;
        a.add(c1);
        i = d;
_L2:
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
