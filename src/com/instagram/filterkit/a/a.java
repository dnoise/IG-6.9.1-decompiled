// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.a;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

// Referenced classes of package com.instagram.filterkit.a:
//            c

public class a
{

    private static final Class a = com/instagram/filterkit/a/a;
    private EGL10 b;
    private EGLConfig c;
    private EGLDisplay d;
    private EGLContext e;
    private EGLSurface f;
    private a g;

    a()
    {
        d = EGL10.EGL_NO_DISPLAY;
        e = EGL10.EGL_NO_CONTEXT;
        f = EGL10.EGL_NO_SURFACE;
        g = null;
    }

    private static String a(int i)
    {
        switch (i)
        {
        default:
            return (new StringBuilder("0x")).append(Integer.toHexString(i)).toString();

        case 12288: 
            return "EGL_SUCCESS";

        case 12289: 
            return "EGL_NOT_INITIALIZED";

        case 12290: 
            return "EGL_BAD_ACCESS";

        case 12291: 
            return "EGL_BAD_ALLOC";

        case 12292: 
            return "EGL_BAD_ATTRIBUTE";

        case 12293: 
            return "EGL_BAD_CONFIG";

        case 12294: 
            return "EGL_BAD_CONTEXT";

        case 12295: 
            return "EGL_BAD_CURRENT_SURFACE";

        case 12296: 
            return "EGL_BAD_DISPLAY";

        case 12297: 
            return "EGL_BAD_MATCH";

        case 12298: 
            return "EGL_BAD_NATIVE_PIXMAP";

        case 12299: 
            return "EGL_BAD_NATIVE_WINDOW";

        case 12300: 
            return "EGL_BAD_PARAMETER";

        case 12301: 
            return "EGL_BAD_SURFACE";

        case 12302: 
            return "EGL_CONTEXT_LOST";
        }
    }

    private EGLContext a(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig)
    {
        int ai[] = {
            12440, 2, 12344
        };
        EGLContext eglcontext;
        if (g == null)
        {
            eglcontext = EGL10.EGL_NO_CONTEXT;
        } else
        {
            eglcontext = g.e;
        }
        return egl10.eglCreateContext(egldisplay, eglconfig, eglcontext, ai);
    }

    private EGLConfig e()
    {
        int ai[] = new int[1];
        EGLConfig aeglconfig[] = new EGLConfig[1];
        int ai1[] = f();
        if (!b.eglChooseConfig(d, ai1, aeglconfig, 1, ai))
        {
            throw new IllegalArgumentException((new StringBuilder("eglChooseConfig failed ")).append(a(b.eglGetError())).toString());
        }
        if (ai[0] > 0)
        {
            return aeglconfig[0];
        } else
        {
            return null;
        }
    }

    private static int[] f()
    {
        return (new int[] {
            12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 0, 
            12325, 0, 12326, 0, 12344
        });
    }

    final void a()
    {
        if ((!e.equals(b.eglGetCurrentContext()) || !f.equals(b.eglGetCurrentSurface(12377))) && !b.eglMakeCurrent(d, f, f, e))
        {
            throw new RuntimeException((new StringBuilder("eglMakeCurrent failed ")).append(a(b.eglGetError())).toString());
        } else
        {
            return;
        }
    }

    public final void a(c c1)
    {
        int i;
label0:
        {
            b = (EGL10)EGLContext.getEGL();
            d = b.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (d == EGL10.EGL_NO_DISPLAY)
            {
                throw new RuntimeException((new StringBuilder("eglGetDisplay failed ")).append(a(b.eglGetError())).toString());
            }
            int ai[] = new int[2];
            if (!b.eglInitialize(d, ai))
            {
                throw new RuntimeException((new StringBuilder("eglInitialize failed ")).append(a(b.eglGetError())).toString());
            }
            c = e();
            if (c == null)
            {
                throw new RuntimeException("eglConfig not initialized");
            }
            e = a(b, d, c);
            Object obj = c1.a();
            if (obj != null)
            {
                f = b.eglCreateWindowSurface(d, c, obj, null);
            } else
            {
                int ai1[] = {
                    12375, 1, 12374, 1, 12344
                };
                f = b.eglCreatePbufferSurface(d, c, ai1);
            }
            if (f == null || f == EGL10.EGL_NO_SURFACE)
            {
                i = b.eglGetError();
                if (i != 12299)
                {
                    break label0;
                }
                com.facebook.e.a.a.a(a, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
            }
            return;
        }
        throw new RuntimeException((new StringBuilder("createWindowSurface failed ")).append(a(i)).toString());
    }

    final void b()
    {
        if (!b.eglMakeCurrent(d, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT))
        {
            throw new RuntimeException((new StringBuilder("eglMakeCurrent failed ")).append(a(b.eglGetError())).toString());
        } else
        {
            return;
        }
    }

    final boolean c()
    {
        return b.eglSwapBuffers(d, f);
    }

    final void d()
    {
        Class _tmp = a;
        try
        {
            b.eglDestroyContext(d, e);
            b.eglDestroySurface(d, f);
            b.eglTerminate(d);
            return;
        }
        catch (Exception exception)
        {
            Class _tmp1 = a;
        }
    }

}
