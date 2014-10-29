// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.facebook.e.a.a;
import com.instagram.camera.g;
import com.instagram.camera.h;
import com.instagram.common.i.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class b
{

    private static final List a;
    private static final List b;
    private static final List c = Arrays.asList(new String[] {
        "GT-N7000", "GT-N7000B", "GT-N7005", "SHV-E160K", "SHV-E160L", "SHV-E160S", "SGH-I717", "SC-05D", "SGH-T879", "GT-I9220", 
        "GT-I9228", "SCH-I889"
    });

    public static int a(int i, int j)
    {
        android.hardware.Camera.CameraInfo camerainfo = new android.hardware.Camera.CameraInfo();
        Camera.getCameraInfo(j, camerainfo);
        if (camerainfo.facing == 1)
        {
            return (360 - (i + camerainfo.orientation) % 360) % 360;
        } else
        {
            return (360 + (camerainfo.orientation - i)) % 360;
        }
    }

    private static Point a(Activity activity, Point point)
    {
        activity.getWindowManager().getDefaultDisplay().getSize(point);
        return point;
    }

    public static android.hardware.Camera.Size a(Activity activity, List list, double d)
    {
        if (list != null) goto _L2; else goto _L1
_L1:
        android.hardware.Camera.Size size = null;
_L7:
        return size;
_L2:
        double d1;
        int i;
        Iterator iterator;
        size = null;
        d1 = 1.7976931348623157E+308D;
        Point point = a(activity, new Point());
        i = Math.min(point.x, point.y);
        iterator = list.iterator();
_L5:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        android.hardware.Camera.Size size2 = (android.hardware.Camera.Size)iterator.next();
        if (Math.abs((double)size2.width / (double)size2.height - d) <= 0.001D)
        {
            Iterator iterator1;
            double d2;
            android.hardware.Camera.Size size1;
            double d3;
            double d4;
            double d5;
            android.hardware.Camera.Size size3;
            if ((double)Math.abs(size2.height - i) < d1)
            {
                double d6 = Math.abs(size2.height - i);
                size3 = size2;
                d5 = d6;
            } else
            {
                d5 = d1;
                size3 = size;
            }
            size = size3;
            d1 = d5;
        }
        if (true) goto _L5; else goto _L4
_L4:
        if (size == null)
        {
            iterator1 = list.iterator();
            d2 = 1.7976931348623157E+308D;
            while (iterator1.hasNext()) 
            {
                size1 = (android.hardware.Camera.Size)iterator1.next();
                if ((double)Math.abs(size1.height - i) < d2)
                {
                    d4 = Math.abs(size1.height - i);
                    size = size1;
                    d3 = d4;
                } else
                {
                    d3 = d2;
                }
                d2 = d3;
            }
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static android.hardware.Camera.Size a(android.hardware.Camera.Parameters parameters, List list)
    {
        if (h.b() || h.c())
        {
            return (android.hardware.Camera.Size)list.get(0);
        } else
        {
            return parameters.getPreferredPreviewSizeForVideo();
        }
    }

    public static CamcorderProfile a(int i)
    {
        int j;
        List list;
        Iterator iterator;
        CamcorderProfile camcorderprofile;
        if (c())
        {
            list = b;
        } else
        {
            list = a;
        }
        iterator = list.iterator();
_L2:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        j = ((Integer)iterator.next()).intValue();
        camcorderprofile = CamcorderProfile.get(i, j);
        return camcorderprofile;
        RuntimeException runtimeexception;
        runtimeexception;
        com.facebook.e.a.a.a("CamcorderUtil", (new StringBuilder("error trying to grab profile ")).append(j).append(" trying another profile").toString());
        if (true) goto _L2; else goto _L1
_L1:
        com.instagram.common.i.c.b("Used low quality", "Phone had to use low quality instead of 480p");
        return CamcorderProfile.get(i, 0);
    }

    public static void a(int i, SharedPreferences sharedpreferences)
    {
        int j = g.d(sharedpreferences);
        g.a(sharedpreferences, (i + j * g.e(sharedpreferences)) / (j + 1), j);
    }

    public static void a(android.hardware.Camera.Parameters parameters)
    {
        if (a("auto", parameters.getSupportedWhiteBalance()))
        {
            parameters.setWhiteBalance("auto");
        }
    }

    public static boolean a()
    {
        return !"Galaxy Nexus".equals(Build.MODEL);
    }

    private static boolean a(String s, List list)
    {
        return list != null && list.indexOf(s) >= 0;
    }

    public static void b(android.hardware.Camera.Parameters parameters)
    {
        List list = parameters.getSupportedFocusModes();
        if (h.b())
        {
            parameters.setFocusMode("auto");
            return;
        }
        if (a("continuous-video", list))
        {
            parameters.setFocusMode("continuous-video");
            return;
        } else
        {
            com.facebook.e.a.a.a("CamcorderUtil", "No auto focus mode found!");
            return;
        }
    }

    public static boolean b()
    {
        if (Build.BOARD.startsWith("MSM8660"))
        {
            return true;
        }
        for (Iterator iterator = c.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (Build.MODEL.contains(s))
            {
                return true;
            }
        }

        return false;
    }

    private static boolean c()
    {
        return com.instagram.creation.c.a.e() || h.c() || "EK-GC100".equals(Build.MODEL) || "Nexus S".equals(Build.MODEL) || "SM-C101".equals(Build.MODEL) || "SM-C105".equals(Build.MODEL) || "Nexus S 4G".equals(Build.MODEL);
    }

    static 
    {
        Integer ainteger[] = new Integer[4];
        ainteger[0] = Integer.valueOf(1);
        ainteger[1] = Integer.valueOf(6);
        ainteger[2] = Integer.valueOf(5);
        ainteger[3] = Integer.valueOf(4);
        a = Arrays.asList(ainteger);
        b = new ArrayList(a);
        Collections.reverse(b);
    }
}
