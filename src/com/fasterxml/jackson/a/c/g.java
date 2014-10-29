// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import java.io.InputStream;

// Referenced classes of package com.fasterxml.jackson.a.c:
//            d

public final class g extends InputStream
{

    protected final d a;
    final InputStream b;
    byte c[];
    int d;
    final int e;

    public g(d d1, InputStream inputstream, byte abyte0[], int i, int j)
    {
        a = d1;
        b = inputstream;
        c = abyte0;
        d = i;
        e = j;
    }

    private void a()
    {
        byte abyte0[] = c;
        if (abyte0 != null)
        {
            c = null;
            if (a != null)
            {
                a.a(abyte0);
            }
        }
    }

    public final int available()
    {
        if (c != null)
        {
            return e - d;
        } else
        {
            return b.available();
        }
    }

    public final void close()
    {
        a();
        b.close();
    }

    public final void mark(int i)
    {
        if (c == null)
        {
            b.mark(i);
        }
    }

    public final boolean markSupported()
    {
        return c == null && b.markSupported();
    }

    public final int read()
    {
        if (c != null)
        {
            byte abyte0[] = c;
            int i = d;
            d = i + 1;
            int j = 0xff & abyte0[i];
            if (d >= e)
            {
                a();
            }
            return j;
        } else
        {
            return b.read();
        }
    }

    public final int read(byte abyte0[])
    {
        return read(abyte0, 0, abyte0.length);
    }

    public final int read(byte abyte0[], int i, int j)
    {
        if (c != null)
        {
            int k = e - d;
            if (j > k)
            {
                j = k;
            }
            System.arraycopy(c, d, abyte0, i, j);
            d = j + d;
            if (d >= e)
            {
                a();
            }
            return j;
        } else
        {
            return b.read(abyte0, i, j);
        }
    }

    public final void reset()
    {
        if (c == null)
        {
            b.reset();
        }
    }

    public final long skip(long l)
    {
        if (c == null) goto _L2; else goto _L1
_L1:
        int i = e - d;
        if ((long)i <= l) goto _L4; else goto _L3
_L3:
        long l1;
        d = d + (int)l;
        l1 = l;
_L9:
        return l1;
_L4:
        a();
        l1 = 0L + (long)i;
        l -= i;
_L7:
        if (l > 0L)
        {
            return l1 + b.skip(l);
        }
          goto _L5
_L2:
        l1 = 0L;
        if (true) goto _L7; else goto _L6
_L6:
_L5:
        if (true) goto _L9; else goto _L8
_L8:
    }
}
