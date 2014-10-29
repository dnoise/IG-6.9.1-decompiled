// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y;

import android.content.Context;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.y:
//            b, c

public final class a
{

    public static void a(Executor executor, String s)
    {
        executor.execute(new b(s));
    }

    public static boolean a(Context context)
    {
        return context.getExternalFilesDir(null) != null;
    }

    public static boolean a(InputStream inputstream, File file)
    {
        BufferedOutputStream bufferedoutputstream;
        byte abyte0[];
        bufferedoutputstream = null;
        abyte0 = new byte[4096];
        BufferedOutputStream bufferedoutputstream1 = new BufferedOutputStream(new FileOutputStream(file));
_L3:
        int i = inputstream.read(abyte0);
        if (i <= 0) goto _L2; else goto _L1
_L1:
        bufferedoutputstream1.write(abyte0, 0, i);
          goto _L3
        IOException ioexception1;
        ioexception1;
_L7:
        Exception exception;
        IOException ioexception3;
        try
        {
            bufferedoutputstream1.close();
        }
        catch (IOException ioexception2)
        {
            return false;
        }
        return false;
_L2:
        try
        {
            bufferedoutputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception3) { }
        return true;
        exception;
_L5:
        try
        {
            bufferedoutputstream.close();
        }
        catch (IOException ioexception) { }
        throw exception;
        exception;
        bufferedoutputstream = bufferedoutputstream1;
        if (true) goto _L5; else goto _L4
_L4:
        IOException ioexception4;
        ioexception4;
        bufferedoutputstream1 = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static boolean a(String s)
    {
        return (new File(s)).delete();
    }

    public static File b(Context context)
    {
        return new File(context.getCacheDir(), (new StringBuilder("tmp_photo_")).append(String.valueOf(System.currentTimeMillis())).append(".jpg").toString());
    }

    public static void b(String s)
    {
        File file = new File(s);
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                b(afile[j].toString());
            }

        }
        file.delete();
    }

    public static void b(Executor executor, String s)
    {
        executor.execute(new c(s));
    }
}
