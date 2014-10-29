// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.UUID;

public final class f
{

    private static String a = null;

    public static String a(Context context)
    {
        com/facebook/a/c/f;
        JVM INSTR monitorenter ;
        if (a != null) goto _L2; else goto _L1
_L1:
        File file = context.getFilesDir();
        if (file != null) goto _L4; else goto _L3
_L3:
        String s = "n/a";
_L6:
        com/facebook/a/c/f;
        JVM INSTR monitorexit ;
        return s;
_L4:
        File file1 = new File(file.getParent(), "ACRA-INSTALLATION");
        if (!file1.exists())
        {
            b(file1);
        }
        a = a(file1);
_L2:
        s = a;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        s = "n/a";
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    private static String a(File file)
    {
        RandomAccessFile randomaccessfile = new RandomAccessFile(file, "r");
        String s;
        byte abyte0[] = new byte[(int)randomaccessfile.length()];
        randomaccessfile.readFully(abyte0);
        s = new String(abyte0);
        randomaccessfile.close();
        return s;
        Exception exception;
        exception;
        randomaccessfile.close();
        throw exception;
    }

    private static void b(File file)
    {
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        fileoutputstream.write(UUID.randomUUID().toString().getBytes());
        fileoutputstream.close();
        return;
        Exception exception;
        exception;
        fileoutputstream.close();
        throw exception;
    }

}
