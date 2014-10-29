// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.fasterxml.jackson.a.g:
//            b, a

public final class d extends OutputStream
{

    private static final byte a[] = new byte[0];
    private final a b;
    private final LinkedList c;
    private int d;
    private byte e[];
    private int f;

    public d()
    {
        this(((a) (null)));
    }

    public d(byte byte0)
    {
        this(null, 100);
    }

    public d(a a1)
    {
        this(a1, 500);
    }

    private d(a a1, int i)
    {
        c = new LinkedList();
        b = a1;
        if (a1 == null)
        {
            e = new byte[i];
            return;
        } else
        {
            e = a1.a(b.c);
            return;
        }
    }

    private void h()
    {
        int i = 0x40000;
        d = d + e.length;
        int j = Math.max(d >> 1, 1000);
        if (j <= i)
        {
            i = j;
        }
        c.add(e);
        e = new byte[i];
        f = 0;
    }

    public final void a()
    {
        d = 0;
        f = 0;
        if (!c.isEmpty())
        {
            c.clear();
        }
    }

    public final void a(int i)
    {
        if (f >= e.length)
        {
            h();
        }
        byte abyte0[] = e;
        int j = f;
        f = j + 1;
        abyte0[j] = (byte)i;
    }

    public final void b()
    {
        a();
        if (b != null && e != null)
        {
            b.a(b.c, e);
            e = null;
        }
    }

    public final void b(int i)
    {
        if (1 + f < e.length)
        {
            byte abyte0[] = e;
            int j = f;
            f = j + 1;
            abyte0[j] = (byte)(i >> 8);
            byte abyte1[] = e;
            int k = f;
            f = k + 1;
            abyte1[k] = (byte)i;
            return;
        } else
        {
            a(i >> 8);
            a(i);
            return;
        }
    }

    public final void c(int i)
    {
        if (2 + f < e.length)
        {
            byte abyte0[] = e;
            int j = f;
            f = j + 1;
            abyte0[j] = (byte)(i >> 16);
            byte abyte1[] = e;
            int k = f;
            f = k + 1;
            abyte1[k] = (byte)(i >> 8);
            byte abyte2[] = e;
            int l = f;
            f = l + 1;
            abyte2[l] = (byte)i;
            return;
        } else
        {
            a(i >> 16);
            a(i >> 8);
            a(i);
            return;
        }
    }

    public final byte[] c()
    {
        int i = d + f;
        if (i == 0)
        {
            return a;
        }
        byte abyte0[] = new byte[i];
        Iterator iterator = c.iterator();
        int j;
        int l;
        for (j = 0; iterator.hasNext(); j += l)
        {
            byte abyte1[] = (byte[])iterator.next();
            l = abyte1.length;
            System.arraycopy(abyte1, 0, abyte0, j, l);
        }

        System.arraycopy(e, 0, abyte0, j, f);
        int k = j + f;
        if (k != i)
        {
            throw new RuntimeException((new StringBuilder("Internal error: total len assumed to be ")).append(i).append(", copied ").append(k).append(" bytes").toString());
        }
        if (!c.isEmpty())
        {
            a();
        }
        return abyte0;
    }

    public final void close()
    {
    }

    public final byte[] d()
    {
        a();
        return e;
    }

    public final byte[] d(int i)
    {
        f = i;
        return c();
    }

    public final void e(int i)
    {
        f = i;
    }

    public final byte[] e()
    {
        h();
        return e;
    }

    public final byte[] f()
    {
        return e;
    }

    public final void flush()
    {
    }

    public final int g()
    {
        return f;
    }

    public final void write(int i)
    {
        a(i);
    }

    public final void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public final void write(byte abyte0[], int i, int j)
    {
        do
        {
            int k = Math.min(e.length - f, j);
            if (k > 0)
            {
                System.arraycopy(abyte0, i, e, f, k);
                i += k;
                f = k + f;
                j -= k;
            }
            if (j > 0)
            {
                h();
            } else
            {
                return;
            }
        } while (true);
    }

}
