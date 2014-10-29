// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.jpeg;

import android.graphics.Rect;
import com.facebook.k.a;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.jpeg:
//            NativeImage

public class JpegBridge
{

    private static final Class a = com/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;
    private static boolean b = false;

    public JpegBridge()
    {
    }

    public static NativeImage a(String s, Rect rect)
    {
        return decodeJpeg(s, rect.left, rect.top, rect.right, rect.bottom);
    }

    public static boolean a()
    {
        com/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;
        JVM INSTR monitorenter ;
        boolean flag = b;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        com.facebook.k.a.a("glcommon");
        com.facebook.k.a.a("jpegutils");
        com.facebook.k.a.a("cj");
        b = true;
_L1:
        boolean flag1 = b;
        com/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;
        JVM INSTR monitorexit ;
        return flag1;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
        com.facebook.e.a.a.a(a, "Could not load native library", unsatisfiedlinkerror);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public static native float[] calcBWpoint(int i);

    public static native int calcCDF(int i);

    private static native NativeImage decodeJpeg(String s, int i, int j, int k, int l);

    public static native int loadCDF(int i);

    public static native int releaseNativeBuffer(int i);

    public static native NativeImage rotateImage(NativeImage nativeimage, int i);

    public static native int saveImage(NativeImage nativeimage, String s, int i);

    public static native NativeImage scaleImage(NativeImage nativeimage, int i, int j);

    public static native int uploadTexture(NativeImage nativeimage);

}
