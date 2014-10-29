// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.a;

import android.content.Context;
import android.os.StatFs;
import java.io.File;
import java.io.IOException;

public final class d
{

    public static long a(File file)
    {
        if (!file.exists())
        {
            file.mkdirs();
        }
        StatFs statfs = new StatFs(file.getPath());
        long l = statfs.getBlockSize();
        long l1 = statfs.getBlockCount();
        long l2 = statfs.getAvailableBlocks();
        long l3 = l1 * l;
        long l4 = l2 * l;
        long l5 = Math.min((long)(0.1F * (float)l3), 0x6400000L);
        if (l5 > l4)
        {
            long l6 = b(file);
            if (l5 > l6)
            {
                l5 = l6 + Math.min(l5 - l6, l4 / 2L);
            }
        }
        return l5;
    }

    private static File a(Context context)
    {
        return context.getExternalCacheDir();
    }

    public static File a(Context context, String s, boolean flag)
    {
        File file;
        if (flag)
        {
            file = a(context);
        } else
        {
            file = context.getCacheDir();
        }
        if (file == null)
        {
            File file1;
            if (flag)
            {
                file1 = context.getCacheDir();
            } else
            {
                file1 = a(context);
            }
            file = file1;
        }
        if (file == null)
        {
            throw new IOException("Unable to open storage");
        }
        if (s != null)
        {
            return new File(file, s);
        } else
        {
            return file;
        }
    }

    private static long b(File file)
    {
        long l = 0L;
        if (file.exists())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                File file1 = afile[j];
                if (file1.isFile())
                {
                    l += file1.length();
                }
            }

        }
        return l;
    }
}
