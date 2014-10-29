// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import android.hardware.Camera;
import android.view.View;

public final class a
{

    public static final boolean a;
    public static final boolean b;
    public static final boolean c;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;
    public static final boolean g;
    public static final boolean h;
    public static final boolean i;
    public static final boolean j;
    public static final boolean k;

    private static boolean a(Class class1, String s)
    {
        try
        {
            class1.getDeclaredField(s);
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            return false;
        }
        return true;
    }

    private static transient boolean a(Class class1, String s, Class aclass[])
    {
        try
        {
            class1.getDeclaredMethod(s, aclass);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return false;
        }
        return true;
    }

    private static transient boolean a(String s, String s1, Class aclass[])
    {
        try
        {
            Class.forName(s).getDeclaredMethod(s1, aclass);
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return true;
    }

    static 
    {
        boolean flag;
        boolean flag4;
        flag = true;
        boolean flag1;
        boolean flag2;
        Class aclass[];
        boolean flag3;
        Class aclass1[];
        boolean flag7;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        a = flag1;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        b = flag2;
        c = a(android/view/View, "SYSTEM_UI_FLAG_LAYOUT_STABLE");
        aclass = new Class[2];
        aclass[0] = Integer.TYPE;
        aclass[flag] = Integer.TYPE;
        d = a("android.graphics.SurfaceTexture", "setDefaultBufferSize", aclass);
        e = a("android.graphics.SurfaceTexture", "release", new Class[0]);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        f = flag3;
        aclass1 = new Class[flag];
        aclass1[0] = Integer.TYPE;
        g = a(android/view/View, "setSystemUiVisibility", aclass1);
        if (!a(android/hardware/Camera, "setFaceDetectionListener", new Class[] {
            Class.forName("android.hardware.Camera$FaceDetectionListener")
        }) || (!a(android/hardware/Camera, "startFaceDetection", new Class[0]) || !a(android/hardware/Camera, "stopFaceDetection", new Class[0]))) goto _L2; else goto _L1
_L1:
        flag7 = a(android/hardware/Camera$Parameters, "getMaxNumDetectedFaces", new Class[0]);
        if (!flag7) goto _L2; else goto _L3
_L3:
        flag4 = flag;
_L4:
        h = flag4;
        Throwable throwable;
        boolean flag5;
        boolean flag6;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            flag5 = flag;
        } else
        {
            flag5 = false;
        }
        i = flag5;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            flag6 = flag;
        } else
        {
            flag6 = false;
        }
        j = flag6;
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            flag = false;
        }
        k = flag;
        return;
_L2:
        flag4 = false;
          goto _L4
        throwable;
        flag4 = false;
          goto _L4
    }
}
