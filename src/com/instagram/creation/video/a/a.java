// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.a;

import android.graphics.SurfaceTexture;
import android.opengl.Matrix;
import com.instagram.creation.video.gl.aa;
import com.instagram.creation.video.gl.c;
import com.instagram.creation.video.gl.x;
import com.instagram.creation.video.ui.q;

// Referenced classes of package com.instagram.creation.video.a:
//            b, c

public final class a extends aa
{

    private boolean b;
    private boolean c;
    private b d;
    private final float e[] = new float[16];
    private com.instagram.creation.video.ui.a f;
    private q g;
    private int h;
    private x i;
    private Object j;
    private com.instagram.creation.video.a.c k;
    private int l;
    private int m;
    private int n;
    private int o;
    private float p;
    private float q;
    private boolean r;
    private boolean s;
    private float t;
    private Runnable u;

    public a(b b1)
    {
        f = new com.instagram.creation.video.ui.a();
        g = new q();
        h = 0;
        j = new Object();
        p = 1.0F;
        q = 1.0F;
        s = false;
        t = 1.0F;
        d = b1;
    }

    private void a(c c1)
    {
        int i1 = i.b();
        int j1 = i.c();
        c1.a(i);
        c1.a(0.0F, j1);
        c1.b(1.0F, -1F);
        g().getTransformMatrix(e);
        a(e);
        c1.a(a, e, 0, 0, i1, j1);
        c1.f();
    }

    private void c(int i1, int j1)
    {
        (new StringBuilder("preview layout size: ")).append(i1).append("/").append(j1);
        l = i1;
        m = j1;
        j();
    }

    private int h()
    {
        return super.a();
    }

    private int i()
    {
        return super.b();
    }

    private void j()
    {
        if (!s)
        {
            q = 1.0F;
            p = 1.0F;
            n = h();
            o = i();
            return;
        }
        float f1;
        float f3;
        float f4;
        if (h() > i())
        {
            f1 = (float)h() / (float)i();
        } else
        {
            f1 = (float)i() / (float)h();
        }
        if (l > m)
        {
            float f5 = Math.max(l, (int)(f1 * (float)m));
            f3 = Math.max(m, (int)((float)l / f1));
            f4 = f5;
        } else
        {
            float f2 = Math.max(l, (int)((float)m / f1));
            f3 = Math.max(m, (int)(f1 * (float)l));
            f4 = f2;
        }
        p = (float)l / f4;
        q = (float)m / f3;
        n = Math.round(f4);
        o = Math.round(f3);
        (new StringBuilder("aspect ratio clamping enabled, surfaceTexture scale: ")).append(p).append(", ").append(q);
    }

    private void k()
    {
        if (k != null)
        {
            com.instagram.creation.video.a.c _tmp = k;
            k = null;
        }
    }

    public final int a()
    {
        if (s)
        {
            return l;
        } else
        {
            return h();
        }
    }

    public final void a(int i1, int j1)
    {
        super.a(i1, j1);
        s = false;
        if (l == 0)
        {
            l = i1;
            m = j1;
        }
        j();
    }

    public final void a(c c1, int i1, int j1, int k1, int l1)
    {
        super.b(c1, i1, j1, k1, l1);
    }

    public final void a(boolean flag)
    {
        synchronized (j)
        {
            r = true;
        }
    }

    protected final void a(float af[])
    {
        super.a(af);
        Matrix.translateM(af, 0, 0.5F, 0.5F, 0.0F);
        Matrix.scaleM(af, 0, p, q, 1.0F);
        Matrix.translateM(af, 0, -0.5F, -0.5F, 0.0F);
    }

    public final int b()
    {
        if (s)
        {
            return m;
        } else
        {
            return i();
        }
    }

    public final void b(int i1, int j1)
    {
        synchronized (j)
        {
            g.a(i1);
            c(i1, j1);
        }
    }

    public final void b(c c1, int i1, int j1, int k1, int l1)
    {
        Object obj = j;
        obj;
        JVM INSTR monitorenter ;
        SurfaceTexture surfacetexture;
        if (!b)
        {
            b = true;
        }
        surfacetexture = g();
        if (surfacetexture == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        if (c)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        float f1;
        if (u != null)
        {
            u.run();
            u = null;
        }
        f1 = c1.a();
        c1.a(t);
        h;
        JVM INSTR tableswitch 0 6: default 128
    //                   0 201
    //                   1 277
    //                   2 128
    //                   3 215
    //                   4 241
    //                   5 241
    //                   6 268;
           goto _L1 _L2 _L3 _L1 _L4 _L5 _L5 _L6
_L1:
        if (h != 2 && h != 7) goto _L8; else goto _L7
_L7:
        if (h != 2) goto _L10; else goto _L9
_L9:
        if (r) goto _L12; else goto _L11
_L11:
        boolean flag = false;
_L15:
        if (!flag) goto _L14; else goto _L13
_L13:
        d.d();
_L8:
        c1.a(f1);
        k();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        super.b(c1, i1, j1, k1, l1);
          goto _L1
_L4:
        a(c1);
        g.a(k1, l1);
        d;
        h = 4;
_L5:
        surfacetexture.updateTexImage();
        g.a(c1, i1, j1, k1, l1, i);
          goto _L1
_L6:
        h = 7;
          goto _L1
_L3:
        a(c1);
        d;
        h = 2;
          goto _L1
_L12:
        flag = f.a(c1, this, i);
          goto _L15
_L10:
        flag = g.a(c1, i1, j1, k1, l1, this, i);
          goto _L15
_L14:
        h = 0;
        super.b(c1, i1, j1, k1, l1);
          goto _L8
    }

    public final void c()
    {
        s = true;
        j();
    }

    public final void d()
    {
        synchronized (j)
        {
            c = false;
            super.d();
            i = new x(h(), i());
        }
    }

    public final void e()
    {
        synchronized (j)
        {
            super.e();
            h = 0;
        }
    }

    public final void f()
    {
        synchronized (j)
        {
            b = false;
        }
    }

    public final void onFrameAvailable(SurfaceTexture surfacetexture)
    {
label0:
        {
            synchronized (j)
            {
                if (g() == surfacetexture)
                {
                    break label0;
                }
            }
            return;
        }
        c = true;
        if (b)
        {
            if (h == 5)
            {
                h = 6;
            }
            d.d();
        }
        obj;
        JVM INSTR monitorexit ;
    }
}
