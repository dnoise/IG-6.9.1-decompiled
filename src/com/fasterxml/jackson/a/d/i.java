// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.d;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.c.b;
import com.fasterxml.jackson.a.c.c;
import com.fasterxml.jackson.a.c.d;
import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.t;
import com.fasterxml.jackson.a.u;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.a.d:
//            c, e

public final class i extends com.fasterxml.jackson.a.d.c
{

    static final byte l[] = com.fasterxml.jackson.a.c.b.h();
    private static final byte u[] = {
        110, 117, 108, 108
    };
    private static final byte v[] = {
        116, 114, 117, 101
    };
    private static final byte w[] = {
        102, 97, 108, 115, 101
    };
    protected final OutputStream m;
    protected byte n[];
    protected int o;
    protected final int p;
    protected final int q;
    protected char r[];
    protected final int s;
    protected boolean t;

    public i(d d1, int j, s s1, OutputStream outputstream)
    {
        super(d1, j, s1);
        o = 0;
        m = outputstream;
        t = true;
        n = d1.f();
        p = n.length;
        q = p >> 3;
        r = d1.i();
        s = r.length;
        if (isEnabled(com.fasterxml.jackson.a.i.g))
        {
            setHighestNonEscapedChar(127);
        }
    }

    private int a(int j, char ac[], int k, int i1)
    {
        if (j >= 55296 && j <= 57343)
        {
            if (k >= i1)
            {
                b("Split surrogate on writeRaw() input (last character)");
            }
            a(j, ac[k]);
            return k + 1;
        } else
        {
            byte abyte0[] = n;
            int j1 = o;
            o = j1 + 1;
            abyte0[j1] = (byte)(0xe0 | j >> 12);
            int k1 = o;
            o = k1 + 1;
            abyte0[k1] = (byte)(0x80 | 0x3f & j >> 6);
            int l1 = o;
            o = l1 + 1;
            abyte0[l1] = (byte)(0x80 | j & 0x3f);
            return k;
        }
    }

    private int a(a a1, InputStream inputstream, byte abyte0[])
    {
        int j = -3;
        int k = -6 + p;
        int i1 = a1.c() >> 2;
        int j1 = 0;
        int k1 = 0;
        int l1 = 0;
        do
        {
            if (l1 > j)
            {
                k1 = a(inputstream, abyte0, l1, k1, abyte0.length);
                if (k1 < 3)
                {
                    break;
                }
                j = k1 - 3;
                l1 = 0;
            }
            if (o > k)
            {
                f();
            }
            int i2 = l1 + 1;
            int j2 = abyte0[l1] << 8;
            int k2 = i2 + 1;
            int l2 = (j2 | 0xff & abyte0[i2]) << 8;
            int i3 = k2 + 1;
            int j3 = l2 | 0xff & abyte0[k2];
            j1 += 3;
            o = a1.a(j3, n, o);
            int k3 = i1 - 1;
            if (k3 <= 0)
            {
                byte abyte1[] = n;
                int l3 = o;
                o = l3 + 1;
                abyte1[l3] = 92;
                byte abyte2[] = n;
                int i4 = o;
                o = i4 + 1;
                abyte2[i4] = 110;
                k3 = a1.c() >> 2;
            }
            i1 = k3;
            l1 = i3;
        } while (true);
        if (k1 > 0)
        {
            if (o > k)
            {
                f();
            }
            int j4 = abyte0[0] << 16;
            byte byte0;
            int k4;
            if (1 < k1)
            {
                j4 |= (0xff & abyte0[1]) << 8;
                byte0 = 2;
            } else
            {
                byte0 = 1;
            }
            k4 = j1 + byte0;
            o = a1.a(j4, byte0, n, o);
            return k4;
        } else
        {
            return j1;
        }
    }

    private int a(a a1, InputStream inputstream, byte abyte0[], int j)
    {
        int k = 0;
        int i1 = -3;
        int j1 = -6 + p;
        int k1 = a1.c() >> 2;
        int l1 = 0;
        int i2;
        for (i2 = j; i2 > 2;)
        {
            if (l1 > i1)
            {
                k = a(inputstream, abyte0, l1, k, i2);
                l1 = 0;
                if (k < 3)
                {
                    break;
                }
                i1 = k - 3;
            }
            if (o > j1)
            {
                f();
            }
            int l2 = l1 + 1;
            int i3 = abyte0[l1] << 8;
            int j3 = l2 + 1;
            int k3 = (i3 | 0xff & abyte0[l2]) << 8;
            int l3 = j3 + 1;
            int i4 = k3 | 0xff & abyte0[j3];
            i2 -= 3;
            o = a1.a(i4, n, o);
            int j4 = k1 - 1;
            if (j4 <= 0)
            {
                byte abyte1[] = n;
                int k4 = o;
                o = k4 + 1;
                abyte1[k4] = 92;
                byte abyte2[] = n;
                int l4 = o;
                o = l4 + 1;
                abyte2[l4] = 110;
                j4 = a1.c() >> 2;
            }
            k1 = j4;
            l1 = l3;
        }

        if (i2 > 0)
        {
            int j2 = a(inputstream, abyte0, l1, k, i2);
            if (j2 > 0)
            {
                if (o > j1)
                {
                    f();
                }
                int k2 = abyte0[0] << 16;
                byte byte0;
                if (1 < j2)
                {
                    k2 |= (0xff & abyte0[1]) << 8;
                    byte0 = 2;
                } else
                {
                    byte0 = 1;
                }
                o = a1.a(k2, byte0, n, o);
                return i2 - byte0;
            }
        }
        return i2;
    }

    private static int a(InputStream inputstream, byte abyte0[], int j, int k, int i1)
    {
        int j1 = 0;
        int k2;
        for (; j < k; j = k2)
        {
            int j2 = j1 + 1;
            k2 = j + 1;
            abyte0[j1] = abyte0[j];
            j1 = j2;
        }

        int k1 = Math.min(i1, abyte0.length);
        do
        {
            int i2;
label0:
            {
                int l1 = k1 - j1;
                if (l1 != 0)
                {
                    i2 = inputstream.read(abyte0, j1, l1);
                    if (i2 >= 0)
                    {
                        break label0;
                    }
                }
                return j1;
            }
            j1 += i2;
            if (j1 >= 3)
            {
                return j1;
            }
        } while (true);
    }

    private int a(byte abyte0[], int j, int k, byte abyte1[], int i1)
    {
        int j1 = abyte1.length;
        if (j + j1 <= k) goto _L2; else goto _L1
_L1:
        int k1;
        o = j;
        f();
        k1 = o;
        if (j1 <= abyte0.length) goto _L4; else goto _L3
_L3:
        m.write(abyte1, 0, j1);
_L9:
        return k1;
_L4:
        System.arraycopy(abyte1, 0, abyte0, k1, j1);
        k1 += j1;
_L7:
        if (k1 + i1 * 6 > k)
        {
            f();
            return o;
        }
          goto _L5
_L2:
        k1 = j;
        if (true) goto _L7; else goto _L6
_L6:
_L5:
        if (true) goto _L9; else goto _L8
_L8:
    }

    private int a(byte abyte0[], int j, u u1, int k)
    {
        byte abyte1[] = u1.c();
        int i1 = abyte1.length;
        if (i1 > 6)
        {
            return a(abyte0, j, p, abyte1, k);
        } else
        {
            System.arraycopy(abyte1, 0, abyte0, j, i1);
            return i1 + j;
        }
    }

    private void a(int j)
    {
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int k = o;
        o = k + 1;
        abyte0[k] = 34;
        b(r, 0, j);
        if (o >= p)
        {
            f();
        }
        byte abyte1[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
    }

    private void a(int j, int k)
    {
        int i1 = c(j, k);
        if (4 + o > p)
        {
            f();
        }
        byte abyte0[] = n;
        int j1 = o;
        o = j1 + 1;
        abyte0[j1] = (byte)(0xf0 | i1 >> 18);
        int k1 = o;
        o = k1 + 1;
        abyte0[k1] = (byte)(0x80 | 0x3f & i1 >> 12);
        int l1 = o;
        o = l1 + 1;
        abyte0[l1] = (byte)(0x80 | 0x3f & i1 >> 6);
        int i2 = o;
        o = i2 + 1;
        abyte0[i2] = (byte)(0x80 | i1 & 0x3f);
    }

    private void a(long l1)
    {
        if (23 + o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 34;
        o = com.fasterxml.jackson.a.c.i.a(l1, n, o);
        byte abyte1[] = n;
        int k = o;
        o = k + 1;
        abyte1[k] = 34;
    }

    private void a(a a1, byte abyte0[], int j, int k)
    {
        int i1 = k - 3;
        int j1 = -6 + p;
        int k1 = a1.c() >> 2;
        do
        {
            if (j > i1)
            {
                break;
            }
            if (o > j1)
            {
                f();
            }
            int k2 = j + 1;
            int l2 = abyte0[j] << 8;
            int i3 = k2 + 1;
            int j3 = (l2 | 0xff & abyte0[k2]) << 8;
            j = i3 + 1;
            o = a1.a(j3 | 0xff & abyte0[i3], n, o);
            if (--k1 <= 0)
            {
                byte abyte1[] = n;
                int k3 = o;
                o = k3 + 1;
                abyte1[k3] = 92;
                byte abyte2[] = n;
                int l3 = o;
                o = l3 + 1;
                abyte2[l3] = 110;
                k1 = a1.c() >> 2;
            }
        } while (true);
        int l1 = k - j;
        if (l1 > 0)
        {
            if (o > j1)
            {
                f();
            }
            int i2 = j + 1;
            int j2 = abyte0[j] << 16;
            if (l1 == 2)
            {
                j2 |= (0xff & abyte0[i2]) << 8;
            }
            o = a1.a(j2, l1, n, o);
        }
    }

    private void a(u u1)
    {
        if (!isEnabled(com.fasterxml.jackson.a.i.c))
        {
            int j1 = u1.a(n, o);
            if (j1 < 0)
            {
                a(u1.d());
                return;
            } else
            {
                o = j1 + o;
                return;
            }
        }
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 34;
        int k = u1.a(n, o);
        byte abyte1[];
        int i1;
        if (k < 0)
        {
            a(u1.d());
        } else
        {
            o = k + o;
        }
        if (o >= p)
        {
            f();
        }
        abyte1 = n;
        i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
    }

    private void a(u u1, boolean flag)
    {
        boolean flag1;
        if (flag)
        {
            _cfgPrettyPrinter.c(this);
        } else
        {
            _cfgPrettyPrinter.h(this);
        }
        flag1 = isEnabled(com.fasterxml.jackson.a.i.c);
        if (flag1)
        {
            if (o >= p)
            {
                f();
            }
            byte abyte1[] = n;
            int k = o;
            o = k + 1;
            abyte1[k] = 34;
        }
        a(u1.d());
        if (flag1)
        {
            if (o >= p)
            {
                f();
            }
            byte abyte0[] = n;
            int j = o;
            o = j + 1;
            abyte0[j] = 34;
        }
    }

    private void a(Object obj)
    {
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 34;
        writeRaw(obj.toString());
        if (o >= p)
        {
            f();
        }
        byte abyte1[] = n;
        int k = o;
        o = k + 1;
        abyte1[k] = 34;
    }

    private void a(String s1, boolean flag)
    {
        if (flag)
        {
            _cfgPrettyPrinter.c(this);
        } else
        {
            _cfgPrettyPrinter.h(this);
        }
        if (isEnabled(com.fasterxml.jackson.a.i.c))
        {
            if (o >= p)
            {
                f();
            }
            byte abyte0[] = n;
            int j = o;
            o = j + 1;
            abyte0[j] = 34;
            int k = s1.length();
            if (k <= s)
            {
                s1.getChars(0, k, r, 0);
                byte abyte1[];
                int i1;
                if (k <= q)
                {
                    if (k + o > p)
                    {
                        f();
                    }
                    c(r, 0, k);
                } else
                {
                    b(r, 0, k);
                }
            } else
            {
                e(s1);
            }
            if (o >= p)
            {
                f();
            }
            abyte1 = n;
            i1 = o;
            o = i1 + 1;
            abyte1[i1] = 34;
            return;
        } else
        {
            e(s1);
            return;
        }
    }

    private void a(short word0)
    {
        if (8 + o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 34;
        o = com.fasterxml.jackson.a.c.i.a(word0, n, o);
        byte abyte1[] = n;
        int k = o;
        o = k + 1;
        abyte1[k] = 34;
    }

    private final void a(byte abyte0[])
    {
        int j = abyte0.length;
        if (j + o > p)
        {
            f();
            if (j > 512)
            {
                m.write(abyte0, 0, j);
                return;
            }
        }
        System.arraycopy(abyte0, 0, n, o, j);
        o = j + o;
    }

    private final void a(byte abyte0[], int j, int k)
    {
        if (k + o > p)
        {
            f();
            if (k > 512)
            {
                m.write(abyte0, j, k);
                return;
            }
        }
        System.arraycopy(abyte0, j, n, o, k);
        o = k + o;
    }

    private final void a(char ac[], int j, int k)
    {
        int i1 = p;
        byte abyte0[] = n;
        int j1 = j;
        do
        {
label0:
            {
                if (j1 < k)
                {
                    do
                    {
                        char c1 = ac[j1];
                        if (c1 >= '\200')
                        {
                            break label0;
                        }
                        if (o >= i1)
                        {
                            f();
                        }
                        int j2 = o;
                        o = j2 + 1;
                        abyte0[j2] = (byte)c1;
                    } while (++j1 < k);
                }
                return;
            }
            if (3 + o >= p)
            {
                f();
            }
            int k1 = j1 + 1;
            char c2 = ac[j1];
            if (c2 < '\u0800')
            {
                int l1 = o;
                o = l1 + 1;
                abyte0[l1] = (byte)(0xc0 | c2 >> 6);
                int i2 = o;
                o = i2 + 1;
                abyte0[i2] = (byte)(0x80 | c2 & 0x3f);
                j1 = k1;
            } else
            {
                a(c2, ac, k1, k);
                j1 = k1;
            }
        } while (true);
    }

    private int b(int j, int k)
    {
        byte abyte0[] = n;
        if (j >= 55296 && j <= 57343)
        {
            int l1 = k + 1;
            abyte0[k] = 92;
            int i2 = l1 + 1;
            abyte0[l1] = 117;
            int j2 = i2 + 1;
            abyte0[i2] = l[0xf & j >> 12];
            int k2 = j2 + 1;
            abyte0[j2] = l[0xf & j >> 8];
            int l2 = k2 + 1;
            abyte0[k2] = l[0xf & j >> 4];
            int i3 = l2 + 1;
            abyte0[l2] = l[j & 0xf];
            return i3;
        } else
        {
            int i1 = k + 1;
            abyte0[k] = (byte)(0xe0 | j >> 12);
            int j1 = i1 + 1;
            abyte0[i1] = (byte)(0x80 | 0x3f & j >> 6);
            int k1 = j1 + 1;
            abyte0[j1] = (byte)(0x80 | j & 0x3f);
            return k1;
        }
    }

    private void b(int j)
    {
        if (13 + o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int k = o;
        o = k + 1;
        abyte0[k] = 34;
        o = com.fasterxml.jackson.a.c.i.a(j, n, o);
        byte abyte1[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
    }

    private void b(byte abyte0[], int j, int k)
    {
        do
        {
            int i1 = Math.min(q, k);
            c(abyte0, j, i1);
            j += i1;
            k -= i1;
        } while (k > 0);
    }

    private final void b(char ac[], int j, int k)
    {
        do
        {
            int i1 = Math.min(q, k);
            if (i1 + o > p)
            {
                f();
            }
            c(ac, j, i1);
            j += i1;
            k -= i1;
        } while (k > 0);
    }

    private static int c(int j, int k)
    {
        if (k < 56320 || k > 57343)
        {
            b((new StringBuilder("Incomplete surrogate pair: first char 0x")).append(Integer.toHexString(j)).append(", second 0x").append(Integer.toHexString(k)).toString());
        }
        return 0x10000 + (j - 55296 << 10) + (k - 56320);
    }

    private void c(int j)
    {
        j;
        JVM INSTR tableswitch 0 3: default 32
    //                   0 69
    //                   1 36
    //                   2 47
    //                   3 58;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        c();
_L7:
        return;
_L3:
        _cfgPrettyPrinter.f(this);
        return;
_L4:
        _cfgPrettyPrinter.d(this);
        return;
_L5:
        _cfgPrettyPrinter.a(this);
        return;
_L2:
        if (d.inArray())
        {
            _cfgPrettyPrinter.g(this);
            return;
        }
        if (d.inObject())
        {
            _cfgPrettyPrinter.h(this);
            return;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void c(String s1)
    {
        if (!isEnabled(com.fasterxml.jackson.a.i.c))
        {
            e(s1);
            return;
        }
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 34;
        int k = s1.length();
        if (k <= s)
        {
            s1.getChars(0, k, r, 0);
            byte abyte1[];
            int i1;
            if (k <= q)
            {
                if (k + o > p)
                {
                    f();
                }
                c(r, 0, k);
            } else
            {
                b(r, 0, k);
            }
        } else
        {
            e(s1);
        }
        if (o >= p)
        {
            f();
        }
        abyte1 = n;
        i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
    }

    private void c(byte abyte0[], int j, int k)
    {
        int ai[] = h;
        int i1 = j + k;
        int k1;
        for (int j1 = j; j1 < i1; j1 = k1)
        {
            k1 = j1 + 1;
            byte byte0 = abyte0[j1];
            if (byte0 >= 0 && ai[byte0] != 0)
            {
                d(abyte0, j, k);
                return;
            }
        }

        if (k + o > p)
        {
            f();
        }
        System.arraycopy(abyte0, j, n, o, k);
        o = k + o;
    }

    private final void c(char ac[], int j, int k)
    {
        int i1;
label0:
        {
            i1 = k + j;
            int j1 = o;
            byte abyte0[] = n;
            int ai[] = h;
            do
            {
                if (j >= i1)
                {
                    break;
                }
                char c1 = ac[j];
                if (c1 > '\177' || ai[c1] != 0)
                {
                    break;
                }
                int k1 = j1 + 1;
                abyte0[j1] = (byte)c1;
                j++;
                j1 = k1;
            } while (true);
            o = j1;
            if (j < i1)
            {
                if (this.j == null)
                {
                    break label0;
                }
                f(ac, j, i1);
            }
            return;
        }
        if (i == 0)
        {
            d(ac, j, i1);
            return;
        } else
        {
            e(ac, j, i1);
            return;
        }
    }

    private int d(int j, int k)
    {
        byte abyte0[] = n;
        int i1 = k + 1;
        abyte0[k] = 92;
        int j1 = i1 + 1;
        abyte0[i1] = 117;
        int l1;
        int i2;
        int j2;
        if (j > 255)
        {
            int k2 = 0xff & j >> 8;
            int l2 = j1 + 1;
            abyte0[j1] = l[k2 >> 4];
            l1 = l2 + 1;
            abyte0[l2] = l[k2 & 0xf];
            j &= 0xff;
        } else
        {
            int k1 = j1 + 1;
            abyte0[j1] = 48;
            l1 = k1 + 1;
            abyte0[k1] = 48;
        }
        i2 = l1 + 1;
        abyte0[l1] = l[j >> 4];
        j2 = i2 + 1;
        abyte0[i2] = l[j & 0xf];
        return j2;
    }

    private void d(String s1)
    {
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 34;
        e(s1);
        if (o >= p)
        {
            f();
        }
        byte abyte1[] = n;
        int k = o;
        o = k + 1;
        abyte1[k] = 34;
    }

    private void d(byte abyte0[], int j, int k)
    {
        int i1 = o;
        if (i1 + k * 6 > p)
        {
            f();
            i1 = o;
        }
        byte abyte1[] = n;
        int ai[] = h;
        for (int j1 = k + j; j < j1;)
        {
            int k1 = j + 1;
            byte byte0 = abyte0[j];
            if (byte0 < 0 || ai[byte0] == 0)
            {
                int l1 = i1 + 1;
                abyte1[i1] = byte0;
                i1 = l1;
                j = k1;
            } else
            {
                int i2 = ai[byte0];
                if (i2 > 0)
                {
                    int j2 = i1 + 1;
                    abyte1[i1] = 92;
                    i1 = j2 + 1;
                    abyte1[j2] = (byte)i2;
                    j = k1;
                } else
                {
                    i1 = d(byte0, i1);
                    j = k1;
                }
            }
        }

        o = i1;
    }

    private final void d(char ac[], int j, int k)
    {
        if (o + 6 * (k - j) > p)
        {
            f();
        }
        int i1 = o;
        byte abyte0[] = n;
        int ai[] = h;
        while (j < k) 
        {
            int j1 = j + 1;
            char c1 = ac[j];
            if (c1 <= '\177')
            {
                if (ai[c1] == 0)
                {
                    int j2 = i1 + 1;
                    abyte0[i1] = (byte)c1;
                    i1 = j2;
                    j = j1;
                } else
                {
                    int l1 = ai[c1];
                    if (l1 > 0)
                    {
                        int i2 = i1 + 1;
                        abyte0[i1] = 92;
                        i1 = i2 + 1;
                        abyte0[i2] = (byte)l1;
                        j = j1;
                    } else
                    {
                        i1 = d(c1, i1);
                        j = j1;
                    }
                }
            } else
            if (c1 <= '\u07FF')
            {
                int k1 = i1 + 1;
                abyte0[i1] = (byte)(0xc0 | c1 >> 6);
                i1 = k1 + 1;
                abyte0[k1] = (byte)(0x80 | c1 & 0x3f);
                j = j1;
            } else
            {
                i1 = b(c1, i1);
                j = j1;
            }
        }
        o = i1;
    }

    private void e()
    {
        if (4 + o >= p)
        {
            f();
        }
        System.arraycopy(u, 0, n, o, 4);
        o = 4 + o;
    }

    private final void e(String s1)
    {
        int j = s1.length();
        char ac[] = r;
        int k = j;
        int i1 = 0;
        int j1;
        for (; k > 0; k -= j1)
        {
            j1 = Math.min(q, k);
            s1.getChars(i1, i1 + j1, ac, 0);
            if (j1 + o > p)
            {
                f();
            }
            c(ac, 0, j1);
            i1 += j1;
        }

    }

    private final void e(char ac[], int j, int k)
    {
        if (o + 6 * (k - j) > p)
        {
            f();
        }
        int i1 = o;
        byte abyte0[] = n;
        int ai[] = h;
        int j1 = i;
        while (j < k) 
        {
            int k1 = j + 1;
            char c1 = ac[j];
            if (c1 <= '\177')
            {
                if (ai[c1] == 0)
                {
                    int k2 = i1 + 1;
                    abyte0[i1] = (byte)c1;
                    i1 = k2;
                    j = k1;
                } else
                {
                    int i2 = ai[c1];
                    if (i2 > 0)
                    {
                        int j2 = i1 + 1;
                        abyte0[i1] = 92;
                        i1 = j2 + 1;
                        abyte0[j2] = (byte)i2;
                        j = k1;
                    } else
                    {
                        i1 = d(c1, i1);
                        j = k1;
                    }
                }
            } else
            if (c1 > j1)
            {
                i1 = d(c1, i1);
                j = k1;
            } else
            if (c1 <= '\u07FF')
            {
                int l1 = i1 + 1;
                abyte0[i1] = (byte)(0xc0 | c1 >> 6);
                i1 = l1 + 1;
                abyte0[l1] = (byte)(0x80 | c1 & 0x3f);
                j = k1;
            } else
            {
                i1 = b(c1, i1);
                j = k1;
            }
        }
        o = i1;
    }

    private void f()
    {
        int j = o;
        if (j > 0)
        {
            o = 0;
            m.write(n, 0, j);
        }
    }

    private void f(char ac[], int j, int k)
    {
        if (o + 6 * (k - j) > p)
        {
            f();
        }
        int i1 = o;
        byte abyte0[] = n;
        int ai[] = h;
        int j1;
        c c1;
        if (i <= 0)
        {
            j1 = 65535;
        } else
        {
            j1 = i;
        }
        c1 = this.j;
        while (j < k) 
        {
            int k1 = j + 1;
            char c2 = ac[j];
            if (c2 <= '\177')
            {
                if (ai[c2] == 0)
                {
                    int k2 = i1 + 1;
                    abyte0[i1] = (byte)c2;
                    i1 = k2;
                    j = k1;
                } else
                {
                    int i2 = ai[c2];
                    if (i2 > 0)
                    {
                        int j2 = i1 + 1;
                        abyte0[i1] = 92;
                        i1 = j2 + 1;
                        abyte0[j2] = (byte)i2;
                        j = k1;
                    } else
                    if (i2 == -2)
                    {
                        u u2 = c1.b();
                        if (u2 == null)
                        {
                            b((new StringBuilder("Invalid custom escape definitions; custom escape not found for character code 0x")).append(Integer.toHexString(c2)).append(", although was supposed to have one").toString());
                        }
                        i1 = a(abyte0, i1, u2, k - k1);
                        j = k1;
                    } else
                    {
                        i1 = d(c2, i1);
                        j = k1;
                    }
                }
            } else
            if (c2 > j1)
            {
                i1 = d(c2, i1);
                j = k1;
            } else
            {
                u u1 = c1.b();
                if (u1 != null)
                {
                    i1 = a(abyte0, i1, u1, k - k1);
                    j = k1;
                } else
                if (c2 <= '\u07FF')
                {
                    int l1 = i1 + 1;
                    abyte0[i1] = (byte)(0xc0 | c2 >> 6);
                    i1 = l1 + 1;
                    abyte0[l1] = (byte)(0x80 | c2 & 0x3f);
                    j = k1;
                } else
                {
                    i1 = b(c2, i1);
                    j = k1;
                }
            }
        }
        o = i1;
    }

    protected final void a(String s1)
    {
        int j;
        j = d.e();
        if (j == 5)
        {
            b((new StringBuilder("Can not ")).append(s1).append(", expecting field name").toString());
        }
        if (_cfgPrettyPrinter != null) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch 1 3: default 72
    //                   1 73
    //                   2 114
    //                   3 121;
           goto _L3 _L4 _L5 _L6
_L3:
        return;
_L4:
        byte byte0 = 44;
_L7:
        if (o >= p)
        {
            f();
        }
        n[o] = byte0;
        o = 1 + o;
        return;
_L5:
        byte0 = 58;
          goto _L7
_L6:
        if (k == null) goto _L3; else goto _L8
_L8:
        byte abyte0[] = k.c();
        if (abyte0.length <= 0) goto _L3; else goto _L9
_L9:
        a(abyte0);
        return;
_L2:
        c(j);
        return;
    }

    protected final void b()
    {
        byte abyte0[] = n;
        if (abyte0 != null && t)
        {
            n = null;
            g.b(abyte0);
        }
        char ac[] = r;
        if (ac != null)
        {
            r = null;
            g.b(ac);
        }
    }

    public final void close()
    {
        super.close();
        if (n != null && isEnabled(com.fasterxml.jackson.a.i.b))
        {
            do
            {
                e e1 = a();
                if (e1.inArray())
                {
                    writeEndArray();
                    continue;
                }
                if (!e1.inObject())
                {
                    break;
                }
                writeEndObject();
            } while (true);
        }
        f();
        if (m == null) goto _L2; else goto _L1
_L1:
        if (!g.c() && !isEnabled(com.fasterxml.jackson.a.i.a)) goto _L4; else goto _L3
_L3:
        m.close();
_L2:
        b();
        return;
_L4:
        if (isEnabled(com.fasterxml.jackson.a.i.f))
        {
            m.flush();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final void flush()
    {
        f();
        if (m != null && isEnabled(com.fasterxml.jackson.a.i.f))
        {
            m.flush();
        }
    }

    public final Object getOutputTarget()
    {
        return m;
    }

    public final int writeBinary(a a1, InputStream inputstream, int j)
    {
        byte abyte1[];
        a("write binary value");
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int k = o;
        o = k + 1;
        abyte0[k] = 34;
        abyte1 = g.g();
        if (j >= 0) goto _L2; else goto _L1
_L1:
        int k1 = a(a1, inputstream, abyte1);
        j = k1;
_L4:
        g.c(abyte1);
        if (o >= p)
        {
            f();
        }
        byte abyte2[] = n;
        int j1 = o;
        o = j1 + 1;
        abyte2[j1] = 34;
        return j;
_L2:
        int i1 = a(a1, inputstream, abyte1, j);
        if (i1 <= 0) goto _L4; else goto _L3
_L3:
        b((new StringBuilder("Too few bytes available: missing ")).append(i1).append(" bytes (out of ").append(j).append(")").toString());
          goto _L4
        Exception exception;
        exception;
        g.c(abyte1);
        throw exception;
    }

    public final void writeBinary(a a1, byte abyte0[], int j, int k)
    {
        a("write binary value");
        if (o >= p)
        {
            f();
        }
        byte abyte1[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
        a(a1, abyte0, j, j + k);
        if (o >= p)
        {
            f();
        }
        byte abyte2[] = n;
        int j1 = o;
        o = j1 + 1;
        abyte2[j1] = 34;
    }

    public final void writeBoolean(boolean flag)
    {
        a("write boolean value");
        if (5 + o >= p)
        {
            f();
        }
        byte abyte0[];
        int j;
        if (flag)
        {
            abyte0 = v;
        } else
        {
            abyte0 = w;
        }
        j = abyte0.length;
        System.arraycopy(abyte0, 0, n, o, j);
        o = j + o;
    }

    public final void writeEndArray()
    {
        if (!d.inArray())
        {
            b((new StringBuilder("Current context not an ARRAY but ")).append(d.getTypeDesc()).toString());
        }
        if (_cfgPrettyPrinter != null)
        {
            _cfgPrettyPrinter.b(this, d.getEntryCount());
        } else
        {
            if (o >= p)
            {
                f();
            }
            byte abyte0[] = n;
            int j = o;
            o = j + 1;
            abyte0[j] = 93;
        }
        d = d.d();
    }

    public final void writeEndObject()
    {
        if (!d.inObject())
        {
            b((new StringBuilder("Current context not an object but ")).append(d.getTypeDesc()).toString());
        }
        if (_cfgPrettyPrinter != null)
        {
            _cfgPrettyPrinter.a(this, d.getEntryCount());
        } else
        {
            if (o >= p)
            {
                f();
            }
            byte abyte0[] = n;
            int j = o;
            o = j + 1;
            abyte0[j] = 125;
        }
        d = d.d();
    }

    public final void writeFieldName(u u1)
    {
        boolean flag = true;
        int j = d.a(u1.a());
        if (j == 4)
        {
            b("Can not write a field name, expecting a value");
        }
        if (_cfgPrettyPrinter != null)
        {
            if (j != flag)
            {
                flag = false;
            }
            a(u1, flag);
            return;
        }
        if (j == flag)
        {
            if (o >= p)
            {
                f();
            }
            byte abyte0[] = n;
            int k = o;
            o = k + 1;
            abyte0[k] = 44;
        }
        a(u1);
    }

    public final void writeFieldName(String s1)
    {
        boolean flag = true;
        int j = d.a(s1);
        if (j == 4)
        {
            b("Can not write a field name, expecting a value");
        }
        if (_cfgPrettyPrinter != null)
        {
            if (j != flag)
            {
                flag = false;
            }
            a(s1, flag);
            return;
        }
        if (j == flag)
        {
            if (o >= p)
            {
                f();
            }
            byte abyte0[] = n;
            int k = o;
            o = k + 1;
            abyte0[k] = 44;
        }
        c(s1);
    }

    public final void writeNull()
    {
        a("write null value");
        e();
    }

    public final void writeNumber(double d1)
    {
        if (c || (Double.isNaN(d1) || Double.isInfinite(d1)) && isEnabled(com.fasterxml.jackson.a.i.d))
        {
            writeString(String.valueOf(d1));
            return;
        } else
        {
            a("write number");
            writeRaw(String.valueOf(d1));
            return;
        }
    }

    public final void writeNumber(float f1)
    {
        if (c || (Float.isNaN(f1) || Float.isInfinite(f1)) && isEnabled(com.fasterxml.jackson.a.i.d))
        {
            writeString(String.valueOf(f1));
            return;
        } else
        {
            a("write number");
            writeRaw(String.valueOf(f1));
            return;
        }
    }

    public final void writeNumber(int j)
    {
        a("write number");
        if (11 + o >= p)
        {
            f();
        }
        if (c)
        {
            b(j);
            return;
        } else
        {
            o = com.fasterxml.jackson.a.c.i.a(j, n, o);
            return;
        }
    }

    public final void writeNumber(long l1)
    {
        a("write number");
        if (c)
        {
            a(l1);
            return;
        }
        if (21 + o >= p)
        {
            f();
        }
        o = com.fasterxml.jackson.a.c.i.a(l1, n, o);
    }

    public final void writeNumber(String s1)
    {
        a("write number");
        if (c)
        {
            a(s1);
            return;
        } else
        {
            writeRaw(s1);
            return;
        }
    }

    public final void writeNumber(BigDecimal bigdecimal)
    {
        a("write number");
        if (bigdecimal == null)
        {
            e();
            return;
        }
        if (c)
        {
            a(bigdecimal);
            return;
        } else
        {
            writeRaw(bigdecimal.toString());
            return;
        }
    }

    public final void writeNumber(BigInteger biginteger)
    {
        a("write number");
        if (biginteger == null)
        {
            e();
            return;
        }
        if (c)
        {
            a(biginteger);
            return;
        } else
        {
            writeRaw(biginteger.toString());
            return;
        }
    }

    public final void writeNumber(short word0)
    {
        a("write number");
        if (6 + o >= p)
        {
            f();
        }
        if (c)
        {
            a(word0);
            return;
        } else
        {
            o = com.fasterxml.jackson.a.c.i.a(word0, n, o);
            return;
        }
    }

    public final void writeRaw(char c1)
    {
        if (3 + o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        if (c1 <= '\177')
        {
            int i1 = o;
            o = i1 + 1;
            abyte0[i1] = (byte)c1;
            return;
        }
        if (c1 < '\u0800')
        {
            int j = o;
            o = j + 1;
            abyte0[j] = (byte)(0xc0 | c1 >> 6);
            int k = o;
            o = k + 1;
            abyte0[k] = (byte)(0x80 | c1 & 0x3f);
            return;
        } else
        {
            a(c1, ((char []) (null)), 0, 0);
            return;
        }
    }

    public final void writeRaw(u u1)
    {
        byte abyte0[] = u1.c();
        if (abyte0.length > 0)
        {
            a(abyte0);
        }
    }

    public final void writeRaw(String s1)
    {
        int j = s1.length();
        int k = 0;
        int i1;
        for (; j > 0; j -= i1)
        {
            char ac[] = r;
            i1 = ac.length;
            if (j < i1)
            {
                i1 = j;
            }
            s1.getChars(k, k + i1, ac, 0);
            writeRaw(ac, 0, i1);
            k += i1;
        }

    }

    public final void writeRaw(String s1, int j, int k)
    {
        int i1;
        for (; k > 0; k -= i1)
        {
            char ac[] = r;
            i1 = ac.length;
            if (k < i1)
            {
                i1 = k;
            }
            s1.getChars(j, j + i1, ac, 0);
            writeRaw(ac, 0, i1);
            j += i1;
        }

    }

    public final void writeRaw(char ac[], int j, int k)
    {
        int i1 = k + (k + k);
        if (i1 + o <= p) goto _L2; else goto _L1
_L1:
        if (p >= i1) goto _L4; else goto _L3
_L3:
        a(ac, j, k);
_L6:
        return;
_L4:
        f();
_L2:
        int j1 = k + j;
_L9:
        if (j >= j1) goto _L6; else goto _L5
_L5:
        char c1 = ac[j];
        if (c1 > '\177') goto _L8; else goto _L7
_L7:
        byte abyte2[] = n;
        int j2 = o;
        o = j2 + 1;
        abyte2[j2] = (byte)c1;
        if (++j >= j1) goto _L6; else goto _L5
_L8:
        int k1 = j + 1;
        char c2 = ac[j];
        if (c2 < '\u0800')
        {
            byte abyte0[] = n;
            int l1 = o;
            o = l1 + 1;
            abyte0[l1] = (byte)(0xc0 | c2 >> 6);
            byte abyte1[] = n;
            int i2 = o;
            o = i2 + 1;
            abyte1[i2] = (byte)(0x80 | c2 & 0x3f);
            j = k1;
        } else
        {
            a(c2, ac, k1, j1);
            j = k1;
        }
          goto _L9
    }

    public final void writeRawUTF8String(byte abyte0[], int j, int k)
    {
        a("write text value");
        if (o >= p)
        {
            f();
        }
        byte abyte1[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
        a(abyte0, j, k);
        if (o >= p)
        {
            f();
        }
        byte abyte2[] = n;
        int j1 = o;
        o = j1 + 1;
        abyte2[j1] = 34;
    }

    public final void writeStartArray()
    {
        a("start an array");
        d = d.b();
        if (_cfgPrettyPrinter != null)
        {
            _cfgPrettyPrinter.e(this);
            return;
        }
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 91;
    }

    public final void writeStartObject()
    {
        a("start an object");
        d = d.c();
        if (_cfgPrettyPrinter != null)
        {
            _cfgPrettyPrinter.b(this);
            return;
        }
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 123;
    }

    public final void writeString(u u1)
    {
        a("write text value");
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int j = o;
        o = j + 1;
        abyte0[j] = 34;
        int k = u1.a(n, o);
        byte abyte1[];
        int i1;
        if (k < 0)
        {
            a(u1.d());
        } else
        {
            o = k + o;
        }
        if (o >= p)
        {
            f();
        }
        abyte1 = n;
        i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
    }

    public final void writeString(String s1)
    {
        a("write text value");
        if (s1 == null)
        {
            e();
            return;
        }
        int j = s1.length();
        if (j > s)
        {
            d(s1);
            return;
        }
        s1.getChars(0, j, r, 0);
        if (j > q)
        {
            char[] _tmp = r;
            a(j);
            return;
        }
        if (j + o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int k = o;
        o = k + 1;
        abyte0[k] = 34;
        c(r, 0, j);
        if (o >= p)
        {
            f();
        }
        byte abyte1[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
    }

    public final void writeString(char ac[], int j, int k)
    {
        a("write text value");
        if (o >= p)
        {
            f();
        }
        byte abyte0[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte0[i1] = 34;
        byte abyte1[];
        int j1;
        if (k <= q)
        {
            if (k + o > p)
            {
                f();
            }
            c(ac, j, k);
        } else
        {
            b(ac, j, k);
        }
        if (o >= p)
        {
            f();
        }
        abyte1 = n;
        j1 = o;
        o = j1 + 1;
        abyte1[j1] = 34;
    }

    public final void writeUTF8String(byte abyte0[], int j, int k)
    {
        a("write text value");
        if (o >= p)
        {
            f();
        }
        byte abyte1[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte1[i1] = 34;
        byte abyte2[];
        int j1;
        if (k <= q)
        {
            c(abyte0, j, k);
        } else
        {
            b(abyte0, j, k);
        }
        if (o >= p)
        {
            f();
        }
        abyte2 = n;
        j1 = o;
        o = j1 + 1;
        abyte2[j1] = 34;
    }

}
