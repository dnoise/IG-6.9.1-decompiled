// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.f;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

// Referenced classes of package com.instagram.common.a.f:
//            h

public final class d
    implements h
{

    private final String a;
    private final File b;
    private final String c;

    public d(String s, File file, String s1)
    {
        a = s;
        b = file;
        c = s1;
    }

    public final String a()
    {
        return a;
    }

    public final long b()
    {
        return b.length();
    }

    public final String c()
    {
        return c;
    }

    public final InputStream d()
    {
        return new FileInputStream(b);
    }
}
