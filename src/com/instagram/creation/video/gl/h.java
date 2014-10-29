// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import javax.microedition.khronos.opengles.GL11;

public final class h
{

    static int a = 1;

    public static void a(int i, int ai[])
    {
        com/instagram/creation/video/gl/h;
        JVM INSTR monitorenter ;
_L2:
        int j;
        j = i - 1;
        if (i <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        int k = a;
        a = k + 1;
        ai[0] = k;
        i = j;
        if (true) goto _L2; else goto _L1
_L1:
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void a(GL11 gl11, int i, int ai[])
    {
        com/instagram/creation/video/gl/h;
        JVM INSTR monitorenter ;
        gl11.glDeleteTextures(i, ai, 0);
        com/instagram/creation/video/gl/h;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(int i, int ai[])
    {
        com/instagram/creation/video/gl/h;
        JVM INSTR monitorenter ;
_L2:
        int j;
        j = i - 1;
        if (i <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        int k = a;
        a = k + 1;
        ai[0] = k;
        i = j;
        if (true) goto _L2; else goto _L1
_L1:
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(GL11 gl11, int i, int ai[])
    {
        com/instagram/creation/video/gl/h;
        JVM INSTR monitorenter ;
        gl11.glDeleteBuffers(i, ai, 0);
        com/instagram/creation/video/gl/h;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

}
