// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.app.Activity;
import android.app.Dialog;
import android.app.admin.DevicePolicyManager;
import android.content.ContentResolver;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera;
import android.os.Build;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import com.facebook.az;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.camera:
//            e, d, j, b, 
//            i

public final class h
{

    private static j a;

    public static float a(Window window, float f)
    {
        android.view.WindowManager.LayoutParams layoutparams = window.getAttributes();
        float f1 = layoutparams.screenBrightness;
        layoutparams.screenBrightness = f;
        window.setAttributes(layoutparams);
        return f1;
    }

    public static int a(int k, int l)
    {
        boolean flag = true;
        if (l != -1) goto _L2; else goto _L1
_L1:
        if (flag)
        {
            l = (90 * ((k + 45) / 90)) % 360;
        }
        return l;
_L2:
        int i1 = Math.abs(k - l);
        if (Math.min(i1, 360 - i1) < 50)
        {
            flag = false;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private static int a(int k, int l, e e1)
    {
        android.hardware.Camera.CameraInfo camerainfo = e.a().c()[k];
        if (camerainfo.facing == 1)
        {
            return (360 + (e1.a(k, camerainfo.orientation) - l)) % 360;
        } else
        {
            return (l + e1.a(k, camerainfo.orientation)) % 360;
        }
    }

    public static int a(Activity activity)
    {
        switch (activity.getWindowManager().getDefaultDisplay().getRotation())
        {
        case 0: // '\0'
        default:
            return 0;

        case 1: // '\001'
            return 90;

        case 2: // '\002'
            return 180;

        case 3: // '\003'
            return 270;
        }
    }

    public static int a(ContentResolver contentresolver)
    {
        return android.provider.Settings.System.getInt(contentresolver, "screen_brightness_mode", 0);
    }

    public static android.hardware.Camera.CameraInfo a(int k)
    {
        android.hardware.Camera.CameraInfo camerainfo = new android.hardware.Camera.CameraInfo();
        Camera.getCameraInfo(k, camerainfo);
        return camerainfo;
    }

    public static Camera a(Activity activity, int k)
    {
        DevicePolicyManager devicepolicymanager = (DevicePolicyManager)activity.getSystemService("device_policy");
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a(devicepolicymanager);
        }
        Camera camera;
        try
        {
            camera = e.a().b(k);
        }
        catch (d d1)
        {
            if ("eng".equals(Build.TYPE))
            {
                throw new RuntimeException("openCamera failed", d1);
            } else
            {
                throw d1;
            }
        }
        return camera;
    }

    public static String a(long l)
    {
        String s;
        synchronized (a)
        {
            s = a.a(l);
        }
        return s;
    }

    public static void a()
    {
        a = new j("'IMG'_yyyyMMdd_HHmmss");
    }

    private static void a(DevicePolicyManager devicepolicymanager)
    {
        if (devicepolicymanager.getCameraDisabled(null))
        {
            throw new com.instagram.camera.b();
        } else
        {
            return;
        }
    }

    public static void a(Matrix matrix, boolean flag, int k, int l, int i1)
    {
        float f;
        if (flag)
        {
            f = -1F;
        } else
        {
            f = 1.0F;
        }
        matrix.setScale(f, 1.0F);
        matrix.postRotate(k);
        matrix.postScale((float)l / 2000F, (float)i1 / 2000F);
        matrix.postTranslate((float)l / 2.0F, (float)i1 / 2.0F);
    }

    public static void a(RectF rectf, Rect rect)
    {
        rect.left = Math.round(rectf.left);
        rect.top = Math.round(rectf.top);
        rect.right = Math.round(rectf.right);
        rect.bottom = Math.round(rectf.bottom);
    }

    public static void a(android.hardware.Camera.Parameters parameters, int k, int l, e e1)
    {
        int i1 = 0;
        if (l != -1)
        {
            i1 = a(k, l, e1);
        }
        parameters.setRotation(i1);
    }

    public static void a(Window window, ContentResolver contentresolver)
    {
        if (a(contentresolver) == 1)
        {
            a(window, 0.7F);
        }
    }

    public static void a(boolean flag)
    {
        if (!flag)
        {
            throw new AssertionError();
        } else
        {
            return;
        }
    }

    public static int b(int k)
    {
        if (k == -1)
        {
            return 0;
        }
        android.hardware.Camera.CameraInfo camerainfo = a(k);
        if (camerainfo.facing == 1)
        {
            return 4 + (2 + (360 - camerainfo.orientation) / 90) % 4;
        } else
        {
            return (2 + camerainfo.orientation / 90) % 4;
        }
    }

    public static int b(int k, int l)
    {
        if (k > l)
        {
            return l;
        }
        if (k < 0)
        {
            return 0;
        } else
        {
            return k;
        }
    }

    public static void b(Activity activity, int k)
    {
        i l = new i(activity);
        (new b(activity)).a(false).b(k).b(az.dialog_ok, l).c().show();
    }

    public static boolean b()
    {
        return "SAMSUNG-SGH-I337".equals(Build.MODEL) || "SGH-M919".equals(Build.MODEL) || "SCH-I545".equals(Build.MODEL) || "SPH-L720".equals(Build.MODEL) || "SGH-I337M".equals(Build.MODEL) || "SCH-R970".equals(Build.MODEL) || "SC-04E".equals(Build.MODEL) || "GT-I9500".equals(Build.MODEL) || "GT-I9505".equals(Build.MODEL) || "SCH-I545".equals(Build.MODEL);
    }

    public static int c(int k)
    {
        int l = Camera.getNumberOfCameras();
        for (int i1 = 0; i1 < l; i1++)
        {
            int j1 = a(i1).facing;
            if (k >= 4 && j1 == 1 || k < 4 && j1 == 0)
            {
                return i1;
            }
        }

        return 0;
    }

    public static boolean c()
    {
        return "GT-I9100".equals(Build.MODEL) || "GT-I9100G".equals(Build.MODEL) || "SAMSUNG-SGH-T989".equals(Build.MODEL) || "SPH-D710".equals(Build.MODEL) || "SAMSUNG-SGH-I727".equals(Build.MODEL) || "SGH-I727R".equals(Build.MODEL) || "SGH-T989".equals(Build.MODEL) || "SGH-I777".equals(Build.MODEL);
    }
}
