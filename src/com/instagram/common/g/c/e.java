// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.c;

import com.c.a.g;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;

public final class e
    implements Closeable
{

    private final g a;

    public e(g g1)
    {
        a = g1;
    }

    public final FileDescriptor a()
    {
        return ((FileInputStream)a.a()).getFD();
    }

    public final void close()
    {
        a.close();
    }
}
