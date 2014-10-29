// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

// Referenced classes of package com.fasterxml.jackson.a.c:
//            d

public final class n extends Writer
{

    private final d a;
    private OutputStream b;
    private byte c[];
    private final int d;
    private int e;
    private int f;

    public n(d d1, OutputStream outputstream)
    {
        f = 0;
        a = d1;
        b = outputstream;
        c = d1.f();
        d = -4 + c.length;
        e = 0;
    }

    protected static String a(int i)
    {
        if (i > 0x10ffff)
        {
            return (new StringBuilder("Illegal character point (0x")).append(Integer.toHexString(i)).append(") to output; max is 0x10FFFF as per RFC 4627").toString();
        }
        if (i >= 55296)
        {
            if (i <= 56319)
            {
                return (new StringBuilder("Unmatched first part of surrogate pair (0x")).append(Integer.toHexString(i)).append(")").toString();
            } else
            {
                return (new StringBuilder("Unmatched second part of surrogate pair (0x")).append(Integer.toHexString(i)).append(")").toString();
            }
        } else
        {
            return (new StringBuilder("Illegal character point (0x")).append(Integer.toHexString(i)).append(") to output").toString();
        }
    }

    private int b(int i)
    {
        int j = f;
        f = 0;
        if (i < 56320 || i > 57343)
        {
            throw new IOException((new StringBuilder("Broken surrogate pair: first char 0x")).append(Integer.toHexString(j)).append(", second 0x").append(Integer.toHexString(i)).append("; illegal combination").toString());
        } else
        {
            return 0x10000 + (j - 55296 << 10) + (i - 56320);
        }
    }

    private static void c(int i)
    {
        throw new IOException(a(i));
    }

    public final Writer append(char c1)
    {
        write(c1);
        return this;
    }

    public final volatile Appendable append(char c1)
    {
        return append(c1);
    }

    public final void close()
    {
        if (b != null)
        {
            if (e > 0)
            {
                b.write(c, 0, e);
                e = 0;
            }
            OutputStream outputstream = b;
            b = null;
            byte abyte0[] = c;
            if (abyte0 != null)
            {
                c = null;
                a.b(abyte0);
            }
            outputstream.close();
            int i = f;
            f = 0;
            if (i > 0)
            {
                c(i);
            }
        }
    }

    public final void flush()
    {
        if (b != null)
        {
            if (e > 0)
            {
                b.write(c, 0, e);
                e = 0;
            }
            b.flush();
        }
    }

    public final void write(int i)
    {
        if (f > 0)
        {
            i = b(i);
        } else
        if (i >= 55296 && i <= 57343)
        {
            if (i > 56319)
            {
                c(i);
            }
            f = i;
            return;
        }
        if (e >= d)
        {
            b.write(c, 0, e);
            e = 0;
        }
        if (i < 128)
        {
            byte abyte9[] = c;
            int j2 = e;
            e = j2 + 1;
            abyte9[j2] = (byte)i;
            return;
        }
        int j = e;
        int j1;
        if (i < 2048)
        {
            byte abyte7[] = c;
            int i2 = j + 1;
            abyte7[j] = (byte)(0xc0 | i >> 6);
            byte abyte8[] = c;
            j1 = i2 + 1;
            abyte8[i2] = (byte)(0x80 | i & 0x3f);
        } else
        if (i <= 65535)
        {
            byte abyte4[] = c;
            int k1 = j + 1;
            abyte4[j] = (byte)(0xe0 | i >> 12);
            byte abyte5[] = c;
            int l1 = k1 + 1;
            abyte5[k1] = (byte)(0x80 | 0x3f & i >> 6);
            byte abyte6[] = c;
            j1 = l1 + 1;
            abyte6[l1] = (byte)(0x80 | i & 0x3f);
        } else
        {
            if (i > 0x10ffff)
            {
                c(i);
            }
            byte abyte0[] = c;
            int k = j + 1;
            abyte0[j] = (byte)(0xf0 | i >> 18);
            byte abyte1[] = c;
            int l = k + 1;
            abyte1[k] = (byte)(0x80 | 0x3f & i >> 12);
            byte abyte2[] = c;
            int i1 = l + 1;
            abyte2[l] = (byte)(0x80 | 0x3f & i >> 6);
            byte abyte3[] = c;
            j1 = i1 + 1;
            abyte3[i1] = (byte)(0x80 | i & 0x3f);
        }
        e = j1;
    }

    public final void write(String s)
    {
        write(s, 0, s.length());
    }

    public final void write(String s, int i, int j)
    {
        int k;
        byte abyte0[];
        int l;
        int i1;
        int j1;
        if (j < 2)
        {
            if (j == 1)
            {
                write(s.charAt(i));
            }
            return;
        }
        if (f > 0)
        {
            int i6 = i + 1;
            char c2 = s.charAt(i);
            j--;
            write(b(c2));
            i = i6;
        }
        k = e;
        abyte0 = c;
        l = d;
        i1 = j + i;
        j1 = i;
_L5:
        int k1;
        if (j1 >= i1) goto _L2; else goto _L1
        j1 = j5;
        int k5 = i5;
        l1 = c1;
        k = k5;
_L6:
        if (l1 < 2048)
        {
            int l3 = k + 1;
            abyte0[k] = (byte)(0xc0 | l1 >> 6);
            k = l3 + 1;
            abyte0[l3] = (byte)(0x80 | l1 & 0x3f);
        } else
        {
label0:
            {
                if (l1 >= 55296 && l1 <= 57343)
                {
                    break label0;
                }
                int i2 = k + 1;
                abyte0[k] = (byte)(0xe0 | l1 >> 12);
                int j2 = i2 + 1;
                abyte0[i2] = (byte)(0x80 | 0x3f & l1 >> 6);
                k = j2 + 1;
                abyte0[j2] = (byte)(0x80 | l1 & 0x3f);
            }
        }
          goto _L3
        if (l1 > 56319)
        {
            e = k;
            c(l1);
        }
        f = l1;
        if (j1 >= i1) goto _L2; else goto _L4
_L4:
        int k2 = j1 + 1;
        int l2 = b(s.charAt(j1));
        if (l2 > 0x10ffff)
        {
            e = k;
            c(l2);
        }
        int i3 = k + 1;
        abyte0[k] = (byte)(0xf0 | l2 >> 18);
        int j3 = i3 + 1;
        abyte0[i3] = (byte)(0x80 | 0x3f & l2 >> 12);
        int k3 = j3 + 1;
        abyte0[j3] = (byte)(0x80 | 0x3f & l2 >> 6);
        k = k3 + 1;
        abyte0[k3] = (byte)(0x80 | l2 & 0x3f);
        j1 = k2;
          goto _L3
_L2:
        j1;
        e = k;
        return;
_L1:
        if (k >= l)
        {
            b.write(abyte0, 0, k);
            k = 0;
        }
        k1 = j1 + 1;
        int l1 = s.charAt(j1);
        if (l1 >= 128)
        {
            break MISSING_BLOCK_LABEL_576;
        }
        int i4 = k + 1;
        abyte0[k] = (byte)l1;
        int j4 = i1 - k1;
        int k4 = l - i4;
        int l4;
        int i5;
        int j5;
        char c1;
        if (j4 <= k4)
        {
            k4 = j4;
        }
        l4 = k4 + k1;
        i5 = i4;
        for (j1 = k1; j1 < l4; j1 = j5)
        {
            j5 = j1 + 1;
            c1 = s.charAt(j1);
            if (c1 >= '\200')
            {
                break MISSING_BLOCK_LABEL_236;
            }
            int l5 = i5 + 1;
            abyte0[i5] = (byte)c1;
            i5 = l5;
        }

        k = i5;
_L3:
        if (true) goto _L5; else goto _L2
        j1 = k1;
          goto _L6
    }

    public final void write(char ac[])
    {
        write(ac, 0, ac.length);
    }

    public final void write(char ac[], int i, int j)
    {
        int k;
        byte abyte0[];
        int l;
        int i1;
        int j1;
        if (j < 2)
        {
            if (j == 1)
            {
                write(ac[i]);
            }
            return;
        }
        if (f > 0)
        {
            int i6 = i + 1;
            char c2 = ac[i];
            j--;
            write(b(c2));
            i = i6;
        }
        k = e;
        abyte0 = c;
        l = d;
        i1 = j + i;
        j1 = i;
_L5:
        int k1;
        if (j1 >= i1) goto _L2; else goto _L1
        j1 = j5;
        int k5 = i5;
        l1 = c1;
        k = k5;
_L6:
        if (l1 < 2048)
        {
            int l3 = k + 1;
            abyte0[k] = (byte)(0xc0 | l1 >> 6);
            k = l3 + 1;
            abyte0[l3] = (byte)(0x80 | l1 & 0x3f);
        } else
        {
label0:
            {
                if (l1 >= 55296 && l1 <= 57343)
                {
                    break label0;
                }
                int i2 = k + 1;
                abyte0[k] = (byte)(0xe0 | l1 >> 12);
                int j2 = i2 + 1;
                abyte0[i2] = (byte)(0x80 | 0x3f & l1 >> 6);
                k = j2 + 1;
                abyte0[j2] = (byte)(0x80 | l1 & 0x3f);
            }
        }
          goto _L3
        if (l1 > 56319)
        {
            e = k;
            c(l1);
        }
        f = l1;
        if (j1 >= i1) goto _L2; else goto _L4
_L4:
        int k2 = j1 + 1;
        int l2 = b(ac[j1]);
        if (l2 > 0x10ffff)
        {
            e = k;
            c(l2);
        }
        int i3 = k + 1;
        abyte0[k] = (byte)(0xf0 | l2 >> 18);
        int j3 = i3 + 1;
        abyte0[i3] = (byte)(0x80 | 0x3f & l2 >> 12);
        int k3 = j3 + 1;
        abyte0[j3] = (byte)(0x80 | 0x3f & l2 >> 6);
        k = k3 + 1;
        abyte0[k3] = (byte)(0x80 | l2 & 0x3f);
        j1 = k2;
          goto _L3
_L2:
        j1;
        e = k;
        return;
_L1:
        if (k >= l)
        {
            b.write(abyte0, 0, k);
            k = 0;
        }
        k1 = j1 + 1;
        int l1 = ac[j1];
        if (l1 >= 128)
        {
            break MISSING_BLOCK_LABEL_566;
        }
        int i4 = k + 1;
        abyte0[k] = (byte)l1;
        int j4 = i1 - k1;
        int k4 = l - i4;
        int l4;
        int i5;
        int j5;
        char c1;
        if (j4 <= k4)
        {
            k4 = j4;
        }
        l4 = k4 + k1;
        i5 = i4;
        for (j1 = k1; j1 < l4; j1 = j5)
        {
            j5 = j1 + 1;
            c1 = ac[j1];
            if (c1 >= '\200')
            {
                break MISSING_BLOCK_LABEL_228;
            }
            int l5 = i5 + 1;
            abyte0[i5] = (byte)c1;
            i5 = l5;
        }

        k = i5;
_L3:
        if (true) goto _L5; else goto _L2
        j1 = k1;
          goto _L6
    }
}
