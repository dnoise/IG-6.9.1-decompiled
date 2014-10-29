// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.z;

import android.content.Context;
import android.content.res.Resources;
import com.facebook.ar;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Random;
import java.util.UUID;

public class a
{

    private static String a = null;
    private static long b = System.currentTimeMillis();

    public a()
    {
    }

    public static String a()
    {
        String s;
        try
        {
            s = b(com.instagram.common.h.a.a());
        }
        catch (RuntimeException runtimeexception)
        {
            com.facebook.e.a.a.a(com/instagram/common/z/a, "filesystem unavailable", runtimeexception);
            return null;
        }
        return s;
    }

    public static String a(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (s == null || s.length() == 0 || a(s, context))
        {
            s = "";
        }
        return (new StringBuilder("android-")).append(s).toString();
    }

    private static String a(File file)
    {
        RandomAccessFile randomaccessfile = new RandomAccessFile(file, "r");
        byte abyte0[];
        abyte0 = new byte[(int)randomaccessfile.length()];
        randomaccessfile.readFully(abyte0);
        randomaccessfile.close();
        return new String(abyte0);
        Exception exception;
        exception;
        randomaccessfile.close();
        throw exception;
    }

    private static String a(File file, File file1)
    {
        String s = b();
        (new StringBuilder("New device found, writing install files")).append(a);
        a(file1, s);
        b(file, s);
        return a(file1);
    }

    private static void a(File file, String s)
    {
        a(new FileOutputStream(file), s);
    }

    private static void a(FileOutputStream fileoutputstream, String s)
    {
        fileoutputstream.write(s.getBytes());
        fileoutputstream.flush();
        try
        {
            fileoutputstream.getFD().sync();
        }
        catch (IOException ioexception) { }
        fileoutputstream.close();
    }

    private static boolean a(String s, Context context)
    {
        String as[] = context.getResources().getStringArray(ar.faulty_security_ids);
        int i = as.length;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    if (!as[j].equalsIgnoreCase(s))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    private static String b()
    {
        String s = UUID.randomUUID().toString();
        String as[] = s.split("-");
        if (as.length < 2)
        {
            return s;
        } else
        {
            String s1 = Integer.toHexString((new Random()).nextInt(15));
            String s2 = Long.toHexString(1635L + (System.currentTimeMillis() - b) / 1000L);
            return s.replaceFirst(as[1], String.format("%s%s", new Object[] {
                s1, s2
            }));
        }
    }

    public static String b(Context context)
    {
        com/instagram/common/z/a;
        JVM INSTR monitorenter ;
        if (a == null) goto _L2; else goto _L1
_L1:
        String s = a;
_L7:
        com/instagram/common/z/a;
        JVM INSTR monitorexit ;
        return s;
_L2:
        File file;
        File file1;
        file = new File("/mnt/sdcard/.profig.os");
        file1 = new File(context.getFilesDir(), "INSTALLATION");
        if (!file.exists()) goto _L4; else goto _L3
_L3:
        a = a(file);
        (new StringBuilder("External installation file found: ")).append(a);
        if (a != null && a.length() != 0) goto _L6; else goto _L5
_L5:
        a = a(file, file1);
_L9:
        s = a;
          goto _L7
_L6:
        if (file1.exists()) goto _L9; else goto _L8
_L8:
        a(file1, a);
          goto _L9
        Exception exception1;
        exception1;
        throw new RuntimeException(exception1);
        Exception exception;
        exception;
        com/instagram/common/z/a;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
label0:
        {
            if (!file1.exists())
            {
                break MISSING_BLOCK_LABEL_206;
            }
            a = a(file1);
            (new StringBuilder("Internal installation file found, no external file found: ")).append(a);
            if (a != null && a.length() != 0)
            {
                break label0;
            }
            a = a(file, file1);
        }
          goto _L9
        b(file, a);
          goto _L9
        a = a(file, file1);
          goto _L9
    }

    private static void b(File file, String s)
    {
        try
        {
            a(new FileOutputStream(file), s);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

}
