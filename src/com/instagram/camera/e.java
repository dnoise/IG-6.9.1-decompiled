// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import com.facebook.e.a.a;
import java.io.IOException;

// Referenced classes of package com.instagram.camera:
//            f, p, h, d

public class e
{

    private static e k;
    protected android.hardware.Camera.CameraInfo a[];
    private Camera b;
    private long c;
    private final Handler d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private android.hardware.Camera.Parameters j;

    public e()
    {
        int l = 0;
        super();
        c = 0L;
        e = 0;
        g = -1;
        h = -1;
        i = -1;
        HandlerThread handlerthread = new HandlerThread("CameraHolder");
        handlerthread.start();
        d = new f(this, handlerthread.getLooper());
        f = Camera.getNumberOfCameras();
        a = new android.hardware.Camera.CameraInfo[f];
        for (; l < f; l++)
        {
            a[l] = new android.hardware.Camera.CameraInfo();
            Camera.getCameraInfo(l, a[l]);
            if (h == -1 && a[l].facing == 0)
            {
                h = l;
            }
            if (i == -1 && a[l].facing == 1)
            {
                i = l;
            }
        }

    }

    static int a(e e1)
    {
        return e1.e;
    }

    public static e a()
    {
        com/instagram/camera/e;
        JVM INSTR monitorenter ;
        if (k == null)
        {
            if (!Build.MODEL.equals("PC36100") && !Build.MODEL.equals("HTC Desire S"))
            {
                break MISSING_BLOCK_LABEL_50;
            }
            k = new p();
        }
_L1:
        e e1 = k;
        com/instagram/camera/e;
        JVM INSTR monitorexit ;
        return e1;
        k = new e();
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    static void b(e e1)
    {
        e1.h();
    }

    private void h()
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        boolean flag1;
        long l;
        if (e == 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        com.instagram.camera.h.a(flag1);
        if (b == null)
        {
            flag = false;
        }
        com.instagram.camera.h.a(flag);
        l = SystemClock.elapsedRealtime();
        if (l >= c) goto _L2; else goto _L1
_L1:
        d.sendEmptyMessageDelayed(1, c - l);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        b.release();
        b = null;
        j = null;
        g = -1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public int a(int l, int i1)
    {
        return a[l].orientation;
    }

    public final boolean a(int l)
    {
        return a[l].facing == 1;
    }

    public final int b()
    {
        return f;
    }

    public final Camera b(int l)
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        Camera camera;
        Camera camera1;
        if (e != 0)
        {
            flag = false;
        }
        com.instagram.camera.h.a(flag);
        if (b != null && g != l)
        {
            b.release();
            b = null;
            g = -1;
        }
        camera = b;
        if (camera != null) goto _L2; else goto _L1
_L1:
        b = Camera.open(l);
        g = l;
        j = b.getParameters();
_L3:
        e = 1 + e;
        d.removeMessages(1);
        c = 0L;
        camera1 = b;
        this;
        JVM INSTR monitorexit ;
        return camera1;
        RuntimeException runtimeexception;
        runtimeexception;
        com.facebook.e.a.a.a("CameraHolder", "fail to connect Camera", runtimeexception);
        throw new d(runtimeexception);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        b.reconnect();
        b.setParameters(j);
          goto _L3
        IOException ioexception;
        ioexception;
        com.facebook.e.a.a.a("CameraHolder", "reconnect failed.");
        throw new d(ioexception);
    }

    public boolean c(int l)
    {
        return a(l);
    }

    public final android.hardware.Camera.CameraInfo[] c()
    {
        return a;
    }

    public final void d()
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        if (e != flag)
        {
            flag = false;
        }
        com.instagram.camera.h.a(flag);
        e = -1 + e;
        b.stopPreview();
        h();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void e()
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        if (e != flag && e != 0)
        {
            flag = false;
        }
        com.instagram.camera.h.a(flag);
        c = 3000L + SystemClock.elapsedRealtime();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final int f()
    {
        return h;
    }

    public final int g()
    {
        return i;
    }
}
