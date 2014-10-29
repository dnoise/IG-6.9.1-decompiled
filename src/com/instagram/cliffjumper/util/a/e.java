// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util.a;

import java.io.File;

public class e
{

    private static final Class a = com/instagram/cliffjumper/util/a/e;
    private int b;
    private int c;

    public e()
    {
    }

    private int b()
    {
        int i;
        int j;
        i = 0;
        if (b != 0)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        j = 0;
_L2:
        if (i >= 32)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!(new File((new StringBuilder("/sys/devices/system/cpu/cpu")).append(i).toString())).exists())
        {
            break; /* Loop/switch isn't completed */
        }
        j++;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (j != 0)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        try
        {
            b = -1;
        }
        catch (Exception exception)
        {
            a;
            b = -1;
        }
        return b;
        b = j;
        break MISSING_BLOCK_LABEL_64;
    }

    private int c()
    {
        if (c == 0)
        {
            c = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return c;
    }

    public final int a()
    {
        int i;
        if (android.os.Build.VERSION.SDK_INT <= 10)
        {
            i = 1;
        } else
        {
            i = b();
            if (i == -1)
            {
                return c();
            }
        }
        return i;
    }

}
