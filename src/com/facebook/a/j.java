// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import java.io.File;
import java.io.FilenameFilter;

// Referenced classes of package com.facebook.a:
//            i

final class j
    implements FilenameFilter
{

    final String a[];
    final i b;

    j(i i, String as[])
    {
        b = i;
        a = as;
        super();
    }

    public final boolean accept(File file, String s)
    {
        String as[] = a;
        int i = as.length;
        int k = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (k < i)
                {
                    if (!s.endsWith(as[k]))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            k++;
        } while (true);
    }
}
