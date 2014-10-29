// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.k.a;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

final class g extends InputStream
{

    private final InputStream a;
    private BufferedOutputStream b;
    private final File c;

    public g(InputStream inputstream, File file)
    {
        a = inputstream;
        c = file;
        b = new BufferedOutputStream(new FileOutputStream(c));
    }

    public final int available()
    {
        return a.available();
    }

    public final void close()
    {
        b.close();
        a.close();
    }

    public final void mark(int i)
    {
        throw new RuntimeException("Operation not supported");
    }

    public final boolean markSupported()
    {
        throw new RuntimeException("Operation not supported");
    }

    public final int read()
    {
        int i = a.read();
        b.write(i);
        return i;
    }

    public final int read(byte abyte0[])
    {
        int i = a.read(abyte0);
        b.write(abyte0, 0, i);
        return i;
    }

    public final int read(byte abyte0[], int i, int j)
    {
        int k = a.read(abyte0, i, j);
        b.write(abyte0, i, k);
        return k;
    }

    public final void reset()
    {
        throw new RuntimeException("Operation not supported");
    }

    public final long skip(long l)
    {
        throw new RuntimeException("Operation not supported");
    }
}
