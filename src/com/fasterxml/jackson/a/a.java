// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;

import com.fasterxml.jackson.a.g.d;
import java.io.Serializable;
import java.util.Arrays;

public final class a
    implements Serializable
{

    protected final String a;
    protected final transient boolean b;
    protected final transient char c;
    protected final transient int d;
    private final transient int e[];
    private final transient char f[];
    private final transient byte g[];

    public a(a a1, String s)
    {
        this(a1, s, a1.b, a1.c, 0x7fffffff);
    }

    public a(a a1, String s, boolean flag, char c1, int i)
    {
        e = new int[128];
        f = new char[64];
        g = new byte[64];
        a = s;
        byte abyte0[] = a1.g;
        System.arraycopy(abyte0, 0, g, 0, abyte0.length);
        char ac[] = a1.f;
        System.arraycopy(ac, 0, f, 0, ac.length);
        int ai[] = a1.e;
        System.arraycopy(ai, 0, e, 0, ai.length);
        b = flag;
        c = c1;
        d = i;
    }

    public a(String s, String s1, boolean flag, char c1, int i)
    {
        int j = 0;
        super();
        e = new int[128];
        f = new char[64];
        g = new byte[64];
        a = s;
        b = flag;
        c = c1;
        d = i;
        int k = s1.length();
        if (k != 64)
        {
            throw new IllegalArgumentException((new StringBuilder("Base64Alphabet length must be exactly 64 (was ")).append(k).append(")").toString());
        }
        s1.getChars(0, k, f, 0);
        Arrays.fill(e, -1);
        for (; j < k; j++)
        {
            char c2 = f[j];
            g[j] = (byte)c2;
            e[c2] = j;
        }

        if (flag)
        {
            e[c1] = -2;
        }
    }

    private void a(char c1, int i, String s)
    {
        String s1;
        if (c1 <= ' ')
        {
            s1 = (new StringBuilder("Illegal white space character (code 0x")).append(Integer.toHexString(c1)).append(") as character #").append(i + 1).append(" of 4-char base64 unit: can only used between units").toString();
        } else
        if (a(c1))
        {
            s1 = (new StringBuilder("Unexpected padding character ('")).append(b()).append("') as character #").append(i + 1).append(" of 4-char base64 unit: padding only legal as 3rd or 4th character").toString();
        } else
        if (!Character.isDefined(c1) || Character.isISOControl(c1))
        {
            s1 = (new StringBuilder("Illegal character (code 0x")).append(Integer.toHexString(c1)).append(") in base64 content").toString();
        } else
        {
            s1 = (new StringBuilder("Illegal character '")).append(c1).append("' (code 0x").append(Integer.toHexString(c1)).append(") in base64 content").toString();
        }
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s1).append(": ").append(s).toString();
        }
        throw new IllegalArgumentException(s1);
    }

    private void a(StringBuilder stringbuilder, int i)
    {
        stringbuilder.append(f[0x3f & i >> 18]);
        stringbuilder.append(f[0x3f & i >> 12]);
        stringbuilder.append(f[0x3f & i >> 6]);
        stringbuilder.append(f[i & 0x3f]);
    }

    private void a(StringBuilder stringbuilder, int i, int j)
    {
        stringbuilder.append(f[0x3f & i >> 18]);
        stringbuilder.append(f[0x3f & i >> 12]);
        if (b)
        {
            char c1;
            if (j == 2)
            {
                c1 = f[0x3f & i >> 6];
            } else
            {
                c1 = c;
            }
            stringbuilder.append(c1);
            stringbuilder.append(c);
        } else
        if (j == 2)
        {
            stringbuilder.append(f[0x3f & i >> 6]);
            return;
        }
    }

    private static void d()
    {
        throw new IllegalArgumentException("Unexpected end-of-String in base64 content");
    }

    public final int a(int i, int j, byte abyte0[], int k)
    {
        int l = k + 1;
        abyte0[k] = g[0x3f & i >> 18];
        int i1 = l + 1;
        abyte0[l] = g[0x3f & i >> 12];
        if (b)
        {
            byte byte0 = (byte)c;
            int k1 = i1 + 1;
            byte byte1;
            int l1;
            if (j == 2)
            {
                byte1 = g[0x3f & i >> 6];
            } else
            {
                byte1 = byte0;
            }
            abyte0[i1] = byte1;
            l1 = k1 + 1;
            abyte0[k1] = byte0;
            return l1;
        }
        if (j == 2)
        {
            int j1 = i1 + 1;
            abyte0[i1] = g[0x3f & i >> 6];
            return j1;
        } else
        {
            return i1;
        }
    }

    public final int a(int i, int j, char ac[], int k)
    {
        int l = k + 1;
        ac[k] = f[0x3f & i >> 18];
        int i1 = l + 1;
        ac[l] = f[0x3f & i >> 12];
        if (b)
        {
            int k1 = i1 + 1;
            char c1;
            int l1;
            if (j == 2)
            {
                c1 = f[0x3f & i >> 6];
            } else
            {
                c1 = c;
            }
            ac[i1] = c1;
            l1 = k1 + 1;
            ac[k1] = c;
            return l1;
        }
        if (j == 2)
        {
            int j1 = i1 + 1;
            ac[i1] = f[0x3f & i >> 6];
            return j1;
        } else
        {
            return i1;
        }
    }

    public final int a(int i, byte abyte0[], int j)
    {
        int k = j + 1;
        abyte0[j] = g[0x3f & i >> 18];
        int l = k + 1;
        abyte0[k] = g[0x3f & i >> 12];
        int i1 = l + 1;
        abyte0[l] = g[0x3f & i >> 6];
        int j1 = i1 + 1;
        abyte0[i1] = g[i & 0x3f];
        return j1;
    }

    public final int a(int i, char ac[], int j)
    {
        int k = j + 1;
        ac[j] = f[0x3f & i >> 18];
        int l = k + 1;
        ac[k] = f[0x3f & i >> 12];
        int i1 = l + 1;
        ac[l] = f[0x3f & i >> 6];
        int j1 = i1 + 1;
        ac[i1] = f[i & 0x3f];
        return j1;
    }

    public final String a(byte abyte0[], boolean flag)
    {
        int i = abyte0.length;
        StringBuilder stringbuilder = new StringBuilder(i + (i >> 2) + (i >> 3));
        if (flag)
        {
            stringbuilder.append('"');
        }
        int j = c() >> 2;
        int k = 0;
        int l = i - 3;
        int i1 = j;
        int i3;
        for (; k <= l; k = i3)
        {
            int i2 = k + 1;
            int j2 = abyte0[k] << 8;
            int k2 = i2 + 1;
            int l2 = (j2 | 0xff & abyte0[i2]) << 8;
            i3 = k2 + 1;
            a(stringbuilder, l2 | 0xff & abyte0[k2]);
            int j3 = i1 - 1;
            if (j3 <= 0)
            {
                stringbuilder.append('\\');
                stringbuilder.append('n');
                j3 = c() >> 2;
            }
            i1 = j3;
        }

        int j1 = i - k;
        if (j1 > 0)
        {
            int k1 = k + 1;
            int l1 = abyte0[k] << 16;
            if (j1 == 2)
            {
                l1 |= (0xff & abyte0[k1]) << 8;
            }
            a(stringbuilder, l1, j1);
        }
        if (flag)
        {
            stringbuilder.append('"');
        }
        return stringbuilder.toString();
    }

    public final void a(String s, d d1)
    {
        int i;
        int j;
        i = s.length();
        j = 0;
_L8:
        if (j >= i) goto _L2; else goto _L1
_L1:
        int k;
        char c1;
        k = j + 1;
        c1 = s.charAt(j);
        if (k >= i) goto _L2; else goto _L3
_L3:
        int i1;
        int k1;
        if (c1 <= ' ')
        {
            break MISSING_BLOCK_LABEL_360;
        }
        int l = b(c1);
        if (l < 0)
        {
            a(c1, 0, ((String) (null)));
        }
        if (k >= i)
        {
            d();
        }
        i1 = k + 1;
        char c2 = s.charAt(k);
        int j1 = b(c2);
        if (j1 < 0)
        {
            a(c2, 1, ((String) (null)));
        }
        k1 = j1 | l << 6;
        if (i1 < i) goto _L5; else goto _L4
_L4:
        if (a()) goto _L7; else goto _L6
_L6:
        d1.a(k1 >> 4);
_L2:
        return;
_L7:
        d();
_L5:
        int l1 = i1 + 1;
        char c3 = s.charAt(i1);
        int i2 = b(c3);
        if (i2 < 0)
        {
            if (i2 != -2)
            {
                a(c3, 2, ((String) (null)));
            }
            if (l1 >= i)
            {
                d();
            }
            j = l1 + 1;
            char c5 = s.charAt(l1);
            if (!a(c5))
            {
                a(c5, 3, (new StringBuilder("expected padding character '")).append(b()).append("'").toString());
            }
            d1.a(k1 >> 4);
        } else
        {
            int j2 = i2 | k1 << 6;
            if (l1 >= i)
            {
                if (!a())
                {
                    d1.b(j2 >> 2);
                    return;
                }
                d();
            }
            j = l1 + 1;
            char c4 = s.charAt(l1);
            int k2 = b(c4);
            if (k2 < 0)
            {
                if (k2 != -2)
                {
                    a(c4, 3, ((String) (null)));
                }
                d1.b(j2 >> 2);
            } else
            {
                d1.c(k2 | j2 << 6);
            }
        }
          goto _L8
        j = k;
          goto _L1
    }

    public final boolean a()
    {
        return b;
    }

    public final boolean a(char c1)
    {
        return c1 == c;
    }

    public final boolean a(int i)
    {
        return i == c;
    }

    public final char b()
    {
        return c;
    }

    public final int b(char c1)
    {
        if (c1 <= '\177')
        {
            return e[c1];
        } else
        {
            return -1;
        }
    }

    public final int b(int i)
    {
        if (i <= 127)
        {
            return e[i];
        } else
        {
            return -1;
        }
    }

    public final int c()
    {
        return d;
    }

    public final boolean equals(Object obj)
    {
        return obj == this;
    }

    public final int hashCode()
    {
        return a.hashCode();
    }

    public final String toString()
    {
        return a;
    }
}
