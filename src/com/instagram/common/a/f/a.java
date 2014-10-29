// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.f;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

// Referenced classes of package com.instagram.common.a.f:
//            h

public final class a
    implements h
{

    private final String a;
    private final byte b[];
    private final String c;

    public a(String s, byte abyte0[], String s1)
    {
        a = s;
        b = abyte0;
        c = s1;
    }

    public final String a()
    {
        return a;
    }

    public final long b()
    {
        return (long)b.length;
    }

    public final String c()
    {
        return c;
    }

    public final InputStream d()
    {
        return new ByteArrayInputStream(b);
    }
}
