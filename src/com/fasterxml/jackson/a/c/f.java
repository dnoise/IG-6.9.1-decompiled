// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import com.fasterxml.jackson.a.g.d;
import com.fasterxml.jackson.a.g.o;
import java.lang.ref.SoftReference;

// Referenced classes of package com.fasterxml.jackson.a.c:
//            b, n

public final class f
{

    protected static final ThreadLocal a = new ThreadLocal();
    private static final char e[] = com.fasterxml.jackson.a.c.b.g();
    private static final byte f[] = com.fasterxml.jackson.a.c.b.h();
    protected o b;
    protected d c;
    protected final char d[] = new char[6];

    public f()
    {
        d[0] = '\\';
        d[2] = '0';
        d[3] = '0';
    }

    private static int a(int i, int j)
    {
        if (j < 56320 || j > 57343)
        {
            throw new IllegalArgumentException((new StringBuilder("Broken surrogate pair: first char 0x")).append(Integer.toHexString(i)).append(", second 0x").append(Integer.toHexString(j)).append("; illegal combination").toString());
        } else
        {
            return 0x10000 + (i - 55296 << 10) + (j - 56320);
        }
    }

    private static int a(int i, int j, d d1, int k)
    {
        d1.e(k);
        d1.a(92);
        if (j < 0)
        {
            d1.a(117);
            if (i > 255)
            {
                int l = i >> 8;
                d1.a(f[l >> 4]);
                d1.a(f[l & 0xf]);
                i &= 0xff;
            } else
            {
                d1.a(48);
                d1.a(48);
            }
            d1.a(f[i >> 4]);
            d1.a(f[i & 0xf]);
        } else
        {
            d1.a((byte)j);
        }
        return d1.g();
    }

    private static int a(int i, char ac[])
    {
        ac[1] = 'u';
        ac[4] = e[i >> 4];
        ac[5] = e[i & 0xf];
        return 6;
    }

    public static f a()
    {
        SoftReference softreference = (SoftReference)a.get();
        f f1;
        if (softreference == null)
        {
            f1 = null;
        } else
        {
            f1 = (f)softreference.get();
        }
        if (f1 == null)
        {
            f1 = new f();
            a.set(new SoftReference(f1));
        }
        return f1;
    }

    private static void a(int i)
    {
        throw new IllegalArgumentException(n.a(i));
    }

    private static int b(int i, char ac[])
    {
        ac[1] = (char)i;
        return 2;
    }

    public final char[] a(String s)
    {
        o o1 = b;
        if (o1 == null)
        {
            o1 = new o(null);
            b = o1;
        }
        char ac[] = o1.j();
        int ai[] = com.fasterxml.jackson.a.c.b.f();
        int i = ai.length;
        int j = s.length();
        int k = 0;
        int l = 0;
        do
        {
label0:
            {
                if (l < j)
                {
                    do
                    {
                        char c1 = s.charAt(l);
                        if (c1 < i && ai[c1] != 0)
                        {
                            break label0;
                        }
                        int i1;
                        int j1;
                        char c2;
                        int k1;
                        int l1;
                        int i2;
                        if (k >= ac.length)
                        {
                            ac = o1.l();
                            i1 = 0;
                        } else
                        {
                            i1 = k;
                        }
                        k = i1 + 1;
                        ac[i1] = c1;
                    } while (++l < j);
                }
                o1.a(k);
                return o1.f();
            }
            j1 = l + 1;
            c2 = s.charAt(l);
            k1 = ai[c2];
            if (k1 < 0)
            {
                l1 = a(c2, d);
            } else
            {
                l1 = b(k1, d);
            }
            if (k + l1 > ac.length)
            {
                i2 = ac.length - k;
                if (i2 > 0)
                {
                    System.arraycopy(d, 0, ac, k, i2);
                }
                ac = o1.l();
                k = l1 - i2;
                System.arraycopy(d, i2, ac, 0, k);
                l = j1;
            } else
            {
                System.arraycopy(d, 0, ac, k, l1);
                k += l1;
                l = j1;
            }
        } while (true);
    }

    public final byte[] b(String s)
    {
        d d1;
        int i;
        byte abyte0[];
        int j;
        int k;
        d1 = c;
        if (d1 == null)
        {
            d1 = new d(null);
            c = d1;
        }
        i = s.length();
        abyte0 = d1.d();
        j = 0;
        k = 0;
_L2:
label0:
        {
            if (k < i)
            {
                int ai[] = com.fasterxml.jackson.a.c.b.f();
                do
                {
                    char c1 = s.charAt(k);
                    if (c1 > '\177' || ai[c1] != 0)
                    {
                        break label0;
                    }
                    int l;
                    char c2;
                    int i1;
                    int j1;
                    int k1;
                    int l1;
                    byte abyte1[];
                    int i2;
                    int j2;
                    int k2;
                    int l2;
                    int i3;
                    int j3;
                    int k3;
                    int l3;
                    int i4;
                    byte abyte2[];
                    int j4;
                    int k4;
                    if (j >= abyte0.length)
                    {
                        abyte0 = d1.e();
                        k4 = 0;
                    } else
                    {
                        k4 = j;
                    }
                    j = k4 + 1;
                    abyte0[k4] = (byte)c1;
                } while (++k < i);
            }
            return c.d(j);
        }
        if (j >= abyte0.length)
        {
            abyte0 = d1.e();
            j = 0;
        }
        l = k + 1;
        c2 = s.charAt(k);
        if (c2 <= '\177')
        {
            j = a(c2, ai[c2], d1, j);
            abyte0 = d1.f();
            k = l;
            continue; /* Loop/switch isn't completed */
        }
        if (c2 > '\u07FF')
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = j + 1;
        abyte0[j] = (byte)(0xc0 | c2 >> 6);
        j4 = 0x80 | c2 & 0x3f;
        abyte1 = abyte0;
        i2 = j4;
_L3:
        if (k1 >= abyte1.length)
        {
            abyte1 = d1.e();
            k1 = 0;
        }
        j2 = k1 + 1;
        abyte1[k1] = (byte)i2;
        abyte0 = abyte1;
        k = l;
        j = j2;
        if (true) goto _L2; else goto _L1
_L1:
        if (c2 < '\uD800' || c2 > '\uDFFF')
        {
            i1 = j + 1;
            abyte0[j] = (byte)(0xe0 | c2 >> 12);
            if (i1 >= abyte0.length)
            {
                abyte0 = d1.e();
                j1 = 0;
            } else
            {
                j1 = i1;
            }
            k1 = j1 + 1;
            abyte0[j1] = (byte)(0x80 | 0x3f & c2 >> 6);
            l1 = 0x80 | c2 & 0x3f;
            abyte1 = abyte0;
            i2 = l1;
        } else
        {
            if (c2 > '\uDBFF')
            {
                a(c2);
            }
            if (l >= i)
            {
                a(c2);
            }
            k2 = l + 1;
            l2 = a(c2, s.charAt(l));
            if (l2 > 0x10ffff)
            {
                a(l2);
            }
            i3 = j + 1;
            abyte0[j] = (byte)(0xf0 | l2 >> 18);
            if (i3 >= abyte0.length)
            {
                abyte0 = d1.e();
                j3 = 0;
            } else
            {
                j3 = i3;
            }
            k3 = j3 + 1;
            abyte0[j3] = (byte)(0x80 | 0x3f & l2 >> 12);
            if (k3 >= abyte0.length)
            {
                abyte0 = d1.e();
                l3 = 0;
            } else
            {
                l3 = k3;
            }
            k1 = l3 + 1;
            abyte0[l3] = (byte)(0x80 | 0x3f & l2 >> 6);
            i4 = 0x80 | l2 & 0x3f;
            l = k2;
            abyte2 = abyte0;
            i2 = i4;
            abyte1 = abyte2;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public final byte[] c(String s)
    {
        i1 = j5;
_L2:
        return c.d(i1);
        d d1 = c;
        if (d1 == null)
        {
            d1 = new d(null);
            c = d1;
        }
        int i = s.length();
        byte abyte0[] = d1.d();
        int j = abyte0.length;
        int k = 0;
        int l = 0;
        int i1;
        while (l < i) 
        {
label0:
            {
                int j1 = l + 1;
                char c1 = s.charAt(l);
                int k1 = j;
                byte abyte1[] = abyte0;
                int l1 = k;
                int i2 = k1;
                int j5;
                while (c1 <= '\177') 
                {
                    if (l1 >= i2)
                    {
                        abyte1 = d1.e();
                        i2 = abyte1.length;
                        l1 = 0;
                    }
                    j5 = l1 + 1;
                    abyte1[l1] = (byte)c1;
                    if (j1 >= i)
                    {
                        break label0;
                    }
                    int k5 = j1 + 1;
                    c1 = s.charAt(j1);
                    j1 = k5;
                    l1 = j5;
                }
                int j2;
                int i3;
                int j3;
                int k3;
                if (l1 >= i2)
                {
                    abyte1 = d1.e();
                    i2 = abyte1.length;
                    j2 = 0;
                } else
                {
                    j2 = l1;
                }
                if (c1 < '\u0800')
                {
                    i3 = j2 + 1;
                    abyte1[j2] = (byte)(0xc0 | c1 >> 6);
                    j3 = c1;
                    l = j1;
                } else
                if (c1 < '\uD800' || c1 > '\uDFFF')
                {
                    int k2 = j2 + 1;
                    abyte1[j2] = (byte)(0xe0 | c1 >> 12);
                    if (k2 >= i2)
                    {
                        abyte1 = d1.e();
                        i2 = abyte1.length;
                        k2 = 0;
                    }
                    int l2 = k2 + 1;
                    abyte1[k2] = (byte)(0x80 | 0x3f & c1 >> 6);
                    i3 = l2;
                    j3 = c1;
                    l = j1;
                } else
                {
                    if (c1 > '\uDBFF')
                    {
                        a(c1);
                    }
                    if (j1 >= i)
                    {
                        a(c1);
                    }
                    int l3 = j1 + 1;
                    int i4 = a(c1, s.charAt(j1));
                    if (i4 > 0x10ffff)
                    {
                        a(i4);
                    }
                    int j4 = j2 + 1;
                    abyte1[j2] = (byte)(0xf0 | i4 >> 18);
                    if (j4 >= i2)
                    {
                        abyte1 = d1.e();
                        i2 = abyte1.length;
                        j4 = 0;
                    }
                    int k4 = j4 + 1;
                    abyte1[j4] = (byte)(0x80 | 0x3f & i4 >> 12);
                    int l4;
                    int i5;
                    if (k4 >= i2)
                    {
                        abyte1 = d1.e();
                        i2 = abyte1.length;
                        l4 = 0;
                    } else
                    {
                        l4 = k4;
                    }
                    i5 = l4 + 1;
                    abyte1[l4] = (byte)(0x80 | 0x3f & i4 >> 6);
                    i3 = i5;
                    j3 = i4;
                    l = l3;
                }
                if (i3 >= i2)
                {
                    abyte1 = d1.e();
                    i2 = abyte1.length;
                    i3 = 0;
                }
                k3 = i3 + 1;
                abyte1[i3] = (byte)(0x80 | j3 & 0x3f);
                abyte0 = abyte1;
                j = i2;
                k = k3;
            }
        }
        i1 = k;
        if (true) goto _L2; else goto _L1
_L1:
    }

}
