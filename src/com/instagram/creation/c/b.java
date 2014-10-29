// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.c;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public final class b
{

    public static boolean a()
    {
        return b() > 100L;
    }

    private static long b()
    {
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long)statfs.getBlockSize() * (long)statfs.getAvailableBlocks()) / 0x100000L;
    }
}
