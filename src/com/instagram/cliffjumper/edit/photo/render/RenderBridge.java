// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.render;

import com.facebook.k.a;

public class RenderBridge
{

    private static final Class a = com/instagram/cliffjumper/edit/photo/render/RenderBridge;
    private static boolean b = false;

    public RenderBridge()
    {
    }

    public static long a(int i, String s)
    {
        return saveAndClearCachedImage(i, s, 95);
    }

    public static boolean a()
    {
        com/instagram/cliffjumper/edit/photo/render/RenderBridge;
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
        com/instagram/cliffjumper/edit/photo/render/RenderBridge;
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

    public static native int cacheImageInMemory(int i);

    private static native long saveAndClearCachedImage(int i, String s, int j);

}
