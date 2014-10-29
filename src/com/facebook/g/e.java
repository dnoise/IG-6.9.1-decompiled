// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import java.io.File;
import java.io.FilenameFilter;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.facebook.g:
//            f, g, b

final class e
{

    private static final FilenameFilter a = new f();
    private static final FilenameFilter b = new g();

    static FilenameFilter a()
    {
        return a;
    }

    static void a(File file)
    {
        File afile[] = file.listFiles(b());
        int i = afile.length;
        for (int j = 0; j < i; j++)
        {
            afile[j].delete();
        }

    }

    static File b(File file)
    {
        return new File(file, (new StringBuilder("buffer")).append(Long.valueOf(com.facebook.g.b.a().incrementAndGet()).toString()).toString());
    }

    private static FilenameFilter b()
    {
        return b;
    }

}
