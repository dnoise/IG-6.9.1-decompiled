// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;


// Referenced classes of package com.fasterxml.jackson.a.g:
//            b, c

public final class a
{

    protected final byte a[][] = new byte[com.fasterxml.jackson.a.g.b.values().length][];
    protected final char b[][] = new char[c.values().length][];

    public a()
    {
    }

    private static byte[] a(int i)
    {
        return new byte[i];
    }

    private static char[] b(int i)
    {
        return new char[i];
    }

    public final void a(b b1, byte abyte0[])
    {
        a[b1.ordinal()] = abyte0;
    }

    public final void a(c c1, char ac[])
    {
        b[c1.ordinal()] = ac;
    }

    public final byte[] a(b b1)
    {
        int i = b1.ordinal();
        byte abyte0[] = a[i];
        if (abyte0 == null)
        {
            return a(b1.e);
        } else
        {
            a[i] = null;
            return abyte0;
        }
    }

    public final char[] a(c c1)
    {
        return a(c1, 0);
    }

    public final char[] a(c c1, int i)
    {
        if (c1.e > i)
        {
            i = c1.e;
        }
        int j = c1.ordinal();
        char ac[] = b[j];
        if (ac == null || ac.length < i)
        {
            return b(i);
        } else
        {
            b[j] = null;
            return ac;
        }
    }
}
