// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.bridge;

import com.instagram.cliffjumper.util.a.a;

public class ShaderBridge
{

    private static final Class a = com/instagram/cliffjumper/bridge/ShaderBridge;
    private static boolean b = false;

    public ShaderBridge()
    {
    }

    public static int a(String s)
    {
        return compileProgram(s, com.instagram.cliffjumper.util.a.a.a());
    }

    public static boolean a()
    {
        com/instagram/cliffjumper/bridge/ShaderBridge;
        JVM INSTR monitorenter ;
        boolean flag = b;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        com.facebook.k.a.a("scrambler");
        com.facebook.k.a.a("glcommon");
        com.facebook.k.a.a("jpegutils");
        com.facebook.k.a.a("cj");
        b = true;
_L1:
        boolean flag1 = b;
        com/instagram/cliffjumper/bridge/ShaderBridge;
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

    private static native int compileProgram(String s, boolean flag);

}
