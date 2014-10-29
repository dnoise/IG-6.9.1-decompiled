// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import java.io.File;

final class k
    implements Comparable
{

    private final File a;
    private final long b;

    k(File file)
    {
        a = file;
        b = file.lastModified();
    }

    private int a(k k1)
    {
        if (b() < k1.b())
        {
            return -1;
        }
        if (b() > k1.b())
        {
            return 1;
        } else
        {
            return a().compareTo(k1.a());
        }
    }

    final File a()
    {
        return a;
    }

    final long b()
    {
        return b;
    }

    public final int compareTo(Object obj)
    {
        return a((k)obj);
    }

    public final boolean equals(Object obj)
    {
        return (obj instanceof k) && a((k)obj) == 0;
    }
}
