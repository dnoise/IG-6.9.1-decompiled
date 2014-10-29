// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import android.graphics.RectF;
import android.opengl.GLU;
import android.opengl.Matrix;
import com.instagram.creation.video.l.j;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL11;
import javax.microedition.khronos.opengles.GL11Ext;
import javax.microedition.khronos.opengles.GL11ExtensionPack;

// Referenced classes of package com.instagram.creation.video.gl:
//            c, f, a, e, 
//            h, x

public final class d
    implements c
{

    private static final float d[] = {
        0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 0.0F, 0.0F, 
        1.0F, 1.0F, 0.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 1.0F, 0.0F
    };
    int a;
    int b;
    int c;
    private final GL11 e;
    private final float f[] = new float[16];
    private final float g[] = new float[16];
    private final float h[] = new float[4];
    private final float i[] = new float[4];
    private int j;
    private final f k;
    private final ArrayList l = new ArrayList();
    private float m;
    private final ArrayList n = new ArrayList();
    private e o;
    private final RectF p = new RectF();
    private final RectF q = new RectF();
    private final float r[] = new float[32];
    private final com.instagram.creation.video.l.d s = new com.instagram.creation.video.l.d();
    private final com.instagram.creation.video.l.d t = new com.instagram.creation.video.l.d();
    private int u;
    private int v;
    private boolean w;
    private int x[];
    private x y;

    d(GL11 gl11)
    {
        w = true;
        x = new int[1];
        e = gl11;
        k = new f(gl11);
        g();
    }

    private void a(a a1, int i1, int j1, int k1, int l1, float f1)
    {
        if (k1 > 0 && l1 > 0)
        {
            f f2 = k;
            boolean flag;
            if (w && (!a1.m() || f1 < 0.95F))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            f2.a(flag);
            if (b(a1))
            {
                k.a(f1);
                b(a1, i1, j1, k1, l1);
                return;
            }
        }
    }

    private void a(e e1)
    {
        e1.c = o;
        o = e1;
    }

    private static void a(GL11ExtensionPack gl11extensionpack)
    {
        int i1 = gl11extensionpack.glCheckFramebufferStatusOES(36160);
        if (i1 == 36053) goto _L2; else goto _L1
_L1:
        String s1 = "";
        i1;
        JVM INSTR tableswitch 36054 36061: default 64
    //                   36054 104
    //                   36055 110
    //                   36056 64
    //                   36057 134
    //                   36058 98
    //                   36059 116
    //                   36060 122
    //                   36061 128;
           goto _L3 _L4 _L5 _L3 _L6 _L7 _L8 _L9 _L10
_L3:
        throw new RuntimeException((new StringBuilder()).append(s1).append(":").append(Integer.toHexString(i1)).toString());
_L7:
        s1 = "FRAMEBUFFER_FORMATS";
        continue; /* Loop/switch isn't completed */
_L4:
        s1 = "FRAMEBUFFER_ATTACHMENT";
        continue; /* Loop/switch isn't completed */
_L5:
        s1 = "FRAMEBUFFER_MISSING_ATTACHMENT";
        continue; /* Loop/switch isn't completed */
_L8:
        s1 = "FRAMEBUFFER_DRAW_BUFFER";
        continue; /* Loop/switch isn't completed */
_L9:
        s1 = "FRAMEBUFFER_READ_BUFFER";
        continue; /* Loop/switch isn't completed */
_L10:
        s1 = "FRAMEBUFFER_UNSUPPORTED";
        continue; /* Loop/switch isn't completed */
_L6:
        s1 = "FRAMEBUFFER_INCOMPLETE_DIMENSIONS";
        if (true) goto _L3; else goto _L2
_L2:
    }

    static float[] a(d d1)
    {
        return d1.f;
    }

    private float[] a(float af[], int i1, int j1, int k1, int l1)
    {
        float af1[] = h;
        float f1 = af[0] * (float)i1 + af[4] * (float)j1 + af[12];
        float f2 = af[1] * (float)i1 + af[5] * (float)j1 + af[13];
        float f3 = af[3] * (float)i1 + af[7] * (float)j1 + af[15];
        af1[0] = f1 / f3;
        af1[1] = f2 / f3;
        float f4 = af[0] * (float)k1 + af[4] * (float)l1 + af[12];
        float f5 = af[1] * (float)k1 + af[5] * (float)l1 + af[13];
        float f6 = af[3] * (float)k1 + af[7] * (float)l1 + af[15];
        af1[2] = f4 / f6;
        af1[3] = f5 / f6;
        return af1;
    }

    private static ByteBuffer b(int i1)
    {
        return ByteBuffer.allocateDirect(i1).order(ByteOrder.nativeOrder());
    }

    private void b(float f1, float f2, float f3, float f4)
    {
        GL11 gl11 = e;
        i();
        a(f1, f2);
        b(f3, f4);
        gl11.glLoadMatrixf(f, 0);
        gl11.glDrawArrays(5, 0, 4);
        j();
        b = 1 + b;
    }

    private void b(a a1, int i1, int j1, int k1, int l1)
    {
        if (b(f))
        {
            if (a1.f())
            {
                c(1.0F / (float)a1.d(), 1.0F / (float)a1.e(), ((float)a1.b() - 1.0F) / (float)a1.d(), ((float)a1.c() - 1.0F) / (float)a1.e());
            } else
            {
                c(0.0F, 0.0F, (float)a1.b() / (float)a1.d(), (float)a1.c() / (float)a1.e());
            }
            b(i1, j1, k1, l1);
        } else
        {
            float af[] = a(f, i1, j1 + l1, i1 + k1, j1);
            int i2 = (int)(0.5F + af[0]);
            int j2 = (int)(0.5F + af[1]);
            int k2 = (int)(0.5F + af[2]) - i2;
            int l2 = (int)(0.5F + af[3]) - j2;
            if (k2 > 0 && l2 > 0)
            {
                ((GL11Ext)e).glDrawTexiOES(i2, j2, 0, k2, l2);
                c = 1 + c;
                return;
            }
        }
    }

    private void b(x x1)
    {
        GL11ExtensionPack gl11extensionpack = (GL11ExtensionPack)e;
        if (y == null && x1 != null)
        {
            com.instagram.creation.video.gl.h.b(1, x);
            gl11extensionpack.glBindFramebufferOES(36160, x[0]);
        }
        if (y != null && x1 == null)
        {
            gl11extensionpack.glBindFramebufferOES(36160, 0);
            gl11extensionpack.glDeleteFramebuffersOES(1, x, 0);
        }
        y = x1;
        if (x1 == null)
        {
            a(u, v);
            return;
        }
        a(x1.b(), x1.c());
        if (!x1.h())
        {
            x1.c(this);
        }
        gl11extensionpack.glFramebufferTexture2DOES(36160, 36064, 3553, x1.a(), 0);
        a(gl11extensionpack);
    }

    private boolean b(a a1)
    {
        if (!a1.b(this))
        {
            return false;
        } else
        {
            int i1 = a1.g();
            k.a(i1);
            e.glBindTexture(i1, a1.a());
            return true;
        }
    }

    private static boolean b(float af[])
    {
        boolean flag;
label0:
        {
            if (Math.abs(af[4]) <= 1E-05F && Math.abs(af[1]) <= 1E-05F && af[0] >= -1E-05F)
            {
                int i1 = af[5] != 1E-05F;
                flag = false;
                if (i1 <= 0)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    private void c(float f1, float f2, float f3, float f4)
    {
        e.glMatrixMode(5890);
        g[0] = f3 - f1;
        g[5] = f4 - f2;
        g[10] = 1.0F;
        g[12] = f1;
        g[13] = f2;
        g[15] = 1.0F;
        e.glLoadMatrixf(g, 0);
        e.glMatrixMode(5888);
    }

    private void c(float af[])
    {
        e.glMatrixMode(5890);
        e.glLoadMatrixf(af, 0);
        e.glMatrixMode(5888);
    }

    private void g()
    {
        GL11 gl11 = e;
        FloatBuffer floatbuffer = b((32 * d.length) / 8).asFloatBuffer();
        floatbuffer.put(d, 0, d.length).position(0);
        int ai[] = new int[1];
        com.instagram.creation.video.gl.h.b(1, ai);
        j = ai[0];
        gl11.glBindBuffer(34962, j);
        gl11.glBufferData(34962, 4 * floatbuffer.capacity(), floatbuffer, 35044);
        gl11.glVertexPointer(2, 5126, 0, 0);
        gl11.glTexCoordPointer(2, 5126, 0, 0);
        gl11.glClientActiveTexture(33985);
        gl11.glTexCoordPointer(2, 5126, 0, 0);
        gl11.glClientActiveTexture(33984);
        gl11.glEnableClientState(32888);
    }

    private e h()
    {
        if (o != null)
        {
            e e1 = o;
            o = e1.c;
            return e1;
        } else
        {
            return new e((byte)0);
        }
    }

    private void i()
    {
        System.arraycopy(f, 0, r, 0, 16);
    }

    private void j()
    {
        System.arraycopy(r, 0, f, 0, 16);
    }

    public final float a()
    {
        return m;
    }

    public final void a(float f1)
    {
        boolean flag;
        if (f1 >= 0.0F && f1 <= 1.0F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.creation.video.l.j.a(flag);
        m = f1;
    }

    public final void a(float f1, float f2)
    {
        float af[] = f;
        af[12] = af[12] + (f1 * af[0] + f2 * af[4]);
        af[13] = af[13] + (f1 * af[1] + f2 * af[5]);
        af[14] = af[14] + (f1 * af[2] + f2 * af[6]);
        af[15] = af[15] + (f1 * af[3] + f2 * af[7]);
    }

    public final void a(float f1, float f2, float f3, float f4)
    {
        k.a(0xff000000, m);
        GL11 gl11 = e;
        i();
        a(f1, f2);
        b(f3, f4);
        gl11.glLoadMatrixf(f, 0);
        gl11.glDrawArrays(5, 0, 4);
        j();
        a = 1 + a;
    }

    public final void a(int i1)
    {
        e e1 = h();
        if ((i1 & 1) != 0)
        {
            e1.a = m;
        } else
        {
            e1.a = -1F;
        }
        if ((i1 & 2) != 0)
        {
            System.arraycopy(f, 0, e1.b, 0, 16);
        } else
        {
            e1.b[0] = (-1.0F / 0.0F);
        }
        n.add(e1);
    }

    public final void a(int i1, int j1)
    {
        boolean flag;
        GL11 gl11;
        float af[];
        if (i1 >= 0 && j1 >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.creation.video.l.j.a(flag);
        if (y == null)
        {
            u = i1;
            v = j1;
        }
        m = 1.0F;
        gl11 = e;
        gl11.glViewport(0, 0, i1, j1);
        gl11.glMatrixMode(5889);
        gl11.glLoadIdentity();
        GLU.gluOrtho2D(gl11, 0.0F, i1, 0.0F, j1);
        gl11.glMatrixMode(5888);
        gl11.glLoadIdentity();
        af = f;
        Matrix.setIdentityM(af, 0);
        if (y == null)
        {
            Matrix.translateM(af, 0, 0.0F, j1, 0.0F);
            Matrix.scaleM(af, 0, 1.0F, -1F, 1.0F);
        }
    }

    public final void a(a a1, int i1, int j1, int k1, int l1)
    {
        a(a1, i1, j1, k1, l1, m);
    }

    public final void a(a a1, float af[], int i1, int j1, int k1, int l1)
    {
        f f1 = k;
        boolean flag;
        if (w && (!a1.m() || m < 0.95F))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f1.a(flag);
        if (!b(a1))
        {
            return;
        } else
        {
            c(af);
            k.a(m);
            b(i1, j1, k1, l1);
            return;
        }
    }

    public final void a(x x1)
    {
        b();
        l.add(y);
        b(x1);
    }

    public final void a(float af[])
    {
        if (af != null && af.length == 4)
        {
            e.glClearColor(af[1], af[2], af[3], af[0]);
        } else
        {
            e.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
        }
        e.glClear(16384);
    }

    public final boolean a(a a1)
    {
label0:
        {
            synchronized (s)
            {
                if (a1.h())
                {
                    break label0;
                }
            }
            return false;
        }
        s.a(a1.a);
        d1;
        JVM INSTR monitorexit ;
        return true;
        exception;
        throw exception;
    }

    public final void b()
    {
        a(-1);
    }

    public final void b(float f1)
    {
        if (f1 == 0.0F)
        {
            return;
        } else
        {
            float af[] = r;
            Matrix.setRotateM(af, 0, f1, 0.0F, 0.0F, 1.0F);
            Matrix.multiplyMM(af, 16, f, 0, af, 0);
            System.arraycopy(af, 16, f, 0, 16);
            return;
        }
    }

    public final void b(float f1, float f2)
    {
        Matrix.scaleM(f, 0, f1, f2, 1.0F);
    }

    public final void c()
    {
        if (n.isEmpty())
        {
            throw new IllegalStateException();
        } else
        {
            e e1 = (e)n.remove(-1 + n.size());
            e1.a(this);
            a(e1);
            return;
        }
    }

    public final GL11 d()
    {
        return e;
    }

    public final void e()
    {
        synchronized (s)
        {
            com.instagram.creation.video.l.d d2 = s;
            if (d2.a() > 0)
            {
                com.instagram.creation.video.gl.h.a(e, d2.a(), d2.b());
                d2.c();
            }
            com.instagram.creation.video.l.d d3 = t;
            if (d3.a() > 0)
            {
                com.instagram.creation.video.gl.h.b(e, d3.a(), d3.b());
                d3.c();
            }
        }
    }

    public final void f()
    {
        b((x)l.remove(-1 + l.size()));
        c();
    }

}
