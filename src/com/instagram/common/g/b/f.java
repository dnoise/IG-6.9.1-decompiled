// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;


// Referenced classes of package com.instagram.common.g.b:
//            g

final class f
{

    private final g a;
    private final byte b[] = new byte[4096];
    private byte c[];
    private boolean d;
    private int e;

    f(g g1, int i)
    {
        a = g1;
        c = new byte[i];
        d = false;
    }

    private void b(int i)
    {
        byte abyte0[] = new byte[Math.max(c.length << 1, i)];
        System.arraycopy(c, 0, abyte0, 0, e);
        c = abyte0;
    }

    private void f()
    {
        d = false;
        e = 0;
    }

    public final void a(int i)
    {
        if (d)
        {
            throw new RuntimeException("The buffer is already frozen");
        }
        if (i < 0)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("Negative length detected : ")).append(i).toString());
        }
        if (i == 0)
        {
            return;
        }
        int j = i + e;
        if (j > c.length)
        {
            b(j);
        }
        System.arraycopy(b, 0, c, e, i);
        e = j;
    }

    public final byte[] a()
    {
        return b;
    }

    public final byte[] b()
    {
        return c;
    }

    public final int c()
    {
        return e;
    }

    public final void d()
    {
        d = true;
    }

    public final void e()
    {
        f();
        a.a(this);
    }
}
