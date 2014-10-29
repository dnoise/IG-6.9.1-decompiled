// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.e;

import android.graphics.SurfaceTexture;
import com.instagram.creation.video.e.c;

// Referenced classes of package com.instagram.creation.video.g.e:
//            e

class d
    implements android.graphics.SurfaceTexture.OnFrameAvailableListener
{

    private static final Class a = com/instagram/creation/video/g/e/d;
    private final SurfaceTexture b;
    private final e c;
    private final int d = 2500;
    private final Object e = new Object();
    private boolean f;
    private c g;

    d(SurfaceTexture surfacetexture, e e1, c c1)
    {
        b = surfacetexture;
        c = e1;
        g = c1;
    }

    public final void a()
    {
        long l;
        long l1;
        l = System.nanoTime();
        l1 = l + 0xf4240L * (long)d;
        Object obj = e;
        obj;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = f;
        if (flag || l >= l1)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        long l2;
        e.wait(d);
        l2 = System.nanoTime();
        l = l2;
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        Thread.currentThread().interrupt();
        throw new RuntimeException(interruptedexception);
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (!f)
        {
            throw new RuntimeException("Surface frame wait timed out");
        }
        f = false;
        obj;
        JVM INSTR monitorexit ;
        com.instagram.creation.base.d.a("before updateTexImage");
        b.updateTexImage();
        return;
    }

    public final void b()
    {
        c.a(b, g);
    }

    public void onFrameAvailable(SurfaceTexture surfacetexture)
    {
label0:
        {
            a;
            synchronized (e)
            {
                if (f)
                {
                    throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
                }
                break label0;
            }
        }
        f = true;
        e.notifyAll();
        obj;
        JVM INSTR monitorexit ;
    }

}
