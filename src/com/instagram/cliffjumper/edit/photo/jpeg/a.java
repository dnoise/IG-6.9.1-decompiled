// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.jpeg;

import android.graphics.Rect;
import android.opengl.GLES20;
import android.util.DisplayMetrics;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.jpeg:
//            NativeImage, JpegBridge

public class a
{

    private static final Class a = com/instagram/cliffjumper/edit/photo/jpeg/a;
    private static final int b;
    private static int c;

    public a()
    {
    }

    private static int a()
    {
        if (c != -1)
        {
            return c;
        } else
        {
            int ai[] = new int[1];
            GLES20.glGetIntegerv(3379, ai, 0);
            Class _tmp = a;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(ai[0]);
            String.format("Max Texture Size = %d", aobj);
            int i = ai[0];
            c = i;
            return i;
        }
    }

    private static NativeImage a(NativeImage nativeimage)
    {
        int i;
        if (b != -1)
        {
            i = b;
        } else
        {
            i = Math.min(Math.max(nativeimage.getWidth(), 512), a());
        }
        if (i != nativeimage.getWidth())
        {
            NativeImage nativeimage1 = JpegBridge.scaleImage(nativeimage, i, i);
            JpegBridge.releaseNativeBuffer(nativeimage.getBufferId());
            nativeimage = nativeimage1;
        }
        return nativeimage;
    }

    public static NativeImage a(String s, Rect rect)
    {
        for (String s1 = s.toLowerCase(); !s1.endsWith(".jpg") && !s1.endsWith(".jpeg") || !JpegBridge.a();)
        {
            return null;
        }

        NativeImage nativeimage1;
        try
        {
            NativeImage nativeimage = JpegBridge.a(s, rect);
            if (nativeimage.getWidth() != nativeimage.getHeight())
            {
                Class class1 = a;
                Object aobj[] = new Object[3];
                aobj[0] = s;
                aobj[1] = Integer.valueOf(nativeimage.getWidth());
                aobj[2] = Integer.valueOf(nativeimage.getHeight());
                com.facebook.e.a.a.a(class1, "Input image at %s is not square (%d x %d)", aobj);
            }
            nativeimage1 = a(nativeimage);
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            com.facebook.e.a.a.a(a, String.format("UnsatisfiedLinkError: %s", new Object[] {
                unsatisfiedlinkerror
            }));
            return null;
        }
        return nativeimage1;
    }

    static 
    {
        int i = -1;
        c = i;
        if (com.instagram.cliffjumper.util.a.a.a())
        {
            i = 1024;
        }
        b = i;
        DisplayMetrics displaymetrics = f.c(com.instagram.common.h.a.a());
        if (Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels) <= 320)
        {
            c = 1024;
        }
    }
}
