// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.c;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.facebook.e.a.a;
import java.io.File;

public final class g
{

    public static final String a;
    public static final String b;
    private static final String c;
    private static String d;

    public static long a()
    {
        long l = -1L;
        String s = Environment.getExternalStorageState();
        if ("checking".equals(s))
        {
            l = -2L;
        } else
        if ("mounted".equals(s))
        {
            File file = new File(c);
            file.mkdirs();
            if (file.isDirectory() && file.canWrite())
            {
                long l1;
                int i;
                try
                {
                    StatFs statfs = new StatFs(c);
                    l1 = statfs.getAvailableBlocks();
                    i = statfs.getBlockSize();
                }
                catch (Exception exception)
                {
                    return -3L;
                }
                return l1 * (long)i;
            }
        }
        return l;
    }

    public static String a(String s, String s1)
    {
        return (new StringBuilder()).append(c).append('/').append(b(s, s1)).toString();
    }

    public static void a(Context context)
    {
        d = (new StringBuilder()).append(context.getCacheDir()).append("/original_images").toString();
    }

    public static String b(String s, String s1)
    {
        return (new StringBuilder()).append(s).append(s1).toString();
    }

    public static void b()
    {
        File file = new File(a, "100ANDRO");
        if (!file.exists() && !file.mkdirs())
        {
            com.facebook.e.a.a.a("CameraStorage", (new StringBuilder("Failed to create ")).append(file.getPath()).toString());
        }
    }

    public static String c()
    {
        if (com.instagram.l.b.a.a().x())
        {
            return c;
        } else
        {
            return d;
        }
    }

    public static void d()
    {
        (new File(new File(d), "temp.jpg")).delete();
    }

    static 
    {
        a = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).toString();
        String s = (new StringBuilder()).append(a).append("/Camera").toString();
        c = s;
        b = String.valueOf(s.toLowerCase().hashCode());
    }
}
