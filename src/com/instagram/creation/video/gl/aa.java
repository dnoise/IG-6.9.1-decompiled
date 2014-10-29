// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import android.graphics.SurfaceTexture;
import com.instagram.creation.video.l.a;
import com.instagram.creation.video.ui.k;

// Referenced classes of package com.instagram.creation.video.gl:
//            c, b

public abstract class aa
    implements android.graphics.SurfaceTexture.OnFrameAvailableListener, k
{

    protected b a;
    private SurfaceTexture b;
    private int c;
    private int d;
    private float e[];
    private boolean f;

    public aa()
    {
        e = new float[16];
        f = false;
    }

    private static void a(SurfaceTexture surfacetexture)
    {
        surfacetexture.setOnFrameAvailableListener(null);
        if (a.e)
        {
            surfacetexture.release();
        }
    }

    private static void a(SurfaceTexture surfacetexture, int i, int j)
    {
        if (a.d)
        {
            surfacetexture.setDefaultBufferSize(i, j);
        }
    }

    public int a()
    {
        return c;
    }

    public void a(int i, int j)
    {
        c = i;
        d = j;
    }

    protected void a(float af[])
    {
    }

    public int b()
    {
        return d;
    }

    public void b(c c1, int i, int j, int l, int i1)
    {
        this;
        JVM INSTR monitorenter ;
        if (f)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        b.updateTexImage();
        b.getTransformMatrix(e);
        c1.a(2);
        int j1 = i + l / 2;
        int k1 = j + i1 / 2;
        c1.a(j1, k1);
        c1.b(1.0F, -1F);
        c1.a(-j1, -k1);
        c1.a(0.0F, i1 / 2 - l / 2);
        a(e);
        c1.a(a, e, i, j, l, i1);
        c1.c();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void d()
    {
        a = new b();
        a.a(c, d);
        b = new SurfaceTexture(a.a());
        a(b, c, d);
        b.setOnFrameAvailableListener(this);
        this;
        JVM INSTR monitorenter ;
        f = true;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void e()
    {
        this;
        JVM INSTR monitorenter ;
        f = false;
        this;
        JVM INSTR monitorexit ;
        a.i();
        a = null;
        a(b);
        b = null;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final SurfaceTexture g()
    {
        return b;
    }
}
