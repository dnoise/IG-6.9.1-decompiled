// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

// Referenced classes of package com.fasterxml.jackson.a.c:
//            d

abstract class a extends Reader
{

    protected final d a;
    protected InputStream b;
    protected byte c[];
    protected int d;
    protected int e;
    protected char f[];

    protected a(d d1, InputStream inputstream, byte abyte0[], int i, int j)
    {
        f = null;
        a = d1;
        b = inputstream;
        c = abyte0;
        d = i;
        e = j;
    }

    protected static void a(char ac[], int i, int j)
    {
        throw new ArrayIndexOutOfBoundsException((new StringBuilder("read(buf,")).append(i).append(",").append(j).append("), cbuf[").append(ac.length).append("]").toString());
    }

    protected static void b()
    {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    public final void a()
    {
        byte abyte0[] = c;
        if (abyte0 != null)
        {
            c = null;
            a.a(abyte0);
        }
    }

    public void close()
    {
        InputStream inputstream = b;
        if (inputstream != null)
        {
            b = null;
            a();
            inputstream.close();
        }
    }

    public int read()
    {
        if (f == null)
        {
            f = new char[1];
        }
        if (read(f, 0, 1) <= 0)
        {
            return -1;
        } else
        {
            return f[0];
        }
    }
}
