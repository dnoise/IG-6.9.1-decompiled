// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.c;

import android.content.Context;
import android.os.Environment;
import com.instagram.common.y.e;
import com.instagram.creation.b.a.a;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.creation.video.c:
//            c

public final class b
{

    private static File a;
    private static File b;
    private static File c;
    private static File d;
    private static File e;

    private static File a()
    {
        if (e == null)
        {
            e = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES), "Instagram");
        }
        e.mkdirs();
        return e;
    }

    public static File a(Context context, a a1)
    {
        String s = (new File(a1.b())).getName();
        String s1 = (new StringBuilder()).append(s.substring(0, -4 + s.length())).append(".jpeg").toString();
        return new File(c(context), s1);
    }

    private static String a(long l)
    {
        return (new SimpleDateFormat("'VID'_yyyyMMdd_HHmmss")).format(new Date(l));
    }

    public static String a(Context context)
    {
        return (new File(f(context), "audio.ogg")).getAbsolutePath();
    }

    public static String a(Context context, com.instagram.creation.b.a.b b1, String s)
    {
        File file;
        Object aobj[];
        File file1;
        if (com.instagram.l.b.a.a().w())
        {
            file = a();
        } else
        {
            file = d(context);
        }
        aobj = new Object[2];
        aobj[0] = a(Long.parseLong(b1.a()));
        aobj[1] = s;
        file1 = new File(file, com.instagram.common.y.e.a("%s.%s", aobj));
        file1.delete();
        return file1.getAbsolutePath();
    }

    public static String a(String s, int i, Context context)
    {
        long l = System.currentTimeMillis();
        if (s == null)
        {
            Object aobj[] = new Object[2];
            aobj[0] = a(l);
            aobj[1] = Integer.valueOf(i);
            s = com.instagram.common.y.e.a("%s_session_%s", aobj);
            Boolean.valueOf((new File(b(context), s)).mkdirs());
        }
        return s;
    }

    public static List a(com.instagram.creation.b.a.b b1, Context context)
    {
        ArrayList arraylist = new ArrayList();
        if (b1 != null && b1.L() != null)
        {
            File file = new File(b(context), b1.L());
            if (file.exists())
            {
                File afile[] = file.listFiles();
                int i = afile.length;
                for (int j = 0; j < i; j++)
                {
                    File file1 = afile[j];
                    if (file1.getName().endsWith(".mp4") && !b(file1))
                    {
                        arraylist.add(file1);
                    }
                }

            }
        }
        return arraylist;
    }

    public static void a(String s, Context context)
    {
        File file = new File(b(context), s);
        if (file.isDirectory())
        {
            com.instagram.common.y.c.a.a().execute(new c(file));
        }
    }

    static boolean a(File file)
    {
        return b(file);
    }

    public static File b(Context context)
    {
        if (a == null)
        {
            a = new File(context.getExternalFilesDir(null), "videos");
        }
        return a;
    }

    public static String b(String s, Context context)
    {
        String s1 = (new StringBuilder()).append(a(System.currentTimeMillis())).append("_recorded.mp4").toString();
        File file = new File(b(context), s);
        file.mkdirs();
        return (new File(file, s1)).getPath();
    }

    private static boolean b(File file)
    {
        return file.getName().contains("-stitched");
    }

    public static File c(Context context)
    {
        if (b == null)
        {
            b = new File(context.getExternalFilesDir(null), "covers");
        }
        return b;
    }

    public static File d(Context context)
    {
        if (d == null)
        {
            d = new File(context.getExternalFilesDir(null), "rendered_videos");
        }
        return d;
    }

    public static void e(Context context)
    {
        b(context).mkdirs();
        c(context).mkdirs();
        f(context).mkdirs();
        d(context).mkdirs();
        if (!b(context).isDirectory() || !c(context).isDirectory() || !f(context).isDirectory() || !d(context).isDirectory())
        {
            throw new IllegalStateException("Could not create video directories");
        } else
        {
            return;
        }
    }

    private static File f(Context context)
    {
        if (c == null)
        {
            c = new File(context.getExternalFilesDir(null), "music");
        }
        return c;
    }
}
