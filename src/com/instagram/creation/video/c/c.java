// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.c;

import java.io.File;

// Referenced classes of package com.instagram.creation.video.c:
//            b

final class c
    implements Runnable
{

    final File a;

    c(File file)
    {
        a = file;
        super();
    }

    public final void run()
    {
        File afile[] = a.listFiles();
        int i = afile.length;
        for (int j = 0; j < i; j++)
        {
            File file = afile[j];
            if (b.a(file))
            {
                file.delete();
            }
        }

    }
}
