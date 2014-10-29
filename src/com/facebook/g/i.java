// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import java.io.InputStream;
import java.io.OutputStream;

final class i extends InputStream
{

    final InputStream a;
    final OutputStream b;

    i(InputStream inputstream, OutputStream outputstream)
    {
        a = inputstream;
        b = outputstream;
    }

    public final int available()
    {
        return a.available();
    }

    public final void close()
    {
        a.close();
        b.close();
        return;
        Exception exception;
        exception;
        b.close();
        throw exception;
    }

    public final void mark(int j)
    {
        throw new UnsupportedOperationException();
    }

    public final boolean markSupported()
    {
        return false;
    }

    public final int read()
    {
        int j = a.read();
        if (j >= 0)
        {
            b.write(j);
        }
        return j;
    }

    public final int read(byte abyte0[])
    {
        int j = a.read(abyte0);
        if (j > 0)
        {
            b.write(abyte0, 0, j);
        }
        return j;
    }

    public final int read(byte abyte0[], int j, int k)
    {
        int l = a.read(abyte0, j, k);
        if (l > 0)
        {
            b.write(abyte0, j, l);
        }
        return l;
    }

    public final void reset()
    {
        this;
        JVM INSTR monitorenter ;
        throw new UnsupportedOperationException();
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final long skip(long l)
    {
        byte abyte0[] = new byte[1024];
        long l1 = 0L;
        do
        {
            int j;
label0:
            {
                if (l1 < l)
                {
                    j = read(abyte0, 0, (int)Math.min(l - l1, 1024L));
                    if (j >= 0)
                    {
                        break label0;
                    }
                }
                return l1;
            }
            l1 += j;
        } while (true);
    }
}
