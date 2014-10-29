// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.content.SharedPreferences;
import android.os.Build;
import com.facebook.e.a.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.camera:
//            k

public final class g
{

    public static int a(k k1)
    {
        String s = k1.getString("pref_camera_exposure_key", "0");
        int i;
        try
        {
            i = Integer.parseInt(s);
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("CameraSettings", (new StringBuilder("Invalid exposure: ")).append(s).toString());
            return 0;
        }
        return i;
    }

    public static void a(SharedPreferences sharedpreferences)
    {
        int j = sharedpreferences.getInt("pref_local_version_key", 0);
        int i = j;
_L1:
        Exception exception;
        if (i == 0)
        {
            return;
        } else
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putInt("pref_local_version_key", 0);
            editor.apply();
            return;
        }
        exception;
        i = 0;
          goto _L1
    }

    public static void a(SharedPreferences sharedpreferences, int i)
    {
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("pref_camera_id_key_v2", Integer.toString(i));
        editor.apply();
    }

    public static void a(SharedPreferences sharedpreferences, int i, int j)
    {
        int l = 30;
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putInt("pref_stop_delay_average_key", i);
        if (j + 1 <= l)
        {
            l = j + 1;
        }
        editor.putInt("pref_stop_delay_samples_key", l);
        editor.commit();
    }

    public static void a(android.hardware.Camera.Parameters parameters)
    {
        List list = parameters.getSupportedPictureSizes();
        if (list == null)
        {
            return;
        }
        android.hardware.Camera.Size size = null;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            android.hardware.Camera.Size size1 = (android.hardware.Camera.Size)iterator.next();
            if (!a(size1) && Math.abs(3F * ((float)size1.width / 4F) - (float)size1.height) < 0.1F * (float)size1.width)
            {
                if (size == null)
                {
                    size = size1;
                }
                if (size.height > 2200 && size1.height < size.height || size.height < size1.height && size1.height < 2200)
                {
                    size = size1;
                }
                (new StringBuilder("Considered picture size: ")).append(size1.width).append(" ").append(size1.height);
                (new StringBuilder("Candidate picture size: ")).append(size.width).append(" ").append(size.height);
            }
        } while (true);
        if (size != null)
        {
            (new StringBuilder("Selected picture size: ")).append(size.width).append(" ").append(size.height);
            parameters.setPictureSize(size.width, size.height);
            return;
        } else
        {
            com.facebook.e.a.a.a("CameraSettings", "No supported picture size found");
            return;
        }
    }

    private static boolean a(android.hardware.Camera.Size size)
    {
        return Build.MODEL.equals("SD4930UR") && size.width == 2592 && size.height == 1944;
    }

    public static boolean a(String s, List list, android.hardware.Camera.Parameters parameters)
    {
        int i = s.indexOf('x');
        if (i == -1)
        {
            return false;
        }
        int j = Integer.parseInt(s.substring(0, i));
        int l = Integer.parseInt(s.substring(i + 1));
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            android.hardware.Camera.Size size = (android.hardware.Camera.Size)iterator.next();
            if (size.width == j && size.height == l)
            {
                parameters.setPictureSize(j, l);
                return true;
            }
        }

        return false;
    }

    public static void b(SharedPreferences sharedpreferences)
    {
        int j = sharedpreferences.getInt("pref_version_key", 0);
        int i = j;
_L1:
        Exception exception;
        if (i == 0)
        {
            return;
        } else
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putInt("pref_version_key", 0);
            editor.apply();
            return;
        }
        exception;
        i = 0;
          goto _L1
    }

    public static int c(SharedPreferences sharedpreferences)
    {
        return Integer.parseInt(sharedpreferences.getString("pref_camera_id_key_v2", "0"));
    }

    public static int d(SharedPreferences sharedpreferences)
    {
        return sharedpreferences.getInt("pref_stop_delay_samples_key", 1);
    }

    public static int e(SharedPreferences sharedpreferences)
    {
        return sharedpreferences.getInt("pref_stop_delay_average_key", 400);
    }
}
