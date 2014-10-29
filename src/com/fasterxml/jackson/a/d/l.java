// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.d;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.c.b;
import com.fasterxml.jackson.a.c.c;
import com.fasterxml.jackson.a.c.d;
import com.fasterxml.jackson.a.c.i;
import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.t;
import com.fasterxml.jackson.a.u;
import java.io.InputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.a.d:
//            c, e

public final class l extends com.fasterxml.jackson.a.d.c
{

    protected static final char l[] = com.fasterxml.jackson.a.c.b.g();
    protected final Writer m;
    protected char n[];
    protected int o;
    protected int p;
    protected int q;
    protected char r[];
    protected u s;

    public l(d d1, int j, s s1, Writer writer)
    {
        super(d1, j, s1);
        o = 0;
        p = 0;
        m = writer;
        n = d1.i();
        q = n.length;
    }

    private int a(a a1, InputStream inputstream, byte abyte0[])
    {
        int j = -3;
        int k = -6 + q;
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
            if (p > k)
            {
                g();
            }
            int i2 = l1 + 1;
            int j2 = abyte0[l1] << 8;
            int k2 = i2 + 1;
            int l2 = (j2 | 0xff & abyte0[i2]) << 8;
            int i3 = k2 + 1;
            int j3 = l2 | 0xff & abyte0[k2];
            j1 += 3;
            p = a1.a(j3, n, p);
            int k3 = i1 - 1;
            if (k3 <= 0)
            {
                char ac[] = n;
                int l3 = p;
                p = l3 + 1;
                ac[l3] = '\\';
                char ac1[] = n;
                int i4 = p;
                p = i4 + 1;
                ac1[i4] = 'n';
                k3 = a1.c() >> 2;
            }
            i1 = k3;
            l1 = i3;
        } while (true);
        if (k1 > 0)
        {
            if (p > k)
            {
                g();
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
            p = a1.a(j4, byte0, n, p);
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
        int j1 = -6 + q;
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
            if (p > j1)
            {
                g();
            }
            int l2 = l1 + 1;
            int i3 = abyte0[l1] << 8;
            int j3 = l2 + 1;
            int k3 = (i3 | 0xff & abyte0[l2]) << 8;
            int l3 = j3 + 1;
            int i4 = k3 | 0xff & abyte0[j3];
            i2 -= 3;
            p = a1.a(i4, n, p);
            int j4 = k1 - 1;
            if (j4 <= 0)
            {
                char ac[] = n;
                int k4 = p;
                p = k4 + 1;
                ac[k4] = '\\';
                char ac1[] = n;
                int l4 = p;
                p = l4 + 1;
                ac1[l4] = 'n';
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
                if (p > j1)
                {
                    g();
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
                p = a1.a(k2, byte0, n, p);
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

    private int a(char ac[], int j, int k, char c1, int i1)
    {
        if (i1 >= 0)
        {
            if (j > 1 && j < k)
            {
                int j4 = j - 2;
                ac[j4] = '\\';
                ac[j4 + 1] = (char)i1;
                return j4;
            }
            char ac2[] = r;
            if (ac2 == null)
            {
                ac2 = f();
            }
            ac2[1] = (char)i1;
            m.write(ac2, 0, 2);
            return j;
        }
        if (i1 != -2)
        {
            if (j > 5 && j < k)
            {
                int j2 = j - 6;
                int k2 = j2 + 1;
                ac[j2] = '\\';
                int l2 = k2 + 1;
                ac[k2] = 'u';
                int j3;
                int k3;
                if (c1 > '\377')
                {
                    int l3 = 0xff & c1 >> 8;
                    int i4 = l2 + 1;
                    ac[l2] = l[l3 >> 4];
                    j3 = i4 + 1;
                    ac[i4] = l[l3 & 0xf];
                    c1 &= '\377';
                } else
                {
                    int i3 = l2 + 1;
                    ac[l2] = '0';
                    j3 = i3 + 1;
                    ac[i3] = '0';
                }
                k3 = j3 + 1;
                ac[j3] = l[c1 >> 4];
                ac[k3] = l[c1 & 0xf];
                return k3 - 5;
            }
            char ac1[] = r;
            if (ac1 == null)
            {
                ac1 = f();
            }
            o = p;
            if (c1 > '\377')
            {
                int l1 = 0xff & c1 >> 8;
                int i2 = c1 & 0xff;
                ac1[10] = l[l1 >> 4];
                ac1[11] = l[l1 & 0xf];
                ac1[12] = l[i2 >> 4];
                ac1[13] = l[i2 & 0xf];
                m.write(ac1, 8, 6);
                return j;
            } else
            {
                ac1[6] = l[c1 >> 4];
                ac1[7] = l[c1 & 0xf];
                m.write(ac1, 2, 6);
                return j;
            }
        }
        String s1;
        int j1;
        if (s == null)
        {
            s1 = this.j.b().a();
        } else
        {
            s1 = s.a();
            s = null;
        }
        j1 = s1.length();
        if (j >= j1 && j < k)
        {
            int k1 = j - j1;
            s1.getChars(0, j1, ac, k1);
            return k1;
        } else
        {
            m.write(s1);
            return j;
        }
    }

    private void a(char c1, int j)
    {
        if (j >= 0)
        {
            if (p >= 2)
            {
                int k3 = -2 + p;
                o = k3;
                char ac3[] = n;
                int l3 = k3 + 1;
                ac3[k3] = '\\';
                n[l3] = (char)j;
                return;
            }
            char ac2[] = r;
            if (ac2 == null)
            {
                ac2 = f();
            }
            o = p;
            ac2[1] = (char)j;
            m.write(ac2, 0, 2);
            return;
        }
        if (j != -2)
        {
            if (p >= 6)
            {
                char ac1[] = n;
                int l1 = -6 + p;
                o = l1;
                ac1[l1] = '\\';
                int i2 = l1 + 1;
                ac1[i2] = 'u';
                int k2;
                int l2;
                if (c1 > '\377')
                {
                    int i3 = 0xff & c1 >> 8;
                    int j3 = i2 + 1;
                    ac1[j3] = l[i3 >> 4];
                    k2 = j3 + 1;
                    ac1[k2] = l[i3 & 0xf];
                    c1 &= '\377';
                } else
                {
                    int j2 = i2 + 1;
                    ac1[j2] = '0';
                    k2 = j2 + 1;
                    ac1[k2] = '0';
                }
                l2 = k2 + 1;
                ac1[l2] = l[c1 >> 4];
                ac1[l2 + 1] = l[c1 & 0xf];
                return;
            }
            char ac[] = r;
            if (ac == null)
            {
                ac = f();
            }
            o = p;
            if (c1 > '\377')
            {
                int j1 = 0xff & c1 >> 8;
                int k1 = c1 & 0xff;
                ac[10] = l[j1 >> 4];
                ac[11] = l[j1 & 0xf];
                ac[12] = l[k1 >> 4];
                ac[13] = l[k1 & 0xf];
                m.write(ac, 8, 6);
                return;
            } else
            {
                ac[6] = l[c1 >> 4];
                ac[7] = l[c1 & 0xf];
                m.write(ac, 2, 6);
                return;
            }
        }
        String s1;
        int k;
        if (s == null)
        {
            s1 = this.j.b().a();
        } else
        {
            s1 = s.a();
            s = null;
        }
        k = s1.length();
        if (p >= k)
        {
            int i1 = p - k;
            o = i1;
            s1.getChars(0, k, n, i1);
            return;
        } else
        {
            o = p;
            m.write(s1);
            return;
        }
    }

    private void a(int j)
    {
        if (13 + p >= q)
        {
            g();
        }
        char ac[] = n;
        int k = p;
        p = k + 1;
        ac[k] = '"';
        p = i.a(j, n, p);
        char ac1[] = n;
        int i1 = p;
        p = i1 + 1;
        ac1[i1] = '"';
    }

    private void a(int j, int k)
    {
        int i1;
        int ai[];
        int j1;
        i1 = j + p;
        ai = h;
        j1 = Math.min(ai.length, k + 1);
_L8:
        if (p >= i1) goto _L2; else goto _L1
_L1:
        char c1 = n[p];
        if (c1 >= j1) goto _L4; else goto _L3
_L3:
        int l1 = ai[c1];
        if (l1 == 0) goto _L6; else goto _L5
_L5:
        int i2 = p - o;
        if (i2 > 0)
        {
            m.write(n, o, i2);
        }
        p = 1 + p;
        a(c1, l1);
        continue; /* Loop/switch isn't completed */
_L4:
        if (c1 <= k)
        {
            break; /* Loop/switch isn't completed */
        }
        l1 = -1;
        if (true) goto _L5; else goto _L6
_L6:
        int k1;
        k1 = 1 + p;
        p = k1;
        if (k1 < i1) goto _L1; else goto _L2
_L2:
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void a(long l1)
    {
        if (23 + p >= q)
        {
            g();
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = '"';
        p = i.a(l1, n, p);
        char ac1[] = n;
        int k = p;
        p = k + 1;
        ac1[k] = '"';
    }

    private void a(a a1, byte abyte0[], int j, int k)
    {
        int i1 = k - 3;
        int j1 = -6 + q;
        int k1 = a1.c() >> 2;
        do
        {
            if (j > i1)
            {
                break;
            }
            if (p > j1)
            {
                g();
            }
            int k2 = j + 1;
            int l2 = abyte0[j] << 8;
            int i3 = k2 + 1;
            int j3 = (l2 | 0xff & abyte0[k2]) << 8;
            j = i3 + 1;
            p = a1.a(j3 | 0xff & abyte0[i3], n, p);
            if (--k1 <= 0)
            {
                char ac[] = n;
                int k3 = p;
                p = k3 + 1;
                ac[k3] = '\\';
                char ac1[] = n;
                int l3 = p;
                p = l3 + 1;
                ac1[l3] = 'n';
                k1 = a1.c() >> 2;
            }
        } while (true);
        int l1 = k - j;
        if (l1 > 0)
        {
            if (p > j1)
            {
                g();
            }
            int i2 = j + 1;
            int j2 = abyte0[j] << 16;
            if (l1 == 2)
            {
                j2 |= (0xff & abyte0[i2]) << 8;
            }
            p = a1.a(j2, l1, n, p);
        }
    }

    private void a(u u1, boolean flag)
    {
        if (_cfgPrettyPrinter != null)
        {
            b(u1, flag);
            return;
        }
        if (1 + p >= q)
        {
            g();
        }
        if (flag)
        {
            char ac4[] = n;
            int k1 = p;
            p = k1 + 1;
            ac4[k1] = ',';
        }
        char ac[] = u1.b();
        if (!isEnabled(com.fasterxml.jackson.a.i.c))
        {
            writeRaw(ac, 0, ac.length);
            return;
        }
        char ac1[] = n;
        int j = p;
        p = j + 1;
        ac1[j] = '"';
        int k = ac.length;
        if (1 + (k + p) >= q)
        {
            writeRaw(ac, 0, k);
            if (p >= q)
            {
                g();
            }
            char ac3[] = n;
            int j1 = p;
            p = j1 + 1;
            ac3[j1] = '"';
            return;
        } else
        {
            System.arraycopy(ac, 0, n, p, k);
            p = k + p;
            char ac2[] = n;
            int i1 = p;
            p = i1 + 1;
            ac2[i1] = '"';
            return;
        }
    }

    private void a(Object obj)
    {
        if (p >= q)
        {
            g();
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = '"';
        writeRaw(obj.toString());
        if (p >= q)
        {
            g();
        }
        char ac1[] = n;
        int k = p;
        p = k + 1;
        ac1[k] = '"';
    }

    private void a(String s1, boolean flag)
    {
        if (_cfgPrettyPrinter != null)
        {
            b(s1, flag);
            return;
        }
        if (1 + p >= q)
        {
            g();
        }
        if (flag)
        {
            char ac2[] = n;
            int i1 = p;
            p = i1 + 1;
            ac2[i1] = ',';
        }
        if (!isEnabled(com.fasterxml.jackson.a.i.c))
        {
            d(s1);
            return;
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = '"';
        d(s1);
        if (p >= q)
        {
            g();
        }
        char ac1[] = n;
        int k = p;
        p = k + 1;
        ac1[k] = '"';
    }

    private void a(short word0)
    {
        if (8 + p >= q)
        {
            g();
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = '"';
        p = i.a(word0, n, p);
        char ac1[] = n;
        int k = p;
        p = k + 1;
        ac1[k] = '"';
    }

    private void a(char ac[], int j, int k)
    {
        if (this.j == null) goto _L2; else goto _L1
_L1:
        b(ac, j, k);
_L4:
        return;
_L2:
        int i1;
        int ai[];
        int j1;
        int k1;
        if (i != 0)
        {
            a(ac, j, k, i);
            return;
        }
        i1 = k + j;
        ai = h;
        j1 = ai.length;
        k1 = j;
_L6:
        if (k1 >= i1) goto _L4; else goto _L3
_L3:
        int l1 = k1;
        char c1;
        do
        {
            c1 = ac[l1];
        } while ((c1 >= j1 || ai[c1] == 0) && ++l1 < i1);
        int i2 = l1 - k1;
        char c2;
        if (i2 < 32)
        {
            if (i2 + p > q)
            {
                g();
            }
            if (i2 > 0)
            {
                System.arraycopy(ac, k1, n, p, i2);
                p = i2 + p;
            }
        } else
        {
            g();
            m.write(ac, k1, i2);
        }
        if (l1 >= i1) goto _L4; else goto _L5
_L5:
        k1 = l1 + 1;
        c2 = ac[l1];
        b(c2, ai[c2]);
          goto _L6
    }

    private void a(char ac[], int j, int k, int i1)
    {
        int j1;
        int ai[];
        int k1;
        int l1;
        int i2;
        j1 = k + j;
        ai = h;
        k1 = Math.min(ai.length, i1 + 1);
        l1 = 0;
        i2 = j;
_L10:
        if (i2 >= j1) goto _L2; else goto _L1
_L1:
        int j2 = i2;
_L8:
        char c1 = ac[j2];
        if (c1 >= k1) goto _L4; else goto _L3
_L3:
        l1 = ai[c1];
        if (l1 == 0) goto _L6; else goto _L5
_L5:
        int k2 = j2 - i2;
        if (k2 < 32)
        {
            if (k2 + p > q)
            {
                g();
            }
            if (k2 > 0)
            {
                System.arraycopy(ac, i2, n, p, k2);
                p = k2 + p;
            }
        } else
        {
            g();
            m.write(ac, i2, k2);
        }
        if (j2 < j1)
        {
            i2 = j2 + 1;
            b(c1, l1);
            continue; /* Loop/switch isn't completed */
        }
          goto _L2
_L4:
        if (c1 <= i1) goto _L6; else goto _L7
_L7:
        l1 = -1;
          goto _L5
_L6:
        if (++j2 < j1) goto _L8; else goto _L5
_L2:
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private void b(char c1, int j)
    {
        if (j >= 0)
        {
            if (2 + p > q)
            {
                g();
            }
            char ac1[] = n;
            int i3 = p;
            p = i3 + 1;
            ac1[i3] = '\\';
            char ac2[] = n;
            int j3 = p;
            p = j3 + 1;
            ac2[j3] = (char)j;
            return;
        }
        if (j != -2)
        {
            if (2 + p > q)
            {
                g();
            }
            int i1 = p;
            char ac[] = n;
            int j1 = i1 + 1;
            ac[i1] = '\\';
            int k1 = j1 + 1;
            ac[j1] = 'u';
            int i2;
            int j2;
            if (c1 > '\377')
            {
                int k2 = 0xff & c1 >> 8;
                int l2 = k1 + 1;
                ac[k1] = l[k2 >> 4];
                i2 = l2 + 1;
                ac[l2] = l[k2 & 0xf];
                c1 &= '\377';
            } else
            {
                int l1 = k1 + 1;
                ac[k1] = '0';
                i2 = l1 + 1;
                ac[l1] = '0';
            }
            j2 = i2 + 1;
            ac[i2] = l[c1 >> 4];
            ac[j2] = l[c1 & 0xf];
            p = j2;
            return;
        }
        String s1;
        int k;
        if (s == null)
        {
            s1 = this.j.b().a();
        } else
        {
            s1 = s.a();
            s = null;
        }
        k = s1.length();
        if (k + p > q)
        {
            g();
            if (k > q)
            {
                m.write(s1);
                return;
            }
        }
        s1.getChars(0, k, n, p);
        p = k + p;
    }

    private void b(int j)
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

    private void b(int j, int k)
    {
        int i1;
        int ai[];
        int j1;
        int k1;
        int l1;
        i1 = 0;
        ai = h;
        j1 = Math.min(ai.length, k + 1);
        k1 = 0;
        l1 = 0;
_L9:
        if (l1 >= j)
        {
            break MISSING_BLOCK_LABEL_159;
        }
_L6:
        char c1 = n[l1];
        if (c1 >= j1) goto _L2; else goto _L1
_L1:
        int i2 = ai[c1];
        if (i2 == 0) goto _L4; else goto _L3
_L3:
        int j2 = l1 - k1;
        if (j2 > 0)
        {
            m.write(n, k1, j2);
            if (l1 >= j)
            {
                break MISSING_BLOCK_LABEL_159;
            }
        }
        int k2 = l1 + 1;
        int l2 = a(n, k2, j, c1, i2);
        l1 = k2;
        k1 = l2;
        i1 = i2;
        continue; /* Loop/switch isn't completed */
_L2:
        if (c1 <= k)
        {
            continue; /* Loop/switch isn't completed */
        }
        i2 = -1;
          goto _L3
_L4:
        i1 = i2;
        if (++l1 < j) goto _L6; else goto _L5
_L5:
        i2 = i1;
          goto _L3
        if (true) goto _L6; else goto _L7
_L7:
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void b(u u1, boolean flag)
    {
        char ac[];
        if (flag)
        {
            _cfgPrettyPrinter.c(this);
        } else
        {
            _cfgPrettyPrinter.h(this);
        }
        ac = u1.b();
        if (isEnabled(com.fasterxml.jackson.a.i.c))
        {
            if (p >= q)
            {
                g();
            }
            char ac1[] = n;
            int j = p;
            p = j + 1;
            ac1[j] = '"';
            writeRaw(ac, 0, ac.length);
            if (p >= q)
            {
                g();
            }
            char ac2[] = n;
            int k = p;
            p = k + 1;
            ac2[k] = '"';
            return;
        } else
        {
            writeRaw(ac, 0, ac.length);
            return;
        }
    }

    private void b(String s1, boolean flag)
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
            if (p >= q)
            {
                g();
            }
            char ac[] = n;
            int j = p;
            p = j + 1;
            ac[j] = '"';
            d(s1);
            if (p >= q)
            {
                g();
            }
            char ac1[] = n;
            int k = p;
            p = k + 1;
            ac1[k] = '"';
            return;
        } else
        {
            d(s1);
            return;
        }
    }

    private void b(char ac[], int j, int k)
    {
        int i1;
        int j1;
        c c1;
        int l1;
        int i2;
        int j2;
        char c2;
        i1 = k + j;
        int ai[] = h;
        int k1;
        if (i <= 0)
        {
            j1 = 65535;
        } else
        {
            j1 = i;
        }
        k1 = Math.min(ai.length, j1 + 1);
        c1 = this.j;
        l1 = 0;
        i2 = j;
_L10:
        if (i2 >= i1) goto _L2; else goto _L1
_L1:
        j2 = i2;
_L8:
        c2 = ac[j2];
        if (c2 >= k1) goto _L4; else goto _L3
_L3:
        l1 = ai[c2];
        if (l1 == 0) goto _L6; else goto _L5
_L5:
        int k2 = j2 - i2;
        u u1;
        if (k2 < 32)
        {
            if (k2 + p > q)
            {
                g();
            }
            if (k2 > 0)
            {
                System.arraycopy(ac, i2, n, p, k2);
                p = k2 + p;
            }
        } else
        {
            g();
            m.write(ac, i2, k2);
        }
        if (j2 < i1)
        {
            i2 = j2 + 1;
            b(c2, l1);
            continue; /* Loop/switch isn't completed */
        }
          goto _L2
_L4:
label0:
        {
            if (c2 <= j1)
            {
                break label0;
            }
            l1 = -1;
        }
          goto _L5
        u1 = c1.b();
        s = u1;
        if (u1 == null) goto _L6; else goto _L7
_L7:
        l1 = -2;
          goto _L5
_L6:
        if (++j2 < i1) goto _L8; else goto _L5
_L2:
        return;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private void c(int j)
    {
        int k = j + p;
        int ai[] = h;
        int i1 = ai.length;
        do
        {
label0:
            {
                int j1;
                if (p < k)
                {
                    do
                    {
                        char c1 = n[p];
                        if (c1 < i1 && ai[c1] != 0)
                        {
                            break label0;
                        }
                        j1 = 1 + p;
                        p = j1;
                    } while (j1 < k);
                }
                return;
            }
            int k1 = p - o;
            if (k1 > 0)
            {
                m.write(n, o, k1);
            }
            char ac[] = n;
            int l1 = p;
            p = l1 + 1;
            char c2 = ac[l1];
            a(c2, ai[c2]);
        } while (true);
    }

    private void c(String s1)
    {
        int j = q - p;
        s1.getChars(0, j, n, p);
        p = j + p;
        g();
        int k;
        int i1;
        for (k = s1.length() - j; k > q; k -= i1)
        {
            i1 = q;
            s1.getChars(j, j + i1, n, 0);
            o = 0;
            p = i1;
            g();
            j += i1;
        }

        s1.getChars(j, j + k, n, 0);
        o = 0;
        p = k;
    }

    private void d(int j)
    {
        int k = 0;
        int ai[] = h;
        int i1 = ai.length;
        int j1 = 0;
        int l1;
        for (; k < j; k = l1)
        {
            char c1;
            do
            {
                c1 = n[k];
            } while ((c1 >= i1 || ai[c1] == 0) && ++k < j);
            int k1 = k - j1;
            if (k1 > 0)
            {
                m.write(n, j1, k1);
                if (k >= j)
                {
                    break;
                }
            }
            l1 = k + 1;
            j1 = a(n, l1, j, c1, ai[c1]);
        }

    }

    private void d(String s1)
    {
        int j = s1.length();
        if (j > q)
        {
            e(s1);
            return;
        }
        if (j + p > q)
        {
            g();
        }
        s1.getChars(0, j, n, p);
        if (this.j != null)
        {
            e(j);
            return;
        }
        if (i != 0)
        {
            a(j, i);
            return;
        } else
        {
            c(j);
            return;
        }
    }

    private void e()
    {
        if (4 + p >= q)
        {
            g();
        }
        int j = p;
        char ac[] = n;
        ac[j] = 'n';
        int k = j + 1;
        ac[k] = 'u';
        int i1 = k + 1;
        ac[i1] = 'l';
        int j1 = i1 + 1;
        ac[j1] = 'l';
        p = j1 + 1;
    }

    private void e(int j)
    {
        int k;
        int i1;
        c c1;
        char c2;
        int l1;
        k = j + p;
        int ai[] = h;
        int j1;
        int i2;
        if (i <= 0)
        {
            i1 = 65535;
        } else
        {
            i1 = i;
        }
        j1 = Math.min(ai.length, i1 + 1);
        c1 = this.j;
_L8:
        if (p >= k) goto _L2; else goto _L1
_L1:
        c2 = n[p];
        if (c2 >= j1) goto _L4; else goto _L3
_L3:
        l1 = ai[c2];
        if (l1 == 0) goto _L6; else goto _L5
_L5:
        i2 = p - o;
        if (i2 > 0)
        {
            m.write(n, o, i2);
        }
        p = 1 + p;
        a(c2, l1);
        continue; /* Loop/switch isn't completed */
_L4:
        if (c2 > i1)
        {
            l1 = -1;
            continue; /* Loop/switch isn't completed */
        }
        u u1 = c1.b();
        s = u1;
        if (u1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        l1 = -2;
        if (true) goto _L5; else goto _L6
_L6:
        int k1;
        k1 = 1 + p;
        p = k1;
        if (k1 < k) goto _L1; else goto _L2
_L2:
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void e(String s1)
    {
        g();
        int j = s1.length();
        int k = 0;
        do
        {
            int i1 = q;
            if (k + i1 > j)
            {
                i1 = j - k;
            }
            s1.getChars(k, k + i1, n, 0);
            if (this.j != null)
            {
                f(i1);
            } else
            if (i != 0)
            {
                b(i1, i);
            } else
            {
                d(i1);
            }
            k += i1;
        } while (k < j);
    }

    private void f(int j)
    {
        int k;
        int i1;
        c c1;
        int l1;
        char c2;
        int i2;
        k = 0;
        int ai[] = h;
        int j1;
        int k1;
        int j2;
        int k2;
        int l2;
        if (i <= 0)
        {
            i1 = 65535;
        } else
        {
            i1 = i;
        }
        j1 = Math.min(ai.length, i1 + 1);
        c1 = this.j;
        k1 = 0;
        l1 = 0;
_L9:
        if (k >= j)
        {
            break MISSING_BLOCK_LABEL_205;
        }
_L6:
        c2 = n[k];
        if (c2 >= j1) goto _L2; else goto _L1
_L1:
        i2 = ai[c2];
        if (i2 == 0) goto _L4; else goto _L3
_L3:
        j2 = k - k1;
        if (j2 > 0)
        {
            m.write(n, k1, j2);
            if (k >= j)
            {
                break MISSING_BLOCK_LABEL_205;
            }
        }
        k2 = k + 1;
        l2 = a(n, k2, j, c2, i2);
        k = k2;
        k1 = l2;
        l1 = i2;
        continue; /* Loop/switch isn't completed */
_L2:
        if (c2 > i1)
        {
            i2 = -1;
        } else
        {
            u u1 = c1.b();
            s = u1;
            if (u1 == null)
            {
                continue; /* Loop/switch isn't completed */
            }
            i2 = -2;
        }
          goto _L3
_L4:
        l1 = i2;
        if (++k < j) goto _L6; else goto _L5
_L5:
        i2 = l1;
          goto _L3
        if (true) goto _L6; else goto _L7
_L7:
        return;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private char[] f()
    {
        char ac[] = new char[14];
        ac[0] = '\\';
        ac[2] = '\\';
        ac[3] = 'u';
        ac[4] = '0';
        ac[5] = '0';
        ac[8] = '\\';
        ac[9] = 'u';
        r = ac;
        return ac;
    }

    private void g()
    {
        int j = p - o;
        if (j > 0)
        {
            int k = o;
            o = 0;
            p = 0;
            m.write(n, k, j);
        }
    }

    protected final void a(String s1)
    {
        int j;
        j = d.e();
        if (j == 5)
        {
            b((new StringBuilder("Can not ")).append(s1).append(", expecting field name").toString());
        }
        if (_cfgPrettyPrinter != null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        j;
        JVM INSTR tableswitch 1 3: default 72
    //                   1 73
    //                   2 112
    //                   3 118;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        char c1 = ',';
_L5:
        if (p >= q)
        {
            g();
        }
        n[p] = c1;
        p = 1 + p;
        return;
_L3:
        c1 = ':';
        if (true) goto _L5; else goto _L4
_L4:
        if (k == null) goto _L1; else goto _L6
_L6:
        writeRaw(k.a());
        return;
        b(j);
        return;
    }

    protected final void b()
    {
        char ac[] = n;
        if (ac != null)
        {
            n = null;
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
        g();
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
        g();
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
        byte abyte0[];
        a("write binary value");
        if (p >= q)
        {
            g();
        }
        char ac[] = n;
        int k = p;
        p = k + 1;
        ac[k] = '"';
        abyte0 = g.g();
        if (j >= 0) goto _L2; else goto _L1
_L1:
        int k1 = a(a1, inputstream, abyte0);
        j = k1;
_L4:
        g.c(abyte0);
        if (p >= q)
        {
            g();
        }
        char ac1[] = n;
        int j1 = p;
        p = j1 + 1;
        ac1[j1] = '"';
        return j;
_L2:
        int i1 = a(a1, inputstream, abyte0, j);
        if (i1 <= 0) goto _L4; else goto _L3
_L3:
        b((new StringBuilder("Too few bytes available: missing ")).append(i1).append(" bytes (out of ").append(j).append(")").toString());
          goto _L4
        Exception exception;
        exception;
        g.c(abyte0);
        throw exception;
    }

    public final void writeBinary(a a1, byte abyte0[], int j, int k)
    {
        a("write binary value");
        if (p >= q)
        {
            g();
        }
        char ac[] = n;
        int i1 = p;
        p = i1 + 1;
        ac[i1] = '"';
        a(a1, abyte0, j, j + k);
        if (p >= q)
        {
            g();
        }
        char ac1[] = n;
        int j1 = p;
        p = j1 + 1;
        ac1[j1] = '"';
    }

    public final void writeBoolean(boolean flag)
    {
        a("write boolean value");
        if (5 + p >= q)
        {
            g();
        }
        int j = p;
        char ac[] = n;
        int k1;
        if (flag)
        {
            ac[j] = 't';
            int l1 = j + 1;
            ac[l1] = 'r';
            int i2 = l1 + 1;
            ac[i2] = 'u';
            k1 = i2 + 1;
            ac[k1] = 'e';
        } else
        {
            ac[j] = 'f';
            int k = j + 1;
            ac[k] = 'a';
            int i1 = k + 1;
            ac[i1] = 'l';
            int j1 = i1 + 1;
            ac[j1] = 's';
            k1 = j1 + 1;
            ac[k1] = 'e';
        }
        p = k1 + 1;
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
            if (p >= q)
            {
                g();
            }
            char ac[] = n;
            int j = p;
            p = j + 1;
            ac[j] = ']';
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
            if (p >= q)
            {
                g();
            }
            char ac[] = n;
            int j = p;
            p = j + 1;
            ac[j] = '}';
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
        if (j != flag)
        {
            flag = false;
        }
        a(u1, flag);
    }

    public final void writeFieldName(String s1)
    {
        boolean flag = true;
        int j = d.a(s1);
        if (j == 4)
        {
            b("Can not write a field name, expecting a value");
        }
        if (j != flag)
        {
            flag = false;
        }
        a(s1, flag);
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
        if (c)
        {
            a(j);
            return;
        }
        if (11 + p >= q)
        {
            g();
        }
        p = i.a(j, n, p);
    }

    public final void writeNumber(long l1)
    {
        a("write number");
        if (c)
        {
            a(l1);
            return;
        }
        if (21 + p >= q)
        {
            g();
        }
        p = i.a(l1, n, p);
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
        if (c)
        {
            a(word0);
            return;
        }
        if (6 + p >= q)
        {
            g();
        }
        p = i.a(word0, n, p);
    }

    public final void writeRaw(char c1)
    {
        if (p >= q)
        {
            g();
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = c1;
    }

    public final void writeRaw(u u1)
    {
        writeRaw(u1.a());
    }

    public final void writeRaw(String s1)
    {
        int j = s1.length();
        int k = q - p;
        if (k == 0)
        {
            g();
            k = q - p;
        }
        if (k >= j)
        {
            s1.getChars(0, j, n, p);
            p = j + p;
            return;
        } else
        {
            c(s1);
            return;
        }
    }

    public final void writeRaw(String s1, int j, int k)
    {
        int i1 = q - p;
        if (i1 < k)
        {
            g();
            i1 = q - p;
        }
        if (i1 >= k)
        {
            s1.getChars(j, j + k, n, p);
            p = k + p;
            return;
        } else
        {
            c(s1.substring(j, j + k));
            return;
        }
    }

    public final void writeRaw(char ac[], int j, int k)
    {
        if (k < 32)
        {
            if (k > q - p)
            {
                g();
            }
            System.arraycopy(ac, j, n, p, k);
            p = k + p;
            return;
        } else
        {
            g();
            m.write(ac, j, k);
            return;
        }
    }

    public final void writeRawUTF8String(byte abyte0[], int j, int k)
    {
        d();
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
        if (p >= q)
        {
            g();
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = '[';
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
        if (p >= q)
        {
            g();
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = '{';
    }

    public final void writeString(u u1)
    {
        a("write text value");
        if (p >= q)
        {
            g();
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = '"';
        char ac1[] = u1.b();
        int k = ac1.length;
        char ac2[];
        int i1;
        if (k < 32)
        {
            if (k > q - p)
            {
                g();
            }
            System.arraycopy(ac1, 0, n, p, k);
            p = k + p;
        } else
        {
            g();
            m.write(ac1, 0, k);
        }
        if (p >= q)
        {
            g();
        }
        ac2 = n;
        i1 = p;
        p = i1 + 1;
        ac2[i1] = '"';
    }

    public final void writeString(String s1)
    {
        a("write text value");
        if (s1 == null)
        {
            e();
            return;
        }
        if (p >= q)
        {
            g();
        }
        char ac[] = n;
        int j = p;
        p = j + 1;
        ac[j] = '"';
        d(s1);
        if (p >= q)
        {
            g();
        }
        char ac1[] = n;
        int k = p;
        p = k + 1;
        ac1[k] = '"';
    }

    public final void writeString(char ac[], int j, int k)
    {
        a("write text value");
        if (p >= q)
        {
            g();
        }
        char ac1[] = n;
        int i1 = p;
        p = i1 + 1;
        ac1[i1] = '"';
        a(ac, j, k);
        if (p >= q)
        {
            g();
        }
        char ac2[] = n;
        int j1 = p;
        p = j1 + 1;
        ac2[j1] = '"';
    }

    public final void writeUTF8String(byte abyte0[], int j, int k)
    {
        d();
    }

}
