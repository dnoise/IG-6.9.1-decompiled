// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.d;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.a.c;
import com.fasterxml.jackson.a.c.b;
import com.fasterxml.jackson.a.c.d;
import com.fasterxml.jackson.a.g.o;
import com.fasterxml.jackson.a.n;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

// Referenced classes of package com.fasterxml.jackson.a.d:
//            h, d

public final class g extends c
{

    protected Reader J;
    protected char K[];
    protected s L;
    protected final com.fasterxml.jackson.a.e.d M;
    protected final int N;
    protected boolean O;

    public g(d d1, int i1, Reader reader, s s1, com.fasterxml.jackson.a.e.d d2)
    {
        super(d1, i1);
        O = false;
        J = reader;
        K = d1.h();
        L = s1;
        M = d2;
        N = d2.c();
    }

    private int a(a a1, OutputStream outputstream, byte abyte0[])
    {
        int i1;
        int j1;
        int k1;
        i1 = -3 + abyte0.length;
        j1 = 0;
        k1 = 0;
_L13:
        char c1;
        int i2;
        do
        {
            if (c >= d)
            {
                a();
            }
            char ac[] = K;
            int l1 = c;
            c = l1 + 1;
            c1 = ac[l1];
        } while (c1 <= ' ');
        i2 = a1.b(c1);
        if (i2 >= 0) goto _L2; else goto _L1
_L1:
        if (c1 == '"') goto _L4; else goto _L3
_L3:
        i2 = a(a1, c1, 0);
        if (i2 < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L2:
        int j2 = i2;
        int k2;
        char ac1[];
        int l2;
        char c2;
        int i3;
        int j3;
        char ac2[];
        int k3;
        char c3;
        int l3;
        int i4;
        char ac3[];
        int j4;
        char c4;
        int k4;
        int l4;
        int i5;
        int j5;
        int k5;
        int l5;
        int i6;
        int j6;
        char ac4[];
        int k6;
        char c5;
        int l6;
        int i7;
        if (k1 > i1)
        {
            j1 += k1;
            outputstream.write(abyte0, 0, k1);
            k2 = 0;
        } else
        {
            k2 = k1;
        }
        if (c >= d)
        {
            a();
        }
        ac1 = K;
        l2 = c;
        c = l2 + 1;
        c2 = ac1[l2];
        i3 = a1.b(c2);
        if (i3 < 0)
        {
            i3 = a(a1, c2, 1);
        }
        j3 = i3 | j2 << 6;
        if (c >= d)
        {
            a();
        }
        ac2 = K;
        k3 = c;
        c = k3 + 1;
        c3 = ac2[k3];
        l3 = a1.b(c3);
        if (l3 >= 0) goto _L6; else goto _L5
_L5:
        if (l3 == -2) goto _L8; else goto _L7
_L7:
        if (c3 != '"' || a1.a()) goto _L10; else goto _L9
_L9:
        i7 = j3 >> 4;
        k1 = k2 + 1;
        abyte0[k2] = (byte)i7;
_L4:
        O = false;
        if (k1 > 0)
        {
            j1 += k1;
            outputstream.write(abyte0, 0, k1);
        }
        return j1;
_L10:
        l3 = a(a1, c3, 2);
_L8:
        if (l3 == -2)
        {
            if (c >= d)
            {
                a();
            }
            ac4 = K;
            k6 = c;
            c = k6 + 1;
            c5 = ac4[k6];
            if (!a1.a(c5))
            {
                throw a(a1, c5, 3, (new StringBuilder("expected padding character '")).append(a1.b()).append("'").toString());
            }
            l6 = j3 >> 4;
            k1 = k2 + 1;
            abyte0[k2] = (byte)l6;
            continue; /* Loop/switch isn't completed */
        }
_L6:
        i4 = l3 | j3 << 6;
        if (c >= d)
        {
            a();
        }
        ac3 = K;
        j4 = c;
        c = j4 + 1;
        c4 = ac3[j4];
        k4 = a1.b(c4);
        if (k4 >= 0)
        {
            break MISSING_BLOCK_LABEL_625;
        }
        if (k4 == -2)
        {
            break MISSING_BLOCK_LABEL_580;
        }
        if (c4 != '"' || a1.a())
        {
            break; /* Loop/switch isn't completed */
        }
        i6 = i4 >> 2;
        j6 = k2 + 1;
        abyte0[k2] = (byte)(i6 >> 8);
        k1 = j6 + 1;
        abyte0[j6] = (byte)i6;
        if (true) goto _L4; else goto _L11
_L11:
        k4 = a(a1, c4, 3);
        if (k4 == -2)
        {
            k5 = i4 >> 2;
            l5 = k2 + 1;
            abyte0[k2] = (byte)(k5 >> 8);
            k1 = l5 + 1;
            abyte0[l5] = (byte)k5;
            continue; /* Loop/switch isn't completed */
        }
        l4 = k4 | i4 << 6;
        i5 = k2 + 1;
        abyte0[k2] = (byte)(l4 >> 16);
        j5 = i5 + 1;
        abyte0[i5] = (byte)(l4 >> 8);
        k1 = j5 + 1;
        abyte0[j5] = (byte)l4;
        if (true) goto _L13; else goto _L12
_L12:
    }

    private r a(int i1)
    {
        int j1;
        int k1;
        boolean flag;
        int l1;
        int i2;
        int j2;
        int k2;
        j1 = 1;
        k1 = 0;
        char ac5[];
        if (i1 == 45)
        {
            flag = j1;
        } else
        {
            flag = false;
        }
        l1 = c;
        i2 = l1 - 1;
        j2 = d;
        if (!flag) goto _L2; else goto _L1
_L1:
        if (l1 >= d) goto _L4; else goto _L3
_L3:
        ac5 = K;
        k2 = l1 + 1;
        i1 = ac5[l1];
        if (i1 > 57 || i1 < 48)
        {
            c = k2;
            return a(i1, j1);
        }
          goto _L5
_L2:
        k2 = l1;
_L5:
        int i3;
        char c1;
        if (i1 != 48)
        {
            for (; k2 < d; k2 = i3)
            {
                char ac[] = K;
                i3 = k2 + 1;
                c1 = ac[k2];
                if (c1 < '0' || c1 > '9')
                {
                    break MISSING_BLOCK_LABEL_156;
                }
                j1++;
            }

        }
          goto _L4
        if (c1 != '.') goto _L7; else goto _L6
_L6:
        int l4;
        int j5;
        char c5;
        l4 = 0;
        for (int i5 = i3; i5 < j2; i5 = j5)
        {
            char ac4[] = K;
            j5 = i5 + 1;
            c5 = ac4[i5];
            if (c5 < '0' || c5 > '9')
            {
                break MISSING_BLOCK_LABEL_220;
            }
            l4++;
        }

          goto _L4
        char c2;
        int j3;
        int k3;
        if (l4 == 0)
        {
            a(c5, "Decimal point not followed by a digit");
        }
        int k5 = l4;
        j3 = j5;
        c2 = c5;
        k3 = k5;
_L19:
        if (c2 == 'e') goto _L9; else goto _L8
_L8:
        k1 = 0;
        if (c2 != 'E') goto _L10; else goto _L9
_L9:
        if (j3 >= j2) goto _L4; else goto _L11
_L11:
        int j4;
        char c3;
        char ac1[] = K;
        j4 = j3 + 1;
        c3 = ac1[j3];
        if (c3 != '-' && c3 != '+') goto _L13; else goto _L12
_L12:
        if (j4 >= j2) goto _L4; else goto _L14
_L14:
        char c4;
        char ac2[] = K;
        j3 = j4 + 1;
        c4 = ac2[j4];
_L17:
        if (c4 > '9' || c4 < '0') goto _L16; else goto _L15
_L15:
        k1++;
        if (j3 < j2)
        {
            char ac3[] = K;
            int k4 = j3 + 1;
            c4 = ac3[j3];
            j3 = k4;
            continue; /* Loop/switch isn't completed */
        }
          goto _L4
_L16:
        if (k1 == 0)
        {
            a(c4, "Exponent indicator not followed by a digit");
        }
_L10:
        int l3 = j3 - 1;
        c = l3;
        int i4 = l3 - i2;
        m.a(K, i2, i4);
        return a(flag, j1, k3, k1);
_L4:
        int l2;
        if (flag)
        {
            l2 = i2 + 1;
        } else
        {
            l2 = i2;
        }
        c = l2;
        return a(flag);
_L13:
        c4 = c3;
        j3 = j4;
        k1 = 0;
        if (true) goto _L17; else goto _L7
_L7:
        c2 = c1;
        j3 = i3;
        k3 = 0;
        if (true) goto _L19; else goto _L18
_L18:
    }

    private r a(int i1, boolean flag)
    {
        double d1 = (-1.0D / 0.0D);
        if (i1 != 73) goto _L2; else goto _L1
_L1:
        if (c >= d && !b())
        {
            _reportInvalidEOFInValue();
        }
        char ac[] = K;
        int j1 = c;
        c = j1 + 1;
        i1 = ac[j1];
        if (i1 != 78) goto _L4; else goto _L3
_L3:
        String s2;
        if (flag)
        {
            s2 = "-INF";
        } else
        {
            s2 = "+INF";
        }
        a(s2, 3);
        if (isEnabled(n.h))
        {
            if (!flag)
            {
                d1 = (1.0D / 0.0D);
            }
            return a(s2, d1);
        }
        _reportError((new StringBuilder("Non-standard token '")).append(s2).append("': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow").toString());
_L2:
        a(i1, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
_L4:
        if (i1 == 110)
        {
            String s1;
            if (flag)
            {
                s1 = "-Infinity";
            } else
            {
                s1 = "+Infinity";
            }
            a(s1, 3);
            if (isEnabled(n.h))
            {
                if (!flag)
                {
                    d1 = (1.0D / 0.0D);
                }
                return a(s1, d1);
            }
            _reportError((new StringBuilder("Non-standard token '")).append(s1).append("': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow").toString());
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private r a(boolean flag)
    {
        char ac[] = m.j();
        int i1;
        char c1;
        int j1;
        char c2;
        char ac1[];
        char c3;
        int k1;
        int l1;
        int i2;
        char ac2[];
        boolean flag1;
        boolean flag2;
        char ac3[];
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        char c4;
        int k3;
        int l3;
        char c5;
        char ac4[];
        int i4;
        char c6;
        int j4;
        int k4;
        int l4;
        boolean flag3;
        char ac5[];
        int i5;
        char ac6[];
        int j5;
        char ac7[];
        int k5;
        int l5;
        char ac8[];
        int i6;
        int j6;
        int k6;
        char ac9[];
        int l6;
        int i7;
        int j7;
        int k7;
        char ac10[];
        int l7;
        if (flag)
        {
            ac[0] = '-';
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (c < d)
        {
            char ac11[] = K;
            int i8 = c;
            c = i8 + 1;
            c1 = ac11[i8];
        } else
        {
            c1 = b("No digit following minus sign");
        }
        if (c1 == '0')
        {
            c1 = i();
        }
        j1 = 0;
        c2 = c1;
        ac1 = ac;
        c3 = c2;
        if (c3 < '0' || c3 > '9')
        {
            break MISSING_BLOCK_LABEL_879;
        }
        j1++;
        if (i1 >= ac1.length)
        {
            ac1 = m.l();
            i1 = 0;
        }
        k7 = i1 + 1;
        ac1[i1] = c3;
        if (c < d || b()) goto _L2; else goto _L1
_L1:
        flag1 = true;
        i2 = 0;
        k1 = j1;
        ac2 = ac1;
        l1 = k7;
_L24:
        if (k1 == 0)
        {
            a((new StringBuilder("Missing integer part (next char ")).append(_getCharDesc(i2)).append(")").toString());
        }
        if (i2 != 46) goto _L4; else goto _L3
_L3:
        l5 = l1 + 1;
        ac2[l1] = i2;
        ac8 = ac2;
        i6 = l5;
        j6 = i2;
        k6 = 0;
_L17:
        if (c < d || b()) goto _L6; else goto _L5
_L5:
        flag2 = true;
_L21:
        if (k6 == 0)
        {
            a(j6, "Decimal point not followed by a digit");
        }
        i3 = k6;
        l2 = i6;
        i7 = j6;
        ac3 = ac8;
        k2 = i7;
_L22:
        if (k2 != 101 && k2 != 69) goto _L8; else goto _L7
_L7:
        if (l2 >= ac3.length)
        {
            ac3 = m.l();
            l2 = 0;
        }
        j3 = l2 + 1;
        ac3[l2] = k2;
        if (c < d)
        {
            ac7 = K;
            k5 = c;
            c = k5 + 1;
            c4 = ac7[k5];
        } else
        {
            c4 = b("expected a digit for number exponent");
        }
        if (c4 != '-' && c4 != '+') goto _L10; else goto _L9
_L9:
        if (j3 >= ac3.length)
        {
            ac3 = m.l();
            k3 = 0;
        } else
        {
            k3 = j3;
        }
        l3 = k3 + 1;
        ac3[k3] = c4;
        if (c < d)
        {
            ac6 = K;
            j5 = c;
            c = j5 + 1;
            c5 = ac6[j5];
            ac4 = ac3;
            i4 = 0;
        } else
        {
            c5 = b("expected a digit for number exponent");
            ac4 = ac3;
            i4 = 0;
        }
        c6 = c5;
        j4 = l3;
_L19:
        if (c6 > '9' || c6 < '0') goto _L12; else goto _L11
_L11:
        i4++;
        if (j4 >= ac4.length)
        {
            ac4 = m.l();
            j4 = 0;
        }
        l3 = j4 + 1;
        ac4[j4] = c6;
        if (c < d || b()) goto _L14; else goto _L13
_L13:
        k4 = i4;
        flag3 = true;
        l4 = l3;
_L18:
        if (k4 == 0)
        {
            a(c6, "Exponent indicator not followed by a digit");
        }
_L20:
        if (!flag3)
        {
            c = -1 + c;
        }
        m.a(l4);
        return a(flag, k1, i3, k4);
_L2:
        ac10 = K;
        l7 = c;
        c = l7 + 1;
        c3 = ac10[l7];
        i1 = k7;
        break MISSING_BLOCK_LABEL_84;
_L6:
        ac9 = K;
        l6 = c;
        c = l6 + 1;
        j6 = ac9[l6];
        if (j6 < 48 || j6 > 57) goto _L16; else goto _L15
_L15:
        k6++;
        if (i6 >= ac8.length)
        {
            ac8 = m.l();
            j7 = 0;
        } else
        {
            j7 = i6;
        }
        i6 = j7 + 1;
        ac8[j7] = j6;
          goto _L17
_L14:
        ac5 = K;
        i5 = c;
        c = i5 + 1;
        c5 = ac5[i5];
        break MISSING_BLOCK_LABEL_466;
_L12:
        k4 = i4;
        l4 = j4;
        flag3 = flag2;
          goto _L18
_L10:
        c6 = c4;
        j4 = j3;
        ac4 = ac3;
        i4 = 0;
          goto _L19
_L8:
        l4 = l2;
        flag3 = flag2;
        k4 = 0;
          goto _L20
_L16:
        flag2 = flag1;
          goto _L21
_L4:
        flag2 = flag1;
        ac3 = ac2;
        j2 = l1;
        k2 = i2;
        l2 = j2;
        i3 = 0;
          goto _L22
        k1 = j1;
        l1 = i1;
        i2 = c3;
        ac2 = ac1;
        flag1 = false;
        if (true) goto _L24; else goto _L23
_L23:
    }

    private String a(int i1, int j1, int k1)
    {
        char ac[];
        int l1;
        m.a(K, i1, c - i1);
        ac = m.i();
        l1 = m.k();
_L3:
        char c1;
        if (c >= d && !b())
        {
            _reportInvalidEOF((new StringBuilder(": was expecting closing '")).append((char)k1).append("' for name").toString());
        }
        char ac1[] = K;
        int i2 = c;
        c = i2 + 1;
        c1 = ac1[i2];
        if (c1 > '\\')
        {
            break MISSING_BLOCK_LABEL_198;
        }
        if (c1 != '\\') goto _L2; else goto _L1
_L1:
        char c2 = g();
_L4:
        j1 = c1 + j1 * 33;
        int j2 = l1 + 1;
        ac[l1] = c2;
        o o1;
        char ac2[];
        int k2;
        int l2;
        if (j2 >= ac.length)
        {
            ac = m.l();
            l1 = 0;
        } else
        {
            l1 = j2;
        }
        if (true) goto _L3; else goto _L2
_L2:
        if (c1 <= k1)
        {
            if (c1 == k1)
            {
                break MISSING_BLOCK_LABEL_205;
            }
            if (c1 < ' ')
            {
                _throwUnquotedSpace(c1, "name");
            }
        }
        c2 = c1;
          goto _L4
        m.a(l1);
        o1 = m;
        ac2 = o1.d();
        k2 = o1.c();
        l2 = o1.b();
        return M.a(ac2, k2, l2, j1);
    }

    private String a(int i1, int j1, int ai[])
    {
        m.a(K, i1, c - i1);
        char ac[] = m.i();
        int k1 = m.k();
        int l1 = ai.length;
        do
        {
            char c1;
label0:
            {
                if (c < d || b())
                {
                    c1 = K[c];
                    o o1;
                    char ac1[];
                    int j2;
                    int k2;
                    if (c1 > l1 ? Character.isJavaIdentifierPart(c1) : ai[c1] == 0)
                    {
                        break label0;
                    }
                }
                m.a(k1);
                o1 = m;
                ac1 = o1.d();
                j2 = o1.c();
                k2 = o1.b();
                return M.a(ac1, j2, k2, j1);
            }
            c = 1 + c;
            j1 = c1 + j1 * 33;
            int i2 = k1 + 1;
            ac[k1] = c1;
            if (i2 >= ac.length)
            {
                ac = m.l();
                k1 = 0;
            } else
            {
                k1 = i2;
            }
        } while (true);
    }

    private String a(r r1)
    {
        if (r1 == null)
        {
            return null;
        }
        switch (com.fasterxml.jackson.a.d.h.a[r1.ordinal()])
        {
        default:
            return r1.a();

        case 1: // '\001'
            return k.getCurrentName();

        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
            return m.e();
        }
    }

    private void a(String s1, int i1)
    {
        int j1 = s1.length();
        do
        {
            if (c >= d && !b())
            {
                c(s1.substring(0, i1));
            }
            if (K[c] != s1.charAt(i1))
            {
                c(s1.substring(0, i1));
            }
            c = 1 + c;
        } while (++i1 < j1);
        char c1;
        if (c < d || b())
        {
            if ((c1 = K[c]) >= '0' && c1 != ']' && c1 != '}' && Character.isJavaIdentifierPart(c1))
            {
                c(s1.substring(0, i1));
                return;
            }
        }
    }

    private byte[] a(a a1)
    {
        com.fasterxml.jackson.a.g.d d1 = f();
        do
        {
            char c1;
            do
            {
                if (c >= d)
                {
                    a();
                }
                char ac[] = K;
                int i1 = c;
                c = i1 + 1;
                c1 = ac[i1];
            } while (c1 <= ' ');
            int j1 = a1.b(c1);
            if (j1 < 0)
            {
                if (c1 == '"')
                {
                    return d1.c();
                }
                j1 = a(a1, c1, 0);
                if (j1 < 0)
                {
                    continue;
                }
            }
            if (c >= d)
            {
                a();
            }
            char ac1[] = K;
            int k1 = c;
            c = k1 + 1;
            char c2 = ac1[k1];
            int l1 = a1.b(c2);
            if (l1 < 0)
            {
                l1 = a(a1, c2, 1);
            }
            int i2 = l1 | j1 << 6;
            if (c >= d)
            {
                a();
            }
            char ac2[] = K;
            int j2 = c;
            c = j2 + 1;
            char c3 = ac2[j2];
            int k2 = a1.b(c3);
            if (k2 < 0)
            {
                if (k2 != -2)
                {
                    if (c3 == '"' && !a1.a())
                    {
                        d1.a(i2 >> 4);
                        return d1.c();
                    }
                    k2 = a(a1, c3, 2);
                }
                if (k2 == -2)
                {
                    if (c >= d)
                    {
                        a();
                    }
                    char ac4[] = K;
                    int k3 = c;
                    c = k3 + 1;
                    char c5 = ac4[k3];
                    if (!a1.a(c5))
                    {
                        throw a(a1, c5, 3, (new StringBuilder("expected padding character '")).append(a1.b()).append("'").toString());
                    }
                    d1.a(i2 >> 4);
                    continue;
                }
            }
            int l2 = k2 | i2 << 6;
            if (c >= d)
            {
                a();
            }
            char ac3[] = K;
            int i3 = c;
            c = i3 + 1;
            char c4 = ac3[i3];
            int j3 = a1.b(c4);
            if (j3 < 0)
            {
                if (j3 != -2)
                {
                    if (c4 == '"' && !a1.a())
                    {
                        d1.b(l2 >> 2);
                        return d1.c();
                    }
                    j3 = a(a1, c4, 3);
                }
                if (j3 == -2)
                {
                    d1.b(l2 >> 2);
                    continue;
                }
            }
            d1.c(j3 | l2 << 6);
        } while (true);
    }

    private char b(String s1)
    {
        if (c >= d && !b())
        {
            _reportInvalidEOF(s1);
        }
        char ac[] = K;
        int i1 = c;
        c = i1 + 1;
        return ac[i1];
    }

    private String b(int i1)
    {
        if (i1 != 34)
        {
            return c(i1);
        }
        int j1 = c;
        int k1 = N;
        int l1 = d;
        if (j1 < l1)
        {
            int ai[] = com.fasterxml.jackson.a.c.b.a();
            int j2 = ai.length;
            do
            {
                char c1 = K[j1];
                if (c1 < j2 && ai[c1] != 0)
                {
                    if (c1 == '"')
                    {
                        int k2 = c;
                        c = j1 + 1;
                        return M.a(K, k2, j1 - k2, k1);
                    }
                    break;
                }
                k1 = c1 + k1 * 33;
            } while (++j1 < l1);
        }
        int i2 = c;
        c = j1;
        return a(i2, k1, 34);
    }

    private String c(int i1)
    {
        if (i1 == 39 && isEnabled(n.d))
        {
            return j();
        }
        if (!isEnabled(n.c))
        {
            _reportUnexpectedChar(i1, "was expecting double-quote to start field name");
        }
        int ai[] = com.fasterxml.jackson.a.c.b.c();
        int j1 = ai.length;
        boolean flag;
        int k1;
        int l1;
        int i2;
        if (i1 < j1)
        {
            if (ai[i1] == 0 && (i1 < 48 || i1 > 57))
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        {
            flag = Character.isJavaIdentifierPart((char)i1);
        }
        if (!flag)
        {
            _reportUnexpectedChar(i1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        k1 = c;
        l1 = N;
        i2 = d;
        if (k1 < i2)
        {
            do
            {
                char c1 = K[k1];
                if (c1 < j1)
                {
                    if (ai[c1] != 0)
                    {
                        int l2 = -1 + c;
                        c = k1;
                        return M.a(K, l2, k1 - l2, l1);
                    }
                } else
                if (!Character.isJavaIdentifierPart(c1))
                {
                    int k2 = -1 + c;
                    c = k1;
                    return M.a(K, k2, k1 - k2, l1);
                }
                l1 = c1 + l1 * 33;
            } while (++k1 < i2);
        }
        int j2 = -1 + c;
        c = k1;
        return a(j2, l1, ai);
    }

    private void c(String s1)
    {
        d(s1);
    }

    private r d(int i1)
    {
        i1;
        JVM INSTR lookupswitch 4: default 44
    //                   39: 54
    //                   43: 147
    //                   73: 108
    //                   78: 69;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        _reportUnexpectedChar(i1, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
_L2:
        if (isEnabled(n.d))
        {
            return k();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        a("NaN", 1);
        if (isEnabled(n.h))
        {
            return a("NaN", (0.0D / 0.0D));
        }
        _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        continue; /* Loop/switch isn't completed */
_L4:
        a("Infinity", 1);
        if (isEnabled(n.h))
        {
            return a("Infinity", (1.0D / 0.0D));
        }
        _reportError("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        if (true) goto _L1; else goto _L3
_L3:
        if (c >= d && !b())
        {
            _reportInvalidEOFInValue();
        }
        char ac[] = K;
        int j1 = c;
        c = j1 + 1;
        return a(ac[j1], false);
    }

    private void d(String s1)
    {
        StringBuilder stringbuilder = new StringBuilder(s1);
        do
        {
            if (c >= d && !b())
            {
                break;
            }
            char c1 = K[c];
            if (!Character.isJavaIdentifierPart(c1))
            {
                break;
            }
            c = 1 + c;
            stringbuilder.append(c1);
        } while (true);
        _reportError((new StringBuilder("Unrecognized token '")).append(stringbuilder.toString()).append("': was expecting ").toString());
    }

    private r h()
    {
        r r1;
        o = false;
        r1 = l;
        l = null;
        if (r1 != r.d) goto _L2; else goto _L1
_L1:
        k = k.a(i, j);
_L4:
        _currToken = r1;
        return r1;
_L2:
        if (r1 == r.b)
        {
            k = k.b(i, j);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private char i()
    {
        if (c < d || b()) goto _L2; else goto _L1
_L1:
        char c1 = '0';
_L4:
        return c1;
_L2:
        c1 = K[c];
        if (c1 < '0' || c1 > '9')
        {
            return '0';
        }
        if (!isEnabled(n.g))
        {
            a("Leading zeroes not allowed");
        }
        c = 1 + c;
        if (c1 != '0')
        {
            continue; /* Loop/switch isn't completed */
        }
        do
        {
            if (c >= d && !b())
            {
                continue; /* Loop/switch isn't completed */
            }
            c1 = K[c];
            if (c1 < '0' || c1 > '9')
            {
                return '0';
            }
            c = 1 + c;
        } while (c1 == '0');
        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return c1;
    }

    private String j()
    {
        int i1 = c;
        int j1 = N;
        int k1 = d;
        if (i1 < k1)
        {
            int ai[] = com.fasterxml.jackson.a.c.b.a();
            int i2 = ai.length;
            do
            {
                char c1 = K[i1];
                if (c1 == '\'')
                {
                    int j2 = c;
                    c = i1 + 1;
                    return M.a(K, j2, i1 - j2, j1);
                }
                if (c1 < i2 && ai[c1] != 0)
                {
                    break;
                }
                j1 = c1 + j1 * 33;
            } while (++i1 < k1);
        }
        int l1 = c;
        c = i1;
        return a(l1, j1, 39);
    }

    private r k()
    {
        char ac[];
        int i1;
        ac = m.j();
        i1 = m.k();
_L5:
        char c1;
        if (c >= d && !b())
        {
            _reportInvalidEOF(": was expecting closing quote for a string value");
        }
        char ac1[] = K;
        int j1 = c;
        c = j1 + 1;
        c1 = ac1[j1];
        if (c1 > '\\') goto _L2; else goto _L1
_L1:
        if (c1 != '\\') goto _L4; else goto _L3
_L3:
        c1 = g();
_L2:
        int k1;
        if (i1 >= ac.length)
        {
            ac = m.l();
            k1 = 0;
        } else
        {
            k1 = i1;
        }
        i1 = k1 + 1;
        ac[k1] = c1;
        if (true) goto _L5; else goto _L4
_L4:
        if (c1 <= '\'')
        {
            if (c1 != '\'')
            {
                if (c1 < ' ')
                {
                    _throwUnquotedSpace(c1, "string value");
                }
            } else
            {
                m.a(i1);
                return r.h;
            }
        }
          goto _L2
    }

    private void l()
    {
        char ac[];
        int i1;
        ac = m.i();
        i1 = m.k();
_L5:
        char c1;
        if (c >= d && !b())
        {
            _reportInvalidEOF(": was expecting closing quote for a string value");
        }
        char ac1[] = K;
        int j1 = c;
        c = j1 + 1;
        c1 = ac1[j1];
        if (c1 > '\\') goto _L2; else goto _L1
_L1:
        if (c1 != '\\') goto _L4; else goto _L3
_L3:
        c1 = g();
_L2:
        int k1;
        if (i1 >= ac.length)
        {
            ac = m.l();
            k1 = 0;
        } else
        {
            k1 = i1;
        }
        i1 = k1 + 1;
        ac[k1] = c1;
        if (true) goto _L5; else goto _L4
_L4:
        if (c1 <= '"')
        {
            if (c1 != '"')
            {
                if (c1 < ' ')
                {
                    _throwUnquotedSpace(c1, "string value");
                }
            } else
            {
                m.a(i1);
                return;
            }
        }
          goto _L2
    }

    private void m()
    {
        O = false;
        int i1 = c;
        int j1 = d;
        char ac[] = K;
        do
        {
            if (i1 >= j1)
            {
                c = i1;
                if (!b())
                {
                    _reportInvalidEOF(": was expecting closing quote for a string value");
                }
                i1 = c;
                j1 = d;
            }
            int k1 = i1 + 1;
            char c1 = ac[i1];
            if (c1 <= '\\')
            {
                if (c1 == '\\')
                {
                    c = k1;
                    g();
                    i1 = c;
                    j1 = d;
                    continue;
                }
                if (c1 <= '"')
                {
                    if (c1 == '"')
                    {
                        c = k1;
                        return;
                    }
                    if (c1 < ' ')
                    {
                        c = k1;
                        _throwUnquotedSpace(c1, "string value");
                    }
                }
            }
            i1 = k1;
        } while (true);
    }

    private void n()
    {
        if ((c < d || b()) && K[c] == '\n')
        {
            c = 1 + c;
        }
        f = 1 + f;
        g = c;
    }

    private void o()
    {
        f = 1 + f;
        g = c;
    }

    private int p()
    {
        do
        {
            if (c >= d && !b())
            {
                break;
            }
            char ac[] = K;
            int i1 = c;
            c = i1 + 1;
            char c1 = ac[i1];
            if (c1 > ' ')
            {
                if (c1 != '/')
                {
                    return c1;
                }
                r();
            } else
            if (c1 != ' ')
            {
                if (c1 == '\n')
                {
                    o();
                } else
                if (c1 == '\r')
                {
                    n();
                } else
                if (c1 != '\t')
                {
                    _throwInvalidSpace(c1);
                }
            }
        } while (true);
        throw _constructError((new StringBuilder("Unexpected end-of-input within/between ")).append(k.getTypeDesc()).append(" entries").toString());
    }

    private int q()
    {
        char c1;
label0:
        {
            while (c < d || b()) 
            {
                char ac[] = K;
                int i1 = c;
                c = i1 + 1;
                c1 = ac[i1];
                if (c1 > ' ')
                {
                    if (c1 != '/')
                    {
                        break label0;
                    }
                    r();
                } else
                if (c1 != ' ')
                {
                    if (c1 == '\n')
                    {
                        o();
                    } else
                    if (c1 == '\r')
                    {
                        n();
                    } else
                    if (c1 != '\t')
                    {
                        _throwInvalidSpace(c1);
                    }
                }
            }
            _handleEOF();
            c1 = '\uFFFF';
        }
        return c1;
    }

    private void r()
    {
        if (!isEnabled(n.b))
        {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (c >= d && !b())
        {
            _reportInvalidEOF(" in a comment");
        }
        char ac[] = K;
        int i1 = c;
        c = i1 + 1;
        char c1 = ac[i1];
        if (c1 == '/')
        {
            t();
            return;
        }
        if (c1 == '*')
        {
            s();
            return;
        } else
        {
            _reportUnexpectedChar(c1, "was expecting either '*' or '/' for a comment");
            return;
        }
    }

    private void s()
    {
        do
        {
            if (c >= d && !b())
            {
                break;
            }
            char ac[] = K;
            int i1 = c;
            c = i1 + 1;
            char c1 = ac[i1];
            if (c1 > '*')
            {
                continue;
            }
            if (c1 == '*')
            {
                if (c >= d && !b())
                {
                    break;
                }
                if (K[c] == '/')
                {
                    c = 1 + c;
                    return;
                }
            } else
            if (c1 < ' ')
            {
                if (c1 == '\n')
                {
                    o();
                } else
                if (c1 == '\r')
                {
                    n();
                } else
                if (c1 != '\t')
                {
                    _throwInvalidSpace(c1);
                }
            }
        } while (true);
        _reportInvalidEOF(" in a comment");
    }

    private void t()
    {
        do
        {
            char c1;
label0:
            {
                if (c < d || b())
                {
                    char ac[] = K;
                    int i1 = c;
                    c = i1 + 1;
                    c1 = ac[i1];
                    if (c1 >= ' ')
                    {
                        continue;
                    }
                    if (c1 != '\n')
                    {
                        break label0;
                    }
                    o();
                }
                return;
            }
            if (c1 == '\r')
            {
                n();
                return;
            }
            if (c1 != '\t')
            {
                _throwInvalidSpace(c1);
            }
        } while (true);
    }

    protected final boolean b()
    {
        e = e + (long)d;
        g = g - d;
        Reader reader = J;
        boolean flag = false;
        if (reader != null)
        {
            int i1 = J.read(K, 0, K.length);
            if (i1 > 0)
            {
                c = 0;
                d = i1;
                flag = true;
            } else
            {
                d();
                flag = false;
                if (i1 == 0)
                {
                    throw new IOException((new StringBuilder("Reader returned 0 characters when trying to read ")).append(d).toString());
                }
            }
        }
        return flag;
    }

    protected final void c()
    {
        int i1 = c;
        int j1 = d;
        if (i1 < j1)
        {
            int ai[] = com.fasterxml.jackson.a.c.b.a();
            int k1 = ai.length;
            do
            {
                char c1 = K[i1];
                if (c1 >= k1 || ai[c1] == 0)
                {
                    continue;
                }
                if (c1 == '"')
                {
                    m.a(K, c, i1 - c);
                    c = i1 + 1;
                    return;
                }
                break;
            } while (++i1 < j1);
        }
        m.b(K, c, i1 - c);
        c = i1;
        l();
    }

    public final void close()
    {
        super.close();
        M.b();
    }

    protected final void d()
    {
        if (J != null)
        {
            if (a.c() || isEnabled(n.a))
            {
                J.close();
            }
            J = null;
        }
    }

    protected final void e()
    {
        super.e();
        char ac[] = K;
        if (ac != null)
        {
            K = null;
            a.a(ac);
        }
    }

    protected final char g()
    {
        int i1 = 0;
        if (c >= d && !b())
        {
            _reportInvalidEOF(" in character escape sequence");
        }
        char ac[] = K;
        int j1 = c;
        c = j1 + 1;
        char c1 = ac[j1];
        int k1;
        switch (c1)
        {
        default:
            c1 = _handleUnrecognizedCharacterEscape(c1);
            // fall through

        case 34: // '"'
        case 47: // '/'
        case 92: // '\\'
            return c1;

        case 98: // 'b'
            return '\b';

        case 116: // 't'
            return '\t';

        case 110: // 'n'
            return '\n';

        case 102: // 'f'
            return '\f';

        case 114: // 'r'
            return '\r';

        case 117: // 'u'
            k1 = 0;
            break;
        }
        for (; k1 < 4; k1++)
        {
            if (c >= d && !b())
            {
                _reportInvalidEOF(" in character escape sequence");
            }
            char ac1[] = K;
            int l1 = c;
            c = l1 + 1;
            char c2 = ac1[l1];
            int i2 = com.fasterxml.jackson.a.c.b.a(c2);
            if (i2 < 0)
            {
                _reportUnexpectedChar(c2, "expected a hex-digit for character escape sequence");
            }
            i1 = i2 | i1 << 4;
        }

        return (char)i1;
    }

    public final byte[] getBinaryValue(a a1)
    {
        if (_currToken != r.h && (_currToken != r.g || q == null))
        {
            _reportError((new StringBuilder("Current token (")).append(_currToken).append(") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary").toString());
        }
        if (!O) goto _L2; else goto _L1
_L1:
        try
        {
            q = a(a1);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw _constructError((new StringBuilder("Failed to decode VALUE_STRING as base64 (")).append(a1).append("): ").append(illegalargumentexception.getMessage()).toString());
        }
        O = false;
_L4:
        return q;
_L2:
        if (q == null)
        {
            com.fasterxml.jackson.a.g.d d1 = f();
            _decodeBase64(getText(), d1, a1);
            q = d1.c();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final s getCodec()
    {
        return L;
    }

    public final Object getInputSource()
    {
        return J;
    }

    public final String getText()
    {
        r r1 = _currToken;
        if (r1 == r.h)
        {
            if (O)
            {
                O = false;
                c();
            }
            return m.e();
        } else
        {
            return a(r1);
        }
    }

    public final char[] getTextCharacters()
    {
        if (_currToken == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        com.fasterxml.jackson.a.d.h.a[_currToken.ordinal()];
        JVM INSTR tableswitch 1 4: default 48
    //                   1 56
    //                   2 135
    //                   3 151
    //                   4 151;
           goto _L1 _L2 _L3 _L4 _L4
_L4:
        break; /* Loop/switch isn't completed */
_L1:
        return _currToken.b();
_L2:
        if (o) goto _L6; else goto _L5
_L5:
        String s1;
        int i1;
        s1 = k.getCurrentName();
        i1 = s1.length();
        if (n != null) goto _L8; else goto _L7
_L7:
        n = a.a(i1);
_L10:
        s1.getChars(0, i1, n, 0);
        o = true;
_L6:
        return n;
_L8:
        if (n.length < i1)
        {
            n = new char[i1];
        }
        if (true) goto _L10; else goto _L9
_L9:
        break; /* Loop/switch isn't completed */
_L3:
        if (O)
        {
            O = false;
            c();
        }
        return m.d();
        return null;
    }

    public final int getTextLength()
    {
label0:
        {
label1:
            {
label2:
                {
                    r r1 = _currToken;
                    int i1 = 0;
                    if (r1 != null)
                    {
                        switch (com.fasterxml.jackson.a.d.h.a[_currToken.ordinal()])
                        {
                        default:
                            i1 = _currToken.b().length;
                            break;

                        case 1: // '\001'
                            break label2;

                        case 2: // '\002'
                            break label1;

                        case 3: // '\003'
                        case 4: // '\004'
                            break label0;
                        }
                    }
                    return i1;
                }
                return k.getCurrentName().length();
            }
            if (O)
            {
                O = false;
                c();
            }
        }
        return m.b();
    }

    public final int getTextOffset()
    {
        if (_currToken == null) goto _L2; else goto _L1
_L1:
        com.fasterxml.jackson.a.d.h.a[_currToken.ordinal()];
        JVM INSTR tableswitch 1 4: default 48
    //                   1 48
    //                   2 50
    //                   3 66
    //                   4 66;
           goto _L2 _L2 _L3 _L4 _L4
_L2:
        return 0;
_L3:
        if (O)
        {
            O = false;
            c();
        }
_L4:
        return m.c();
    }

    public final String getValueAsString()
    {
        if (_currToken == r.h)
        {
            if (O)
            {
                O = false;
                c();
            }
            return m.e();
        } else
        {
            return super.getValueAsString(null);
        }
    }

    public final String getValueAsString(String s1)
    {
        if (_currToken == r.h)
        {
            if (O)
            {
                O = false;
                c();
            }
            return m.e();
        } else
        {
            return super.getValueAsString(s1);
        }
    }

    public final Boolean nextBooleanValue()
    {
        r r1;
        if (_currToken != r.f)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        o = false;
        r1 = l;
        l = null;
        _currToken = r1;
        if (r1 != r.k) goto _L2; else goto _L1
_L1:
        Boolean boolean1 = Boolean.TRUE;
_L4:
        return boolean1;
_L2:
        r r2;
        if (r1 == r.l)
        {
            return Boolean.FALSE;
        }
        if (r1 == r.d)
        {
            k = k.a(i, j);
            return null;
        }
        r2 = r.b;
        boolean1 = null;
        if (r1 != r2) goto _L4; else goto _L3
_L3:
        k = k.b(i, j);
        return null;
        switch (com.fasterxml.jackson.a.d.h.a[nextToken().ordinal()])
        {
        default:
            return null;

        case 5: // '\005'
            return Boolean.TRUE;

        case 6: // '\006'
            return Boolean.FALSE;
        }
    }

    public final int nextIntValue(int i1)
    {
        if (_currToken != r.f) goto _L2; else goto _L1
_L1:
        r r1;
        o = false;
        r1 = l;
        l = null;
        _currToken = r1;
        if (r1 != r.i) goto _L4; else goto _L3
_L3:
        i1 = getIntValue();
_L6:
        return i1;
_L4:
        if (r1 == r.d)
        {
            k = k.a(i, j);
            return i1;
        }
        if (r1 == r.b)
        {
            k = k.b(i, j);
            return i1;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (nextToken() == r.i)
        {
            return getIntValue();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final long nextLongValue(long l1)
    {
        if (_currToken != r.f) goto _L2; else goto _L1
_L1:
        r r1;
        o = false;
        r1 = l;
        l = null;
        _currToken = r1;
        if (r1 != r.i) goto _L4; else goto _L3
_L3:
        l1 = getLongValue();
_L6:
        return l1;
_L4:
        if (r1 == r.d)
        {
            k = k.a(i, j);
            return l1;
        }
        if (r1 == r.b)
        {
            k = k.b(i, j);
            return l1;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (nextToken() == r.i)
        {
            return getLongValue();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final String nextTextValue()
    {
        if (_currToken != r.f) goto _L2; else goto _L1
_L1:
        r r3;
        o = false;
        r3 = l;
        l = null;
        _currToken = r3;
        if (r3 != r.h) goto _L4; else goto _L3
_L3:
        String s1;
        if (O)
        {
            O = false;
            c();
        }
        s1 = m.e();
_L6:
        return s1;
_L4:
        if (r3 == r.d)
        {
            k = k.a(i, j);
            return null;
        }
        r r4 = r.b;
        s1 = null;
        if (r3 == r4)
        {
            k = k.b(i, j);
            return null;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        r r1 = nextToken();
        r r2 = r.h;
        s1 = null;
        if (r1 == r2)
        {
            return getText();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final r nextToken()
    {
        int i1;
        boolean flag;
        z = 0;
        if (_currToken == r.f)
        {
            return h();
        }
        if (O)
        {
            m();
        }
        i1 = q();
        if (i1 < 0)
        {
            close();
            _currToken = null;
            return null;
        }
        h = (e + (long)c) - 1L;
        i = f;
        j = -1 + (c - g);
        q = null;
        if (i1 == 93)
        {
            if (!k.inArray())
            {
                a(i1, '}');
            }
            k = k.c();
            r r3 = r.e;
            _currToken = r3;
            return r3;
        }
        if (i1 == 125)
        {
            if (!k.inObject())
            {
                a(i1, ']');
            }
            k = k.c();
            r r2 = r.c;
            _currToken = r2;
            return r2;
        }
        if (k.d())
        {
            if (i1 != 44)
            {
                _reportUnexpectedChar(i1, (new StringBuilder("was expecting comma to separate ")).append(k.getTypeDesc()).append(" entries").toString());
            }
            i1 = p();
        }
        flag = k.inObject();
        if (flag)
        {
            String s1 = b(i1);
            k.a(s1);
            _currToken = r.f;
            int j1 = p();
            if (j1 != 58)
            {
                _reportUnexpectedChar(j1, "was expecting a colon to separate field name and value");
            }
            i1 = p();
        }
        i1;
        JVM INSTR lookupswitch 19: default 472
    //                   34: 492
    //                   45: 617
    //                   48: 617
    //                   49: 617
    //                   50: 617
    //                   51: 617
    //                   52: 617
    //                   53: 617
    //                   54: 617
    //                   55: 617
    //                   56: 617
    //                   57: 617
    //                   91: 504
    //                   93: 564
    //                   102: 587
    //                   110: 602
    //                   116: 572
    //                   123: 534
    //                   125: 564;
           goto _L1 _L2 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L5
_L3:
        break MISSING_BLOCK_LABEL_617;
_L1:
        r r1 = d(i1);
_L10:
        if (flag)
        {
            l = r1;
            return _currToken;
        } else
        {
            _currToken = r1;
            return r1;
        }
_L2:
        O = true;
        r1 = r.h;
          goto _L10
_L4:
        if (!flag)
        {
            k = k.a(i, j);
        }
        r1 = r.d;
          goto _L10
_L9:
        if (!flag)
        {
            k = k.b(i, j);
        }
        r1 = r.b;
          goto _L10
_L5:
        _reportUnexpectedChar(i1, "expected a value");
_L8:
        a("true", 1);
        r1 = r.k;
          goto _L10
_L6:
        a("false", 1);
        r1 = r.l;
          goto _L10
_L7:
        a("null", 1);
        r1 = r.m;
          goto _L10
        r1 = a(i1);
          goto _L10
    }

    public final int readBinaryValue(a a1, OutputStream outputstream)
    {
        byte abyte1[];
        if (!O || _currToken != r.h)
        {
            byte abyte0[] = getBinaryValue(a1);
            outputstream.write(abyte0);
            return abyte0.length;
        }
        abyte1 = a.g();
        int i1 = a(a1, outputstream, abyte1);
        a.c(abyte1);
        return i1;
        Exception exception;
        exception;
        a.c(abyte1);
        throw exception;
    }

    public final int releaseBuffered(Writer writer)
    {
        int i1 = d - c;
        if (i1 <= 0)
        {
            return 0;
        } else
        {
            int j1 = c;
            writer.write(K, j1, i1);
            return i1;
        }
    }

    public final void setCodec(s s1)
    {
        L = s1;
    }
}
