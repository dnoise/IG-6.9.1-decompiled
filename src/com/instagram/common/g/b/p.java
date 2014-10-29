// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import java.io.File;
import java.io.FilenameFilter;

// Referenced classes of package com.instagram.common.g.b:
//            o

final class p
    implements FilenameFilter
{

    final o a;

    p(o o)
    {
        a = o;
        super();
    }

    public final boolean accept(File file, String s)
    {
        return s.endsWith(".0") || "journal".equals(s);
    }
}
