// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import android.graphics.SurfaceTexture;
import android.opengl.GLUtils;
import com.facebook.e.a.a;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

// Referenced classes of package com.instagram.creation.video.gl:
//            k, o, p, z, 
//            m, l, n, g, 
//            i

public final class j
    implements Runnable
{

    private final Object a = new Object();
    private volatile boolean b;
    private SurfaceTexture c;
    private EGL10 d;
    private EGLDisplay e;
    private EGLConfig f;
    private EGLContext g;
    private EGLSurface h;
    private z i;
    private volatile int j;
    private volatile boolean k;
    private Object l;
    private int m;
    private p n;
    private g o;
    private g p;
    private j q;
    private Queue r;
    private final Object s = new Object();
    private volatile boolean t;
    private final Object u = new Object();
    private volatile boolean v;
    private volatile boolean w;
    private boolean x;
    private boolean y;

    public j(SurfaceTexture surfacetexture, int i1)
    {
        k = false;
        o = new k(this);
        p = o;
        v = false;
        c = surfacetexture;
        l = new Object();
        j = com.instagram.creation.video.gl.o.a;
        m = i1;
        r = new LinkedList();
        g = EGL10.EGL_NO_CONTEXT;
        h = EGL10.EGL_NO_SURFACE;
        e = EGL10.EGL_NO_DISPLAY;
    }

    static int a(j j1)
    {
        return j1.m;
    }

    static int a(j j1, int i1)
    {
        j1.m = i1;
        return i1;
    }

    private EGLContext a(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig)
    {
        int ai[] = {
            12440, 2, 12344
        };
        EGLContext eglcontext;
        if (q == null)
        {
            eglcontext = EGL10.EGL_NO_CONTEXT;
        } else
        {
            eglcontext = q.g;
        }
        return egl10.eglCreateContext(egldisplay, eglconfig, eglcontext, ai);
    }

    private void a(g g1)
    {
        if (g1 == null)
        {
            p = o;
            return;
        } else
        {
            p = g1;
            return;
        }
    }

    static void a(j j1, g g1)
    {
        j1.a(g1);
    }

    static p b(j j1)
    {
        return j1.n;
    }

    private void h()
    {
        j();
        y = true;
        v = false;
        b = false;
        t = false;
        if (n == null)
        {
            throw new IllegalStateException("No renderer defined for GL context. Make sure to set it in the controller constructor.");
        }
        n.a(m);
        if (i != null)
        {
            i.H_();
            x = true;
        }
_L2:
        Object obj = l;
        obj;
        JVM INSTR monitorenter ;
        int i1;
        int j1;
        if (k)
        {
            break MISSING_BLOCK_LABEL_259;
        }
        i1 = j;
        j1 = o.b;
        if (i1 != j1)
        {
            break MISSING_BLOCK_LABEL_259;
        }
        Exception exception;
        Object obj1;
        Exception exception1;
        Queue queue;
        Exception exception2;
        try
        {
            l.wait();
        }
        catch (InterruptedException interruptedexception1) { }
        k = false;
        obj;
        JVM INSTR monitorexit ;
        obj1 = u;
        obj1;
        JVM INSTR monitorenter ;
        if (w || !v)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        i.I_();
        try
        {
            u.wait();
        }
        catch (InterruptedException interruptedexception) { }
        if (!b)
        {
            i.d();
        }
        w = false;
        if (b)
        {
            break; /* Loop/switch isn't completed */
        }
        i();
        if (i != null && i.g())
        {
            break; /* Loop/switch isn't completed */
        }
        queue = r;
        queue;
        JVM INSTR monitorenter ;
        for (Iterator iterator = r.iterator(); iterator.hasNext(); ((Runnable)iterator.next()).run()) { }
        break MISSING_BLOCK_LABEL_277;
        exception2;
        throw exception2;
        Thread.yield();
        break MISSING_BLOCK_LABEL_112;
        exception;
        throw exception;
        exception1;
        throw exception1;
        r.clear();
        queue;
        JVM INSTR monitorexit ;
label0:
        {
            n.a(p);
            synchronized (a)
            {
                if (p == o && !b && !d.eglSwapBuffers(e, h))
                {
                    throw new RuntimeException((new StringBuilder("Cannot swap buffers ")).append(b).toString());
                }
                break label0;
            }
        }
        obj2;
        JVM INSTR monitorexit ;
        n();
        if (i != null)
        {
            i.e();
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void i()
    {
        if ((!g.equals(d.eglGetCurrentContext()) || !h.equals(d.eglGetCurrentSurface(12377))) && !d.eglMakeCurrent(e, h, h, g))
        {
            throw new RuntimeException((new StringBuilder("eglMakeCurrent failed ")).append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
        } else
        {
            return;
        }
    }

    private void j()
    {
        int i1;
        d = (EGL10)EGLContext.getEGL();
        e = d.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (e == EGL10.EGL_NO_DISPLAY)
        {
            throw new RuntimeException((new StringBuilder("eglGetDisplay failed ")).append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
        }
        int ai[] = new int[2];
        if (!d.eglInitialize(e, ai))
        {
            throw new RuntimeException((new StringBuilder("eglInitialize failed ")).append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
        }
        f = k();
        if (f == null)
        {
            throw new RuntimeException("eglConfig not initialized");
        }
        g = a(d, e, f);
        if (c == null)
        {
            int ai1[] = {
                12375, 1, 12374, 1, 12344
            };
            h = d.eglCreatePbufferSurface(e, f, ai1);
        } else
        {
            h = d.eglCreateWindowSurface(e, f, c, null);
        }
        if (h != null && h != EGL10.EGL_NO_SURFACE) goto _L2; else goto _L1
_L1:
        i1 = d.eglGetError();
        if (i1 != 12299) goto _L4; else goto _L3
_L3:
        com.facebook.e.a.a.a("GLRenderContext", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
_L6:
        return;
_L4:
        throw new RuntimeException((new StringBuilder("createWindowSurface failed ")).append(GLUtils.getEGLErrorString(i1)).toString());
_L2:
        if (!d.eglMakeCurrent(e, h, h, g))
        {
            throw new RuntimeException((new StringBuilder("eglMakeCurrent failed ")).append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private EGLConfig k()
    {
        int ai[] = new int[1];
        EGLConfig aeglconfig[] = new EGLConfig[1];
        int ai1[] = l();
        if (!d.eglChooseConfig(e, ai1, aeglconfig, 1, ai))
        {
            throw new IllegalArgumentException((new StringBuilder("eglChooseConfig failed ")).append(GLUtils.getEGLErrorString(d.eglGetError())).toString());
        }
        if (ai[0] > 0)
        {
            return aeglconfig[0];
        } else
        {
            return null;
        }
    }

    private static int[] l()
    {
        return (new int[] {
            12352, 4, 12324, 8, 12324, 8, 12323, 8, 12322, 8, 
            12321, 8, 12325, 16, 12326, 0, 12344
        });
    }

    private void m()
    {
        d.eglMakeCurrent(e, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        d.eglDestroyContext(e, g);
        d.eglDestroySurface(e, h);
        d.eglTerminate(e);
    }

    private void n()
    {
        int i1 = d.eglGetError();
        if (i1 != 12288)
        {
            (new StringBuilder("EGL error = 0x")).append(Integer.toHexString(i1));
        }
    }

    public final void a()
    {
        synchronized (u)
        {
            v = true;
        }
        f();
    }

    public final void a(int i1)
    {
        if (j != i1 && j == o.b)
        {
            j = i1;
            f();
            return;
        } else
        {
            j = i1;
            return;
        }
    }

    public final void a(SurfaceTexture surfacetexture, int i1)
    {
        if (h == null || h == EGL10.EGL_NO_SURFACE)
        {
            c = surfacetexture;
            m = i1;
        }
    }

    public final void a(i i1)
    {
        r.offer(new m(this, i1));
    }

    public final void a(p p1)
    {
        if (y)
        {
            throw new IllegalStateException("Cannot set renderer after GL context has been initialized");
        } else
        {
            n = p1;
            return;
        }
    }

    public final void a(z z1)
    {
        i = z1;
    }

    public final void b()
    {
        synchronized (u)
        {
            v = false;
            w = true;
            u.notify();
        }
    }

    public final void c()
    {
        r.offer(new l(this, 640));
    }

    public final void d()
    {
        r.offer(new n(this));
    }

    public final void e()
    {
        synchronized (a)
        {
            b = true;
        }
        b();
        f();
    }

    public final void f()
    {
        synchronized (l)
        {
            k = true;
            l.notify();
        }
    }

    public final void g()
    {
        Object obj = s;
        obj;
        JVM INSTR monitorenter ;
_L3:
        boolean flag = t;
        if (flag) goto _L2; else goto _L1
_L1:
        Exception exception;
        try
        {
            s.wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally
        {
            obj;
        }
        if (true) goto _L3; else goto _L2
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        throw exception;
    }

    public final void run()
    {
        h();
        if (i != null && x)
        {
            try
            {
                i.f();
            }
            catch (Exception exception13)
            {
                com.facebook.e.a.a.a("GLRenderContext", "Error while finishing controller", exception13);
            }
        }
        try
        {
            n.a();
        }
        catch (Exception exception10)
        {
            com.facebook.e.a.a.a("GLRenderContext", "Error while finishing renderer", exception10);
        }
        synchronized (s)
        {
            t = true;
            s.notifyAll();
        }
        if (!y)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        m();
_L2:
        return;
        Exception exception5;
        exception5;
        com.facebook.e.a.a.a("GLRenderContext", "runSafe threw an exception", exception5);
        Exception exception8;
        if (i != null && x)
        {
            try
            {
                i.f();
            }
            catch (Exception exception9)
            {
                com.facebook.e.a.a.a("GLRenderContext", "Error while finishing controller", exception9);
            }
        }
        try
        {
            n.a();
        }
        catch (Exception exception6)
        {
            com.facebook.e.a.a.a("GLRenderContext", "Error while finishing renderer", exception6);
        }
        synchronized (s)
        {
            t = true;
            s.notifyAll();
        }
        if (!y) goto _L2; else goto _L1
_L1:
        try
        {
            m();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception8)
        {
            return;
        }
        Exception exception;
        exception;
        if (i != null && x)
        {
            try
            {
                i.f();
            }
            catch (Exception exception4)
            {
                com.facebook.e.a.a.a("GLRenderContext", "Error while finishing controller", exception4);
            }
        }
        try
        {
            n.a();
        }
        catch (Exception exception1)
        {
            com.facebook.e.a.a.a("GLRenderContext", "Error while finishing renderer", exception1);
        }
        synchronized (s)
        {
            t = true;
            s.notifyAll();
        }
        Exception exception12;
        if (y)
        {
            try
            {
                m();
            }
            catch (Exception exception3) { }
        }
        throw exception;
        exception12;
    }
}
