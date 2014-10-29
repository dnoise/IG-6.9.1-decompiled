// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;

import android.os.Process;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.util.Scanner;

// Referenced classes of package com.facebook.a.c:
//            i

public class h
{

    private static final Class a = com/facebook/a/c/h;

    public h()
    {
    }

    public static int a()
    {
        int j = 0;
        String as[];
        String as1[];
        int k;
        try
        {
            as = new String[3];
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(Process.myPid());
            as[0] = String.format("/proc/%s/fd", aobj);
            as[1] = "/proc/self/fd";
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(Process.myTid());
            as[2] = String.format("/proc/%s/fd", aobj1);
        }
        catch (SecurityException securityexception)
        {
            Log.e(a.toString(), securityexception.getMessage());
            return -2;
        }
        if (j >= 3)
        {
            break;
        }
        as1 = (new File(as[j])).list();
        if (as1 == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        k = as1.length;
        return k;
        for (j++; true;)
        {
            break MISSING_BLOCK_LABEL_64;
        }

        return -1;
    }

    public static i b()
    {
        Scanner scanner = new Scanner(new File("/proc/self/limits"));
        String s = scanner.findWithinHorizon("Max open files", 5000);
        if (s != null) goto _L2; else goto _L1
_L1:
        scanner.close();
_L4:
        return null;
_L2:
        i j = new i(scanner.next(), scanner.next());
        scanner.close();
        return j;
        IOException ioexception1;
        ioexception1;
        Scanner scanner1 = null;
_L9:
        if (scanner1 == null) goto _L4; else goto _L3
_L3:
        scanner1.close();
        return null;
        NoSuchElementException nosuchelementexception1;
        nosuchelementexception1;
        scanner = null;
_L8:
        if (scanner == null) goto _L4; else goto _L5
_L5:
        scanner.close();
        return null;
        Exception exception1;
        exception1;
        Exception exception;
        scanner = null;
        exception = exception1;
_L7:
        if (scanner != null)
        {
            scanner.close();
        }
        throw exception;
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        NoSuchElementException nosuchelementexception;
        nosuchelementexception;
          goto _L8
          goto _L4
        IOException ioexception;
        ioexception;
        scanner1 = scanner;
          goto _L9
    }

}
