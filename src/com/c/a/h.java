// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.c.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

// Referenced classes of package com.c.a:
//            j, i

final class h
    implements Closeable
{

    private final InputStream a;
    private final Charset b;
    private byte c[];
    private int d;
    private int e;

    public h(InputStream inputstream, Charset charset)
    {
        this(inputstream, charset, (byte)0);
    }

    private h(InputStream inputstream, Charset charset, byte byte0)
    {
        if (inputstream == null || charset == null)
        {
            throw new NullPointerException();
        }
        if (!charset.equals(j.a))
        {
            throw new IllegalArgumentException("Unsupported encoding");
        } else
        {
            a = inputstream;
            b = charset;
            c = new byte[8192];
            return;
        }
    }

    static Charset a(h h1)
    {
        return h1.b;
    }

    private void b()
    {
        int k = a.read(c, 0, c.length);
        if (k == -1)
        {
            throw new EOFException();
        } else
        {
            d = 0;
            e = k;
            return;
        }
    }

    public final String a()
    {
        synchronized (a)
        {
            if (c == null)
            {
                throw new IOException("LineReader is closed");
            }
            break MISSING_BLOCK_LABEL_29;
        }
        int k;
        if (d >= e)
        {
            b();
        }
        k = d;
_L9:
        if (k == e) goto _L2; else goto _L1
_L1:
        if (c[k] != 10)
        {
            break MISSING_BLOCK_LABEL_278;
        }
        i l;
        int i1;
        String s;
        int j1;
        String s1;
        if (k != d && c[k - 1] == 13)
        {
            j1 = k - 1;
        } else
        {
            j1 = k;
        }
        s1 = new String(c, d, j1 - d, b.name());
        d = k + 1;
        inputstream;
        JVM INSTR monitorexit ;
        return s1;
_L2:
        l = new i(this, 80 + (e - d));
_L8:
        l.write(c, d, e - d);
        e = -1;
        b();
        i1 = d;
_L6:
        if (i1 == e)
        {
            break; /* Loop/switch isn't completed */
        }
        if (c[i1] != 10) goto _L4; else goto _L3
_L3:
        if (i1 != d)
        {
            l.write(c, d, i1 - d);
        }
        d = i1 + 1;
        s = l.toString();
        inputstream;
        JVM INSTR monitorexit ;
        return s;
_L4:
        i1++;
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
        k++;
          goto _L9
    }

    public final void close()
    {
        synchronized (a)
        {
            if (c != null)
            {
                c = null;
                a.close();
            }
        }
    }
}
