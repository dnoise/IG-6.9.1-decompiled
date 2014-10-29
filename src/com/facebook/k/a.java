// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.k;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.StatFs;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

// Referenced classes of package com.facebook.k:
//            c, b

public final class a
{

    private static Context a = null;
    private static boolean b = false;

    private static c a(File file, String s, String s1, File file1, StringBuilder stringbuilder)
    {
        long l;
        boolean flag;
        long l1;
        l = file.lastModified();
        if (file1.exists() && file1.lastModified() >= l && file1.length() > 0L)
        {
            (new StringBuilder("File ")).append(s).append(" already unpacked!");
            return c.a;
        }
        (new StringBuilder("unpacking ")).append(s).append(" from ").append(file);
        flag = true;
        l1 = -1L;
        JarFile jarfile = new JarFile(file);
        JarEntry jarentry = jarfile.getJarEntry(s);
        if (jarentry != null) goto _L2; else goto _L1
_L1:
        (new StringBuilder("main file is unavailable, unpacking alternative ")).append(s1).append(" from ").append(file);
        stringbuilder.append("Main so file unavailable:");
        stringbuilder.append(s);
        jarentry = jarfile.getJarEntry(s1);
        if (jarentry != null) goto _L2; else goto _L3
_L3:
        c c1;
        stringbuilder.append("Could not load alternative so file:");
        stringbuilder.append(s1);
        Log.e("SoLoader", stringbuilder.toString());
        c1 = c.b;
        jarfile.close();
        return c1;
        IOException ioexception2;
        ioexception2;
        Log.e("SoLoader", "Failed to close streams!", ioexception2);
        return c1;
        IOException ioexception1;
        ioexception1;
_L5:
        long l2;
        Log.e("SoLoader", "Failed to unpack library!", ioexception1);
        stringbuilder.append(ioexception1.toString());
        flag = false;
        l2 = l1;
_L8:
        if (l2 != -1L && file1.length() != l2 || file1.length() == 0L)
        {
            file1.delete();
            return c.c;
        }
          goto _L4
_L2:
        JarEntry jarentry1 = jarentry;
        long l3 = jarentry1.getSize();
        l2 = l3;
        c c2;
        if (a(l2))
        {
            break MISSING_BLOCK_LABEL_357;
        }
        Log.e("SoLoader", "not enough free space on the device");
        stringbuilder.append("not enough free space");
        c2 = c.b;
        jarfile.close();
        return c2;
        IOException ioexception4;
        ioexception4;
        Log.e("SoLoader", "Failed to close streams!", ioexception4);
        return c2;
        ioexception1;
        l1 = l2;
          goto _L5
        InputStream inputstream = jarfile.getInputStream(jarentry1);
        File file2 = null;
        BufferedOutputStream bufferedoutputstream;
        file2 = File.createTempFile("soloader", ".tmp", file1.getParentFile());
        bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file2));
        byte abyte0[] = new byte[16384];
_L7:
        int i = inputstream.read(abyte0, 0, 16384);
        if (i <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        bufferedoutputstream.write(abyte0, 0, i);
        if (i != -1) goto _L7; else goto _L6
_L6:
        bufferedoutputstream.flush();
        a(((Closeable) (bufferedoutputstream)), "Failed to close streams!");
        file2.renameTo(file1);
        file1.setExecutable(true);
        a(((Closeable) (inputstream)), "Failed to close streams!");
        if (file2 == null)
        {
            break MISSING_BLOCK_LABEL_492;
        }
        if (file2.exists())
        {
            file2.delete();
        }
        file1.setLastModified(l);
        jarfile.close();
          goto _L8
        IOException ioexception3;
        ioexception3;
        Log.e("SoLoader", "Failed to close streams!", ioexception3);
          goto _L8
        Exception exception1;
        exception1;
        l1 = l2;
_L12:
        Log.e("SoLoader", "Failed to unpack library (non-io exception)!", exception1);
        stringbuilder.append(exception1.toString());
        l2 = l1;
        flag = false;
          goto _L8
        Exception exception3;
        exception3;
        a(((Closeable) (bufferedoutputstream)), "Failed to close streams!");
        throw exception3;
        Exception exception2;
        exception2;
        a(((Closeable) (inputstream)), "Failed to close streams!");
        if (file2 == null)
        {
            break MISSING_BLOCK_LABEL_599;
        }
        if (file2.exists())
        {
            file2.delete();
        }
        throw exception2;
        Exception exception;
        exception;
        l1 = l2;
_L11:
        jarfile.close();
_L9:
        throw exception;
        IOException ioexception;
        ioexception;
        Log.e("SoLoader", "Failed to close streams!", ioexception);
        if (true) goto _L9; else goto _L4
_L4:
        if (flag)
        {
            return c.a;
        } else
        {
            return c.b;
        }
        exception;
        if (true) goto _L11; else goto _L10
_L10:
        exception1;
          goto _L12
    }

    private static File a()
    {
        return new File(a.getApplicationInfo().nativeLibraryDir);
    }

    public static File a(String s)
    {
        return a(s, b.a);
    }

    private static File a(String s, int i)
    {
        boolean flag = true;
        int j = 0;
        com/facebook/k/a;
        JVM INSTR monitorenter ;
        if (!b) goto _L2; else goto _L1
_L1:
        File file = new File("");
_L15:
        com/facebook/k/a;
        JVM INSTR monitorexit ;
        return file;
_L2:
        if (a == null)
        {
            throw new RuntimeException("SoLoader.init() must be called before SoLoader use");
        }
        break MISSING_BLOCK_LABEL_54;
        Exception exception;
        exception;
        com/facebook/k/a;
        JVM INSTR monitorexit ;
        throw exception;
        String s2;
        String s3;
        File file1;
        File file2;
        File file3;
        String s1 = System.mapLibraryName(s);
        s2 = (new StringBuilder("lib/")).append(Build.CPU_ABI).append("/").append(s1).toString();
        s3 = (new StringBuilder("lib/")).append(Build.CPU_ABI2).append("/").append(s1).toString();
        file1 = a();
        file = new File(file1, s1);
        file2 = new File(b(), s1);
        file3 = new File(a.getPackageResourcePath());
        boolean flag1;
        int k;
        c c1;
        StringBuilder stringbuilder;
        Throwable throwable1;
        if (android.os.Build.VERSION.SDK_INT < 11 && file1.lastModified() < file3.lastModified())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (flag1) goto _L4; else goto _L3
_L3:
        k = b.a;
        if (i != k) goto _L6; else goto _L5
_L5:
        System.loadLibrary(s);
_L13:
        if (!flag) goto _L8; else goto _L7
_L7:
        file2.delete();
        (new StringBuilder("found ")).append(s).append(" in default place");
        continue; /* Loop/switch isn't completed */
        throwable1;
        (new StringBuilder("Failed to load ")).append(s).append("using System.loadLibrary");
        flag = false;
        continue; /* Loop/switch isn't completed */
_L6:
        flag = file.exists();
        continue; /* Loop/switch isn't completed */
_L8:
        (new StringBuilder("failed to find ")).append(s).append(" in default place - extracting from apk");
        c1 = c.a;
        stringbuilder = new StringBuilder();
        int l;
        Throwable throwable;
        for (; j >= 3; j++)
        {
            break MISSING_BLOCK_LABEL_399;
        }

        stringbuilder.setLength(0);
        c1 = a(file3, s2, s3, file2, stringbuilder);
        if (c1.equals(c.b))
        {
            a((new StringBuilder("failed to unpack from apk: ")).append(file2).append(" Error:").append(stringbuilder.toString()).toString(), ((Throwable) (null)));
            break MISSING_BLOCK_LABEL_552;
        }
        if (!c1.equals(c.a))
        {
            break MISSING_BLOCK_LABEL_552;
        }
        if (!c1.equals(c.a))
        {
            a((new StringBuilder("failed to unpack from apk (multiple attempts): ")).append(file2).append(" Error:").append(stringbuilder.toString()).toString(), ((Throwable) (null)));
        }
        l = b.a;
        if (i != l) goto _L10; else goto _L9
_L9:
        Runtime.getRuntime().load(file2.getAbsolutePath());
_L11:
        (new StringBuilder("Loaded from ")).append(file2);
        break MISSING_BLOCK_LABEL_558;
        throwable;
        a((new StringBuilder("failed to load from ")).append(file2).toString(), throwable);
        if (true) goto _L11; else goto _L10
_L10:
        (new StringBuilder()).append(s).append(" found at ").append(file2);
        break MISSING_BLOCK_LABEL_558;
_L4:
        flag = false;
        if (true) goto _L13; else goto _L12
_L12:
        file = file2;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public static void a(Context context)
    {
        if (a == null)
        {
            a = context;
        }
    }

    private static void a(Closeable closeable, String s)
    {
        try
        {
            closeable.close();
            return;
        }
        catch (IOException ioexception)
        {
            Log.e("SoLoader", s, ioexception);
        }
    }

    private static void a(String s, Throwable throwable)
    {
        Log.e("SoLoader", s, throwable);
        UnsatisfiedLinkError unsatisfiedlinkerror = new UnsatisfiedLinkError(s);
        if (throwable != null)
        {
            unsatisfiedlinkerror.initCause(throwable);
        }
        throw unsatisfiedlinkerror;
    }

    private static boolean a(long l)
    {
        StatFs statfs = new StatFs(b().getAbsolutePath());
        return l < (long)statfs.getAvailableBlocks() * (long)statfs.getBlockSize();
    }

    private static File b()
    {
        File file = a.getDir("libs", 0);
        if (file == null)
        {
            throw new RuntimeException("failure to create app subdir");
        } else
        {
            return file;
        }
    }

}
