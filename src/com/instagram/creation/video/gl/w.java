// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import com.instagram.creation.video.l.a;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

final class w
    implements android.opengl.GLSurfaceView.EGLConfigChooser
{

    private static final int c[] = {
        12324, 12323, 12322, 12321, 12325, 12326, 12328, 12327
    };
    private static final String d[] = {
        "R", "G", "B", "A", "D", "S", "ID", "CAVEAT"
    };
    private final int a[] = {
        12324, 5, 12323, 6, 12322, 5, 12321, 0, 12344
    };
    private final int b[] = {
        12324, 8, 12323, 8, 12322, 8, 12321, 0, 12344
    };

    w()
    {
    }

    private static EGLConfig a(EGL10 egl10, EGLDisplay egldisplay, EGLConfig aeglconfig[])
    {
        EGLConfig eglconfig;
        int ai[];
label0:
        {
            eglconfig = null;
            int i = 0x7fffffff;
            ai = new int[1];
            int j = aeglconfig.length;
            int k = 0;
            do
            {
                if (k >= j)
                {
                    break label0;
                }
                if (a.a || !egl10.eglGetConfigAttrib(egldisplay, aeglconfig[k], 12324, ai) || ai[0] != 8)
                {
                    if (!egl10.eglGetConfigAttrib(egldisplay, aeglconfig[k], 12326, ai))
                    {
                        break;
                    }
                    if (ai[0] != 0 && ai[0] < i)
                    {
                        i = ai[0];
                        eglconfig = aeglconfig[k];
                    }
                }
                k++;
            } while (true);
            throw new RuntimeException((new StringBuilder("eglGetConfigAttrib error: ")).append(egl10.eglGetError()).toString());
        }
        if (eglconfig == null)
        {
            eglconfig = aeglconfig[0];
        }
        egl10.eglGetConfigAttrib(egldisplay, eglconfig, 12326, ai);
        a(egl10, egldisplay, eglconfig);
        return eglconfig;
    }

    private static void a(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig)
    {
        int ai[] = new int[1];
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < c.length; i++)
        {
            egl10.eglGetConfigAttrib(egldisplay, eglconfig, c[i], ai);
            stringbuilder.append((new StringBuilder()).append(d[i]).append(ai[0]).append(" ").toString());
        }

        (new StringBuilder("Config chosen: ")).append(stringbuilder.toString());
    }

    public final EGLConfig chooseConfig(EGL10 egl10, EGLDisplay egldisplay)
    {
        int ai[] = new int[1];
        int ai1[];
        if (a.a)
        {
            ai1 = b;
        } else
        {
            ai1 = a;
        }
        if (!egl10.eglChooseConfig(egldisplay, ai1, null, 0, ai))
        {
            throw new RuntimeException("eglChooseConfig failed");
        }
        if (ai[0] <= 0)
        {
            throw new RuntimeException("No configs match configSpec");
        }
        EGLConfig aeglconfig[] = new EGLConfig[ai[0]];
        if (!egl10.eglChooseConfig(egldisplay, ai1, aeglconfig, aeglconfig.length, ai))
        {
            throw new RuntimeException();
        } else
        {
            return a(egl10, egldisplay, aeglconfig);
        }
    }

}
