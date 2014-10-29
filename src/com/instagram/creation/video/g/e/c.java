// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.e;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;
import com.facebook.e.a.a;
import com.instagram.creation.video.g.a.b;

// Referenced classes of package com.instagram.creation.video.g.e:
//            e, d

public class c
{

    private static final Class a = com/instagram/creation/video/g/e/c;
    private SurfaceTexture b;
    private Surface c;
    private Surface d;
    private EGLDisplay e;
    private EGLContext f;
    private EGLSurface g;
    private e h;
    private d i;

    public c(Surface surface, com.instagram.creation.b.a.b b1, com.instagram.creation.video.e.c c1)
    {
        e = EGL14.EGL_NO_DISPLAY;
        f = EGL14.EGL_NO_CONTEXT;
        g = EGL14.EGL_NO_SURFACE;
        c = surface;
        f();
        g();
        a(b1, c1);
    }

    private void a(com.instagram.creation.b.a.b b1, com.instagram.creation.video.e.c c1)
    {
        b _tmp = b.a;
        h = new e(b1);
        h.a(c1);
        b = new SurfaceTexture(h.a());
        i = new d(b, h, c1);
        b.setOnFrameAvailableListener(i);
        d = new Surface(b);
    }

    private static void a(String s)
    {
        boolean flag = false;
        do
        {
            int j = EGL14.eglGetError();
            if (j == 12288)
            {
                break;
            }
            Class class1 = a;
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = Integer.toHexString(j);
            com.facebook.e.a.a.a(class1, "%s: EGL error: 0x%s", aobj);
            flag = true;
        } while (true);
        if (flag)
        {
            throw new RuntimeException("EGL error encountered (see log)");
        } else
        {
            return;
        }
    }

    private void f()
    {
        e = EGL14.eglGetDisplay(0);
        if (e == EGL14.EGL_NO_DISPLAY)
        {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int ai[] = new int[2];
        if (!EGL14.eglInitialize(e, ai, 0, ai, 1))
        {
            e = null;
            throw new RuntimeException("unable to initialize EGL14");
        }
        int ai1[] = {
            12324, 8, 12323, 8, 12322, 8, 12352, 4, 12610, 1, 
            12344
        };
        EGLConfig aeglconfig[] = new EGLConfig[1];
        int ai2[] = new int[1];
        if (!EGL14.eglChooseConfig(e, ai1, 0, aeglconfig, 0, 1, ai2, 0))
        {
            throw new RuntimeException("unable to find RGB888+recordable ES2 EGL config");
        }
        int ai3[] = {
            12440, 2, 12344
        };
        f = EGL14.eglCreateContext(e, aeglconfig[0], EGL14.EGL_NO_CONTEXT, ai3, 0);
        a("eglCreateContext");
        if (f == null)
        {
            throw new RuntimeException("null context");
        }
        int ai4[] = {
            12344
        };
        g = EGL14.eglCreateWindowSurface(e, aeglconfig[0], c, ai4, 0);
        a("eglCreateWindowSurface");
        if (g == null)
        {
            throw new RuntimeException("surface was null");
        } else
        {
            return;
        }
    }

    private void g()
    {
        if (!EGL14.eglMakeCurrent(e, g, g, f))
        {
            throw new RuntimeException("eglMakeCurrent failed");
        } else
        {
            return;
        }
    }

    public final void a()
    {
        if (EGL14.eglGetCurrentContext().equals(f))
        {
            EGL14.eglMakeCurrent(e, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        }
        EGL14.eglDestroySurface(e, g);
        EGL14.eglDestroyContext(e, f);
        d.release();
        e = null;
        f = null;
        g = null;
        h = null;
        d = null;
        b = null;
        i = null;
    }

    public final void a(long l)
    {
        EGLExt.eglPresentationTimeANDROID(e, g, l);
    }

    public final Surface b()
    {
        return d;
    }

    public final void c()
    {
        i.a();
    }

    public final void d()
    {
        i.b();
    }

    public final boolean e()
    {
        return EGL14.eglSwapBuffers(e, g);
    }

}
