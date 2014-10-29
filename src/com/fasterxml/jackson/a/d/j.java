// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.d;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.a.c;
import com.fasterxml.jackson.a.c.b;
import com.fasterxml.jackson.a.e.f;
import com.fasterxml.jackson.a.g.d;
import com.fasterxml.jackson.a.g.o;
import com.fasterxml.jackson.a.n;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.u;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.fasterxml.jackson.a.d:
//            d, k

public final class j extends c
{

    private static final int Q[] = com.fasterxml.jackson.a.c.b.b();
    private static final int R[] = com.fasterxml.jackson.a.c.b.a();
    protected s J;
    protected final com.fasterxml.jackson.a.e.a K;
    protected int L[];
    protected boolean M;
    protected InputStream N;
    protected byte O[];
    protected boolean P;
    private int S;

    public j(com.fasterxml.jackson.a.c.d d1, int i1, InputStream inputstream, s s1, com.fasterxml.jackson.a.e.a a1, byte abyte0[], int j1, 
            int k1, boolean flag)
    {
        super(d1, i1);
        L = new int[16];
        M = false;
        N = inputstream;
        J = s1;
        K = a1;
        O = abyte0;
        c = j1;
        d = k1;
        P = flag;
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
        int i2;
        int j2;
        do
        {
            if (c >= d)
            {
                a();
            }
            byte abyte1[] = O;
            int l1 = c;
            c = l1 + 1;
            i2 = 0xff & abyte1[l1];
        } while (i2 <= 32);
        j2 = a1.b(i2);
        if (j2 >= 0) goto _L2; else goto _L1
_L1:
        if (i2 == 34) goto _L4; else goto _L3
_L3:
        j2 = a(a1, i2, 0);
        if (j2 < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
_L2:
        int k2 = j2;
        int l2;
        byte abyte2[];
        int i3;
        int j3;
        int k3;
        int l3;
        byte abyte3[];
        int i4;
        int j4;
        int k4;
        int l4;
        byte abyte4[];
        int i5;
        int j5;
        int k5;
        int l5;
        int i6;
        int j6;
        int k6;
        int l6;
        int i7;
        int j7;
        byte abyte5[];
        int k7;
        int l7;
        int i8;
        int j8;
        if (k1 > i1)
        {
            j1 += k1;
            outputstream.write(abyte0, 0, k1);
            l2 = 0;
        } else
        {
            l2 = k1;
        }
        if (c >= d)
        {
            a();
        }
        abyte2 = O;
        i3 = c;
        c = i3 + 1;
        j3 = 0xff & abyte2[i3];
        k3 = a1.b(j3);
        if (k3 < 0)
        {
            k3 = a(a1, j3, 1);
        }
        l3 = k3 | k2 << 6;
        if (c >= d)
        {
            a();
        }
        abyte3 = O;
        i4 = c;
        c = i4 + 1;
        j4 = 0xff & abyte3[i4];
        k4 = a1.b(j4);
        if (k4 >= 0) goto _L6; else goto _L5
_L5:
        if (k4 == -2) goto _L8; else goto _L7
_L7:
        if (j4 != 34 || a1.a()) goto _L10; else goto _L9
_L9:
        j8 = l3 >> 4;
        k1 = l2 + 1;
        abyte0[l2] = (byte)j8;
_L4:
        M = false;
        if (k1 > 0)
        {
            j1 += k1;
            outputstream.write(abyte0, 0, k1);
        }
        return j1;
_L10:
        k4 = a(a1, j4, 2);
_L8:
        if (k4 == -2)
        {
            if (c >= d)
            {
                a();
            }
            abyte5 = O;
            k7 = c;
            c = k7 + 1;
            l7 = 0xff & abyte5[k7];
            if (!a1.a(l7))
            {
                throw a(a1, l7, 3, (new StringBuilder("expected padding character '")).append(a1.b()).append("'").toString());
            }
            i8 = l3 >> 4;
            k1 = l2 + 1;
            abyte0[l2] = (byte)i8;
            continue; /* Loop/switch isn't completed */
        }
_L6:
        l4 = k4 | l3 << 6;
        if (c >= d)
        {
            a();
        }
        abyte4 = O;
        i5 = c;
        c = i5 + 1;
        j5 = 0xff & abyte4[i5];
        k5 = a1.b(j5);
        if (k5 >= 0)
        {
            break MISSING_BLOCK_LABEL_645;
        }
        if (k5 == -2)
        {
            break MISSING_BLOCK_LABEL_600;
        }
        if (j5 != 34 || a1.a())
        {
            break; /* Loop/switch isn't completed */
        }
        i7 = l4 >> 2;
        j7 = l2 + 1;
        abyte0[l2] = (byte)(i7 >> 8);
        k1 = j7 + 1;
        abyte0[j7] = (byte)i7;
        if (true) goto _L4; else goto _L11
_L11:
        k5 = a(a1, j5, 3);
        if (k5 == -2)
        {
            k6 = l4 >> 2;
            l6 = l2 + 1;
            abyte0[l2] = (byte)(k6 >> 8);
            k1 = l6 + 1;
            abyte0[l6] = (byte)k6;
            continue; /* Loop/switch isn't completed */
        }
        l5 = k5 | l4 << 6;
        i6 = l2 + 1;
        abyte0[l2] = (byte)(l5 >> 16);
        j6 = i6 + 1;
        abyte0[i6] = (byte)(l5 >> 8);
        k1 = j6 + 1;
        abyte0[j6] = (byte)l5;
        if (true) goto _L13; else goto _L12
_L12:
    }

    private f a(int i1, int j1)
    {
        f f1 = K.a(i1);
        if (f1 != null)
        {
            return f1;
        } else
        {
            L[0] = i1;
            return a(L, 1, j1);
        }
    }

    private f a(int i1, int j1, int k1)
    {
        return a(L, 0, i1, j1, k1);
    }

    private f a(int i1, int j1, int k1, int l1)
    {
        L[0] = i1;
        return a(L, 1, j1, k1, l1);
    }

    private f a(int i1, int ai[])
    {
        byte abyte0[] = O;
        int j1 = c;
        c = j1 + 1;
        int k1 = 0xff & abyte0[j1];
        if (ai[k1] != 0)
        {
            if (k1 == 34)
            {
                return b(S, i1, 1);
            } else
            {
                return a(S, i1, k1, 1);
            }
        }
        int l1 = k1 | i1 << 8;
        byte abyte1[] = O;
        int i2 = c;
        c = i2 + 1;
        int j2 = 0xff & abyte1[i2];
        if (ai[j2] != 0)
        {
            if (j2 == 34)
            {
                return b(S, l1, 2);
            } else
            {
                return a(S, l1, j2, 2);
            }
        }
        int k2 = j2 | l1 << 8;
        byte abyte2[] = O;
        int l2 = c;
        c = l2 + 1;
        int i3 = 0xff & abyte2[l2];
        if (ai[i3] != 0)
        {
            if (i3 == 34)
            {
                return b(S, k2, 3);
            } else
            {
                return a(S, k2, i3, 3);
            }
        }
        int j3 = i3 | k2 << 8;
        byte abyte3[] = O;
        int k3 = c;
        c = k3 + 1;
        int l3 = 0xff & abyte3[k3];
        if (ai[l3] != 0)
        {
            if (l3 == 34)
            {
                return b(S, j3, 4);
            } else
            {
                return a(S, j3, l3, 4);
            }
        } else
        {
            L[0] = S;
            L[1] = j3;
            return d(l3);
        }
    }

    private f a(int ai[], int i1, int j1)
    {
        int l1;
        char ac[];
        int i2;
        int k2;
        int l2;
        char ac1[];
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int k1 = j1 + (-4 + (i1 << 2));
        int j2;
        int j4;
        int k4;
        int l4;
        int i5;
        int j5;
        int k5;
        if (j1 < 4)
        {
            l1 = ai[i1 - 1];
            ai[i1 - 1] = l1 << (4 - j1 << 3);
        } else
        {
            l1 = 0;
        }
        ac = m.j();
        i2 = 0;
        j2 = 0;
        if (j2 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        k2 = 0xff & ai[j2 >> 2] >> (3 - (j2 & 3) << 3);
        l2 = j2 + 1;
        if (k2 <= 127)
        {
            break MISSING_BLOCK_LABEL_527;
        }
        if ((k2 & 0xe0) == 192)
        {
            l3 = k2 & 0x1f;
            i4 = 1;
        } else
        if ((k2 & 0xf0) == 224)
        {
            l3 = k2 & 0xf;
            i4 = 2;
        } else
        if ((k2 & 0xf8) == 240)
        {
            l3 = k2 & 7;
            i4 = 3;
        } else
        {
            m(k2);
            l3 = 1;
            i4 = l3;
        }
        if (l2 + i4 > k1)
        {
            _reportInvalidEOF(" in field name");
        }
        j4 = ai[l2 >> 2] >> (3 - (l2 & 3) << 3);
        l2++;
        if ((j4 & 0xc0) != 128)
        {
            n(j4);
        }
        k2 = l3 << 6 | j4 & 0x3f;
        if (i4 > 1)
        {
            j5 = ai[l2 >> 2] >> (3 - (l2 & 3) << 3);
            l2++;
            if ((j5 & 0xc0) != 128)
            {
                n(j5);
            }
            k2 = k2 << 6 | j5 & 0x3f;
            if (i4 > 2)
            {
                k5 = ai[l2 >> 2] >> (3 - (l2 & 3) << 3);
                l2++;
                if ((k5 & 0xc0) != 128)
                {
                    n(k5 & 0xff);
                }
                k2 = k2 << 6 | k5 & 0x3f;
            }
        }
        if (i4 <= 2)
        {
            break MISSING_BLOCK_LABEL_527;
        }
        k4 = k2 - 0x10000;
        if (i2 >= ac.length)
        {
            ac = m.m();
        }
        l4 = i2 + 1;
        ac[i2] = (char)(55296 + (k4 >> 10));
        i5 = 0xdc00 | k4 & 0x3ff;
        j3 = l2;
        k3 = l4;
        ac1 = ac;
        i3 = i5;
_L4:
        if (k3 >= ac1.length)
        {
            ac1 = m.m();
        }
        i2 = k3 + 1;
        ac1[k3] = (char)i3;
        j2 = j3;
        ac = ac1;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_50;
_L1:
        String s1 = new String(ac, 0, i2);
        if (j1 < 4)
        {
            ai[i1 - 1] = l1;
        }
        return K.a(s1, ai, i1);
        ac1 = ac;
        i3 = k2;
        j3 = l2;
        k3 = i2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private f a(int ai[], int i1, int j1, int k1)
    {
        if (i1 >= ai.length)
        {
            ai = a(ai, ai.length);
            L = ai;
        }
        int l1 = i1 + 1;
        ai[i1] = j1;
        f f1 = K.a(ai, l1);
        if (f1 == null)
        {
            f1 = a(ai, l1, k1);
        }
        return f1;
    }

    private f a(int ai[], int i1, int j1, int k1, int l1)
    {
        int ai1[] = R;
_L2:
        int i2;
        int ai2[];
        if (ai1[k1] == 0)
        {
            break MISSING_BLOCK_LABEL_495;
        }
        if (k1 == 34)
        {
            break; /* Loop/switch isn't completed */
        }
        byte abyte0[];
        int k2;
        int i3;
        int ai3[];
        int k4;
        int l4;
        int ai5[];
        if (k1 != 92)
        {
            _throwUnquotedSpace(k1, "name");
        } else
        {
            k1 = g();
        }
        if (k1 <= 127)
        {
            break MISSING_BLOCK_LABEL_495;
        }
        if (l1 >= 4)
        {
            if (i1 >= ai.length)
            {
                ai = a(ai, ai.length);
                L = ai;
            }
            i3 = i1 + 1;
            ai[i1] = j1;
            l1 = 0;
            j1 = 0;
            ai3 = ai;
        } else
        {
            i3 = i1;
            ai3 = ai;
        }
        if (k1 < 2048)
        {
            int k5 = j1 << 8 | (0xc0 | k1 >> 6);
            int l5 = l1 + 1;
            k4 = k5;
            ai5 = ai3;
            l4 = l5;
        } else
        {
            int j3 = j1 << 8 | (0xe0 | k1 >> 12);
            int k3 = l1 + 1;
            int j2;
            f f1;
            int l2;
            int l3;
            int i4;
            int ai4[];
            int j4;
            int i5;
            if (k3 >= 4)
            {
                if (i3 >= ai3.length)
                {
                    ai3 = a(ai3, ai3.length);
                    L = ai3;
                }
                int j5 = i3 + 1;
                ai3[i3] = j3;
                i4 = j5;
                ai4 = ai3;
                j4 = 0;
                l3 = 0;
            } else
            {
                l3 = j3;
                i4 = i3;
                ai4 = ai3;
                j4 = k3;
            }
            k4 = l3 << 8 | (0x80 | 0x3f & k1 >> 6);
            l4 = j4 + 1;
            i5 = i4;
            ai5 = ai4;
            i3 = i5;
        }
        j1 = 0x80 | k1 & 0x3f;
        l1 = l4;
        i1 = i3;
        ai2 = ai5;
        i2 = k4;
_L3:
        if (l1 < 4)
        {
            l1++;
            j1 |= i2 << 8;
            ai = ai2;
        } else
        {
            if (i1 >= ai2.length)
            {
                ai2 = a(ai2, ai2.length);
                L = ai2;
            }
            j2 = i1 + 1;
            ai2[i1] = i2;
            l1 = 1;
            i1 = j2;
            ai = ai2;
        }
        if (c >= d && !b())
        {
            _reportInvalidEOF(" in field name");
        }
        abyte0 = O;
        k2 = c;
        c = k2 + 1;
        k1 = 0xff & abyte0[k2];
        if (true) goto _L2; else goto _L1
_L1:
        if (l1 > 0)
        {
            if (i1 >= ai.length)
            {
                ai = a(ai, ai.length);
                L = ai;
            }
            l2 = i1 + 1;
            ai[i1] = j1;
            i1 = l2;
        }
        f1 = K.a(ai, i1);
        if (f1 == null)
        {
            f1 = a(ai, i1, l1);
        }
        return f1;
        i2 = j1;
        ai2 = ai;
        j1 = k1;
          goto _L3
    }

    private r a(int i1)
    {
        if (i1 == 34)
        {
            M = true;
            r r8 = r.h;
            _currToken = r8;
            return r8;
        }
        switch (i1)
        {
        default:
            r r7 = f(i1);
            _currToken = r7;
            return r7;

        case 91: // '['
            k = k.a(i, j);
            r r6 = r.d;
            _currToken = r6;
            return r6;

        case 123: // '{'
            k = k.b(i, j);
            r r5 = r.b;
            _currToken = r5;
            return r5;

        case 93: // ']'
        case 125: // '}'
            _reportUnexpectedChar(i1, "expected a value");
            // fall through

        case 116: // 't'
            a("true", 1);
            r r4 = r.k;
            _currToken = r4;
            return r4;

        case 102: // 'f'
            a("false", 1);
            r r3 = r.l;
            _currToken = r3;
            return r3;

        case 110: // 'n'
            a("null", 1);
            r r2 = r.m;
            _currToken = r2;
            return r2;

        case 45: // '-'
        case 48: // '0'
        case 49: // '1'
        case 50: // '2'
        case 51: // '3'
        case 52: // '4'
        case 53: // '5'
        case 54: // '6'
        case 55: // '7'
        case 56: // '8'
        case 57: // '9'
            r r1 = b(i1);
            _currToken = r1;
            return r1;
        }
    }

    private r a(int i1, boolean flag)
    {
        int j1;
label0:
        {
            j1 = i1;
            byte byte0;
            do
            {
                if (j1 != 73)
                {
                    break label0;
                }
                if (c >= d && !b())
                {
                    _reportInvalidEOFInValue();
                }
                byte abyte0[] = O;
                int k1 = c;
                c = k1 + 1;
                byte0 = abyte0[k1];
                String s1;
                if (byte0 == 78)
                {
                    if (flag)
                    {
                        s1 = "-INF";
                    } else
                    {
                        s1 = "+INF";
                    }
                } else
                {
                    if (byte0 != 110)
                    {
                        break;
                    }
                    if (flag)
                    {
                        s1 = "-Infinity";
                    } else
                    {
                        s1 = "+Infinity";
                    }
                }
                a(s1, 3);
                if (isEnabled(n.h))
                {
                    double d1;
                    if (flag)
                    {
                        d1 = (-1.0D / 0.0D);
                    } else
                    {
                        d1 = (1.0D / 0.0D);
                    }
                    return a(s1, d1);
                }
                _reportError((new StringBuilder("Non-standard token '")).append(s1).append("': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow").toString());
                j1 = byte0;
            } while (true);
            j1 = byte0;
        }
        a(j1, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    private r a(char ac[], int i1, int j1, boolean flag, int k1)
    {
        int l1;
        int l5;
        l1 = 0;
        if (j1 != 46)
        {
            break MISSING_BLOCK_LABEL_566;
        }
        l5 = i1 + 1;
        ac[i1] = (char)j1;
_L12:
        if (c < d || b()) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L10:
        char ac1[];
        int i2;
        int j2;
        if (l1 == 0)
        {
            a(j1, "Decimal point not followed by a digit");
        }
        j2 = l1;
        i2 = l5;
        ac1 = ac;
_L15:
        if (j1 != 101 && j1 != 69) goto _L4; else goto _L3
_L3:
        boolean flag2;
        int l4;
        int i5;
        if (i2 >= ac1.length)
        {
            ac1 = m.l();
            i2 = 0;
        }
        int k2 = i2 + 1;
        ac1[i2] = (char)j1;
        if (c >= d)
        {
            a();
        }
        byte abyte0[] = O;
        int l2 = c;
        c = l2 + 1;
        int i3 = 0xff & abyte0[l2];
        int i4;
        int j4;
        if (i3 == 45 || i3 == 43)
        {
            int j3;
            int k3;
            byte abyte1[];
            int l3;
            int k4;
            int j5;
            byte abyte2[];
            int k5;
            byte abyte3[];
            int i6;
            if (k2 >= ac1.length)
            {
                ac1 = m.l();
                j3 = 0;
            } else
            {
                j3 = k2;
            }
            k3 = j3 + 1;
            ac1[j3] = (char)i3;
            if (c >= d)
            {
                a();
            }
            abyte1 = O;
            l3 = c;
            c = l3 + 1;
            i3 = 0xff & abyte1[l3];
            i4 = k3;
            j4 = 0;
        } else
        {
            i4 = k2;
            j4 = 0;
        }
        if (i3 > 57 || i3 < 48) goto _L6; else goto _L5
_L5:
        j4++;
        if (i4 >= ac1.length)
        {
            ac1 = m.l();
            i4 = 0;
        }
        j5 = i4 + 1;
        ac1[i4] = (char)i3;
        if (c < d || b()) goto _L8; else goto _L7
_L7:
        i5 = j4;
        flag2 = true;
        l4 = j5;
_L13:
        if (i5 == 0)
        {
            a(i3, "Exponent indicator not followed by a digit");
        }
_L14:
        if (!flag2)
        {
            c = -1 + c;
        }
        m.a(l4);
        return b(flag, k1, j2, i5);
_L2:
        abyte3 = O;
        i6 = c;
        c = i6 + 1;
        j1 = 0xff & abyte3[i6];
        flag1 = false;
        if (j1 < 48) goto _L10; else goto _L9
_L9:
        flag1 = false;
        if (j1 > 57) goto _L10; else goto _L11
_L11:
        l1++;
        int j6;
        if (l5 >= ac.length)
        {
            ac = m.l();
            j6 = 0;
        } else
        {
            j6 = l5;
        }
        l5 = j6 + 1;
        ac[j6] = (char)j1;
          goto _L12
_L8:
        abyte2 = O;
        k5 = c;
        c = k5 + 1;
        i3 = 0xff & abyte2[k5];
        i4 = j5;
        break MISSING_BLOCK_LABEL_256;
_L6:
        flag2 = flag1;
        k4 = j4;
        l4 = i4;
        i5 = k4;
          goto _L13
_L4:
        flag2 = flag1;
        l4 = i2;
        i5 = 0;
          goto _L14
        ac1 = ac;
        i2 = i1;
        flag1 = false;
        j2 = 0;
          goto _L15
    }

    private r a(char ac[], int i1, boolean flag, int j1)
    {
        int k1 = j1;
        int l1 = i1;
        char ac1[] = ac;
        do
        {
            if (c >= d && !b())
            {
                m.a(l1);
                return a(flag, k1);
            }
            byte abyte0[] = O;
            int i2 = c;
            c = i2 + 1;
            int j2 = 0xff & abyte0[i2];
            int k2;
            if (j2 > 57 || j2 < 48)
            {
                if (j2 == 46 || j2 == 101 || j2 == 69)
                {
                    return a(ac1, l1, j2, flag, k1);
                } else
                {
                    c = -1 + c;
                    m.a(l1);
                    return a(flag, k1);
                }
            }
            if (l1 >= ac1.length)
            {
                ac1 = m.l();
                k2 = 0;
            } else
            {
                k2 = l1;
            }
            l1 = k2 + 1;
            ac1[k2] = (char)j2;
            k1++;
        } while (true);
    }

    private String a(r r1)
    {
        if (r1 == null)
        {
            return null;
        }
        switch (com.fasterxml.jackson.a.d.k.a[r1.ordinal()])
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
            if (c >= d && !b() || O[c] != s1.charAt(i1))
            {
                b(s1.substring(0, i1));
            }
            c = 1 + c;
        } while (++i1 < j1);
        int k1;
        if (c < d || b())
        {
            if ((k1 = 0xff & O[c]) >= 48 && k1 != 93 && k1 != 125 && Character.isJavaIdentifierPart((char)g(k1)))
            {
                b(s1.substring(0, i1));
                return;
            }
        }
    }

    private void a(String s1, String s2)
    {
        StringBuilder stringbuilder = new StringBuilder(s1);
        do
        {
            if (c >= d && !b())
            {
                break;
            }
            byte abyte0[] = O;
            int i1 = c;
            c = i1 + 1;
            char c1 = (char)g(abyte0[i1]);
            if (!Character.isJavaIdentifierPart(c1))
            {
                break;
            }
            stringbuilder.append(c1);
        } while (true);
        _reportError((new StringBuilder("Unrecognized token '")).append(stringbuilder.toString()).append("': was expecting ").append(s2).toString());
    }

    private void a(char ac[], int i1)
    {
        int ai[] = Q;
        byte abyte0[] = O;
label0:
        do
        {
label1:
            {
label2:
                {
label3:
                    {
label4:
                        {
label5:
                            {
                                int j1 = c;
                                if (j1 >= d)
                                {
                                    a();
                                    j1 = c;
                                }
                                if (i1 >= ac.length)
                                {
                                    ac = m.l();
                                    i1 = 0;
                                }
                                int k1 = Math.min(d, j1 + (ac.length - i1));
                                do
                                {
                                    if (j1 >= k1)
                                    {
                                        break;
                                    }
                                    int l1 = j1 + 1;
                                    int i2 = 0xff & abyte0[j1];
                                    if (ai[i2] != 0)
                                    {
                                        int j3;
                                        {
                                            c = l1;
                                            if (i2 == 34)
                                            {
                                                break label1;
                                            }
                                            int j2;
                                            int k2;
                                            int l2;
                                            int i3;
                                            switch (ai[i2])
                                            {
                                            default:
                                                if (i2 < 32)
                                                {
                                                    _throwUnquotedSpace(i2, "string value");
                                                } else
                                                {
                                                    l(i2);
                                                }
                                                break;

                                            case 1: // '\001'
                                                break label5;

                                            case 2: // '\002'
                                                break label4;

                                            case 3: // '\003'
                                                break label3;

                                            case 4: // '\004'
                                                break label2;
                                            }
                                        }
                                        if (i1 >= ac.length)
                                        {
                                            ac = m.l();
                                            j3 = 0;
                                        } else
                                        {
                                            j3 = i1;
                                        }
                                        i1 = j3 + 1;
                                        ac[j3] = (char)i2;
                                        continue label0;
                                    }
                                    j2 = i1 + 1;
                                    ac[i1] = (char)i2;
                                    j1 = l1;
                                    i1 = j2;
                                } while (true);
                                c = j1;
                                continue;
                            }
                            i2 = g();
                            break MISSING_BLOCK_LABEL_160;
                        }
                        i2 = h(i2);
                        break MISSING_BLOCK_LABEL_160;
                    }
                    if (d - c >= 2)
                    {
                        i2 = j(i2);
                    } else
                    {
                        i2 = i(i2);
                    }
                    break MISSING_BLOCK_LABEL_160;
                }
                k2 = k(i2);
                l2 = i1 + 1;
                ac[i1] = (char)(0xd800 | k2 >> 10);
                if (l2 >= ac.length)
                {
                    ac = m.l();
                    l2 = 0;
                }
                i3 = 0xdc00 | k2 & 0x3ff;
                i1 = l2;
                i2 = i3;
                break MISSING_BLOCK_LABEL_160;
            }
            m.a(i1);
            return;
        } while (true);
    }

    private boolean a(int i1, u u1)
    {
        boolean flag;
        int k1;
        String s1 = c(i1).a();
        k.a(s1);
        flag = s1.equals(u1.a());
        _currToken = r.f;
        int j1 = o();
        if (j1 != 58)
        {
            _reportUnexpectedChar(j1, "was expecting a colon to separate field name and value");
        }
        k1 = o();
        if (k1 == 34)
        {
            M = true;
            l = r.h;
            return flag;
        }
        k1;
        JVM INSTR lookupswitch 18: default 244
    //                   45: 330
    //                   48: 330
    //                   49: 330
    //                   50: 330
    //                   51: 330
    //                   52: 330
    //                   53: 330
    //                   54: 330
    //                   55: 330
    //                   56: 330
    //                   57: 330
    //                   91: 261
    //                   93: 277
    //                   102: 300
    //                   110: 315
    //                   116: 285
    //                   123: 269
    //                   125: 277;
           goto _L1 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L4
_L1:
        r r1 = f(k1);
_L10:
        l = r1;
        return flag;
_L3:
        r1 = r.d;
        continue; /* Loop/switch isn't completed */
_L8:
        r1 = r.b;
        continue; /* Loop/switch isn't completed */
_L4:
        _reportUnexpectedChar(k1, "expected a value");
_L7:
        a("true", 1);
        r1 = r.k;
        continue; /* Loop/switch isn't completed */
_L5:
        a("false", 1);
        r1 = r.l;
        continue; /* Loop/switch isn't completed */
_L6:
        a("null", 1);
        r1 = r.m;
        continue; /* Loop/switch isn't completed */
_L2:
        r1 = b(k1);
        if (true) goto _L10; else goto _L9
_L9:
    }

    private byte[] a(a a1)
    {
        d d1 = f();
        do
        {
            int j1;
            do
            {
                if (c >= d)
                {
                    a();
                }
                byte abyte0[] = O;
                int i1 = c;
                c = i1 + 1;
                j1 = 0xff & abyte0[i1];
            } while (j1 <= 32);
            int k1 = a1.b(j1);
            if (k1 < 0)
            {
                if (j1 == 34)
                {
                    return d1.c();
                }
                k1 = a(a1, j1, 0);
                if (k1 < 0)
                {
                    continue;
                }
            }
            if (c >= d)
            {
                a();
            }
            byte abyte1[] = O;
            int l1 = c;
            c = l1 + 1;
            int i2 = 0xff & abyte1[l1];
            int j2 = a1.b(i2);
            if (j2 < 0)
            {
                j2 = a(a1, i2, 1);
            }
            int k2 = j2 | k1 << 6;
            if (c >= d)
            {
                a();
            }
            byte abyte2[] = O;
            int l2 = c;
            c = l2 + 1;
            int i3 = 0xff & abyte2[l2];
            int j3 = a1.b(i3);
            if (j3 < 0)
            {
                if (j3 != -2)
                {
                    if (i3 == 34 && !a1.a())
                    {
                        d1.a(k2 >> 4);
                        return d1.c();
                    }
                    j3 = a(a1, i3, 2);
                }
                if (j3 == -2)
                {
                    if (c >= d)
                    {
                        a();
                    }
                    byte abyte4[] = O;
                    int k4 = c;
                    c = k4 + 1;
                    int l4 = 0xff & abyte4[k4];
                    if (!a1.a(l4))
                    {
                        throw a(a1, l4, 3, (new StringBuilder("expected padding character '")).append(a1.b()).append("'").toString());
                    }
                    d1.a(k2 >> 4);
                    continue;
                }
            }
            int k3 = j3 | k2 << 6;
            if (c >= d)
            {
                a();
            }
            byte abyte3[] = O;
            int l3 = c;
            c = l3 + 1;
            int i4 = 0xff & abyte3[l3];
            int j4 = a1.b(i4);
            if (j4 < 0)
            {
                if (j4 != -2)
                {
                    if (i4 == 34 && !a1.a())
                    {
                        d1.b(k3 >> 2);
                        return d1.c();
                    }
                    j4 = a(a1, i4, 3);
                }
                if (j4 == -2)
                {
                    d1.b(k3 >> 2);
                    continue;
                }
            }
            d1.c(j4 | k3 << 6);
        } while (true);
    }

    private static int[] a(int ai[], int i1)
    {
        if (ai == null)
        {
            return new int[i1];
        } else
        {
            int j1 = ai.length;
            int ai1[] = new int[j1 + i1];
            System.arraycopy(ai, 0, ai1, 0, j1);
            return ai1;
        }
    }

    private f b(int i1, int j1, int k1)
    {
        f f1 = K.a(i1, j1);
        if (f1 != null)
        {
            return f1;
        } else
        {
            L[0] = i1;
            L[1] = j1;
            return a(L, 2, k1);
        }
    }

    private r b(int i1)
    {
        boolean flag = true;
        char ac[] = m.j();
        boolean flag1;
        int j1;
        if (i1 == 45)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        int k1;
        int l1;
        int i2;
        byte abyte0[];
        int j2;
        int k2;
        int l2;
        if (flag1)
        {
            ac[0] = '-';
            if (c >= d)
            {
                a();
            }
            byte abyte1[] = O;
            int i3 = c;
            c = i3 + 1;
            j1 = 0xff & abyte1[i3];
            if (j1 < 48 || j1 > 57)
            {
                return a(j1, flag);
            }
            k1 = ((flag) ? 1 : 0);
        } else
        {
            j1 = i1;
            k1 = 0;
        }
        if (j1 == 48)
        {
            j1 = j();
        }
        l1 = k1 + 1;
        ac[k1] = (char)j1;
        i2 = c + ac.length;
        if (i2 > d)
        {
            i2 = d;
        }
        if (c >= i2)
        {
            return a(ac, l1, flag1, flag);
        }
        abyte0 = O;
        j2 = c;
        c = j2 + 1;
        k2 = 0xff & abyte0[j2];
        if (k2 >= 48 && k2 <= 57)
        {
            flag++;
            if (l1 >= ac.length)
            {
                ac = m.l();
                l2 = 0;
            } else
            {
                l2 = l1;
            }
            l1 = l2 + 1;
            ac[l2] = (char)k2;
            if (false)
            {
                break MISSING_BLOCK_LABEL_258;
            } else
            {
                break MISSING_BLOCK_LABEL_156;
            }
        }
        if (k2 == 46 || k2 == 101 || k2 == 69)
        {
            return a(ac, l1, k2, flag1, flag);
        } else
        {
            c = -1 + c;
            m.a(l1);
            return a(flag1, flag);
        }
    }

    private void b(int i1, int j1)
    {
        c = j1;
        n(i1);
    }

    private void b(String s1)
    {
        a(s1, "'null', 'true', 'false' or NaN");
    }

    private f c(int i1)
    {
        if (i1 != 34)
        {
            return e(i1);
        }
        if (9 + c > d)
        {
            return k();
        }
        byte abyte0[] = O;
        int ai[] = R;
        int j1 = c;
        c = j1 + 1;
        int k1 = 0xff & abyte0[j1];
        if (ai[k1] == 0)
        {
            int l1 = c;
            c = l1 + 1;
            int i2 = 0xff & abyte0[l1];
            if (ai[i2] == 0)
            {
                int j2 = i2 | k1 << 8;
                int k2 = c;
                c = k2 + 1;
                int l2 = 0xff & abyte0[k2];
                if (ai[l2] == 0)
                {
                    int i3 = l2 | j2 << 8;
                    int j3 = c;
                    c = j3 + 1;
                    int k3 = 0xff & abyte0[j3];
                    if (ai[k3] == 0)
                    {
                        int l3 = k3 | i3 << 8;
                        int i4 = c;
                        c = i4 + 1;
                        int j4 = 0xff & abyte0[i4];
                        if (ai[j4] == 0)
                        {
                            S = l3;
                            return a(j4, ai);
                        }
                        if (j4 == 34)
                        {
                            return a(l3, 4);
                        } else
                        {
                            return a(l3, j4, 4);
                        }
                    }
                    if (k3 == 34)
                    {
                        return a(i3, 3);
                    } else
                    {
                        return a(i3, k3, 3);
                    }
                }
                if (l2 == 34)
                {
                    return a(j2, 2);
                } else
                {
                    return a(j2, l2, 2);
                }
            }
            if (i2 == 34)
            {
                return a(k1, 1);
            } else
            {
                return a(k1, i2, 1);
            }
        }
        if (k1 == 34)
        {
            return com.fasterxml.jackson.a.e.a.c();
        } else
        {
            return a(0, k1, 0);
        }
    }

    private f d(int i1)
    {
        int ai[] = R;
        int j1 = 2;
        int k1 = i1;
        do
        {
            if (d - c < 4)
            {
                return a(L, j1, 0, k1, 0);
            }
            byte abyte0[] = O;
            int l1 = c;
            c = l1 + 1;
            int i2 = 0xff & abyte0[l1];
            if (ai[i2] != 0)
            {
                if (i2 == 34)
                {
                    return a(L, j1, k1, 1);
                } else
                {
                    return a(L, j1, k1, i2, 1);
                }
            }
            int j2 = i2 | k1 << 8;
            byte abyte1[] = O;
            int k2 = c;
            c = k2 + 1;
            int l2 = 0xff & abyte1[k2];
            if (ai[l2] != 0)
            {
                if (l2 == 34)
                {
                    return a(L, j1, j2, 2);
                } else
                {
                    return a(L, j1, j2, l2, 2);
                }
            }
            int i3 = l2 | j2 << 8;
            byte abyte2[] = O;
            int j3 = c;
            c = j3 + 1;
            int k3 = 0xff & abyte2[j3];
            if (ai[k3] != 0)
            {
                if (k3 == 34)
                {
                    return a(L, j1, i3, 3);
                } else
                {
                    return a(L, j1, i3, k3, 3);
                }
            }
            int l3 = k3 | i3 << 8;
            byte abyte3[] = O;
            int i4 = c;
            c = i4 + 1;
            k1 = 0xff & abyte3[i4];
            if (ai[k1] != 0)
            {
                if (k1 == 34)
                {
                    return a(L, j1, l3, 4);
                } else
                {
                    return a(L, j1, l3, k1, 4);
                }
            }
            if (j1 >= L.length)
            {
                L = a(L, j1);
            }
            int ai1[] = L;
            int j4 = j1 + 1;
            ai1[j1] = l3;
            j1 = j4;
        } while (true);
    }

    private f e(int i1)
    {
        if (i1 == 39 && isEnabled(n.d))
        {
            return l();
        }
        if (!isEnabled(n.c))
        {
            _reportUnexpectedChar(i1, "was expecting double-quote to start field name");
        }
        int ai[] = com.fasterxml.jackson.a.c.b.d();
        if (ai[i1] != 0)
        {
            _reportUnexpectedChar(i1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int ai1[] = L;
        int j1 = 0;
        int k1 = 0;
        int l1 = i1;
        int i2 = 0;
        int ai2[] = ai1;
        do
        {
            int ai3[];
            int k2;
            int l2;
            int i3;
            int j3;
            if (j1 < 4)
            {
                int l3 = j1 + 1;
                l2 = l1 | k1 << 8;
                i3 = i2;
                ai3 = ai2;
                k2 = l3;
            } else
            {
                if (i2 >= ai2.length)
                {
                    ai2 = a(ai2, ai2.length);
                    L = ai2;
                }
                int j2 = i2 + 1;
                ai2[i2] = k1;
                ai3 = ai2;
                k2 = 1;
                l2 = l1;
                i3 = j2;
            }
            if (c >= d && !b())
            {
                _reportInvalidEOF(" in field name");
            }
            j3 = 0xff & O[c];
            if (ai[j3] == 0)
            {
                c = 1 + c;
                k1 = l2;
                j1 = k2;
                ai2 = ai3;
                i2 = i3;
                l1 = j3;
            } else
            {
                if (k2 > 0)
                {
                    if (i3 >= ai3.length)
                    {
                        ai3 = a(ai3, ai3.length);
                        L = ai3;
                    }
                    int k3 = i3 + 1;
                    ai3[i3] = l2;
                    i3 = k3;
                }
                f f1 = K.a(ai3, i3);
                if (f1 == null)
                {
                    return a(ai3, i3, k2);
                }
                return f1;
            }
        } while (true);
    }

    private r f(int i1)
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
            return n();
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
        byte abyte0[] = O;
        int j1 = c;
        c = j1 + 1;
        return a(0xff & abyte0[j1], false);
    }

    private int g(int i1)
    {
        if (i1 < 0)
        {
            int j1;
            int k1;
            if ((i1 & 0xe0) == 192)
            {
                i1 &= 0x1f;
                j1 = 1;
            } else
            if ((i1 & 0xf0) == 224)
            {
                i1 &= 0xf;
                j1 = 2;
            } else
            if ((i1 & 0xf8) == 240)
            {
                i1 &= 7;
                j1 = 3;
            } else
            {
                m(i1 & 0xff);
                j1 = 1;
            }
            k1 = z();
            if ((k1 & 0xc0) != 128)
            {
                n(k1 & 0xff);
            }
            i1 = i1 << 6 | k1 & 0x3f;
            if (j1 > 1)
            {
                int l1 = z();
                if ((l1 & 0xc0) != 128)
                {
                    n(l1 & 0xff);
                }
                i1 = i1 << 6 | l1 & 0x3f;
                if (j1 > 2)
                {
                    int i2 = z();
                    if ((i2 & 0xc0) != 128)
                    {
                        n(i2 & 0xff);
                    }
                    i1 = i1 << 6 | i2 & 0x3f;
                }
            }
        }
        return i1;
    }

    private int h(int i1)
    {
        if (c >= d)
        {
            a();
        }
        byte abyte0[] = O;
        int j1 = c;
        c = j1 + 1;
        byte byte0 = abyte0[j1];
        if ((byte0 & 0xc0) != 128)
        {
            b(byte0 & 0xff, c);
        }
        return (i1 & 0x1f) << 6 | byte0 & 0x3f;
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

    private int i(int i1)
    {
        if (c >= d)
        {
            a();
        }
        int j1 = i1 & 0xf;
        byte abyte0[] = O;
        int k1 = c;
        c = k1 + 1;
        byte byte0 = abyte0[k1];
        if ((byte0 & 0xc0) != 128)
        {
            b(byte0 & 0xff, c);
        }
        int l1 = j1 << 6 | byte0 & 0x3f;
        if (c >= d)
        {
            a();
        }
        byte abyte1[] = O;
        int i2 = c;
        c = i2 + 1;
        byte byte1 = abyte1[i2];
        if ((byte1 & 0xc0) != 128)
        {
            b(byte1 & 0xff, c);
        }
        return l1 << 6 | byte1 & 0x3f;
    }

    private void i()
    {
        int i1;
        if (c < -1 + d && O[c] == 58)
        {
            byte abyte0[] = O;
            int j1 = 1 + c;
            c = j1;
            byte byte0 = abyte0[j1];
            c = 1 + c;
            if (byte0 == 34)
            {
                M = true;
                l = r.h;
                return;
            }
            if (byte0 == 123)
            {
                l = r.b;
                return;
            }
            if (byte0 == 91)
            {
                l = r.d;
                return;
            }
            i1 = byte0 & 0xff;
            if (i1 <= 32 || i1 == 47)
            {
                c = -1 + c;
                i1 = o();
            }
        } else
        {
            i1 = q();
        }
        switch (i1)
        {
        default:
            l = f(i1);
            return;

        case 34: // '"'
            M = true;
            l = r.h;
            return;

        case 91: // '['
            l = r.d;
            return;

        case 123: // '{'
            l = r.b;
            return;

        case 93: // ']'
        case 125: // '}'
            _reportUnexpectedChar(i1, "expected a value");
            // fall through

        case 116: // 't'
            a("true", 1);
            l = r.k;
            return;

        case 102: // 'f'
            a("false", 1);
            l = r.l;
            return;

        case 110: // 'n'
            a("null", 1);
            l = r.m;
            return;

        case 45: // '-'
        case 48: // '0'
        case 49: // '1'
        case 50: // '2'
        case 51: // '3'
        case 52: // '4'
        case 53: // '5'
        case 54: // '6'
        case 55: // '7'
        case 56: // '8'
        case 57: // '9'
            l = b(i1);
            return;
        }
    }

    private int j()
    {
        if (c < d || b()) goto _L2; else goto _L1
_L1:
        int i1 = 48;
_L4:
        return i1;
_L2:
        i1 = 0xff & O[c];
        if (i1 < 48 || i1 > 57)
        {
            return 48;
        }
        if (!isEnabled(n.g))
        {
            a("Leading zeroes not allowed");
        }
        c = 1 + c;
        if (i1 != 48)
        {
            continue; /* Loop/switch isn't completed */
        }
        do
        {
            if (c >= d && !b())
            {
                continue; /* Loop/switch isn't completed */
            }
            i1 = 0xff & O[c];
            if (i1 < 48 || i1 > 57)
            {
                return 48;
            }
            c = 1 + c;
        } while (i1 == 48);
        break; /* Loop/switch isn't completed */
        if (true) goto _L4; else goto _L3
_L3:
        return i1;
    }

    private int j(int i1)
    {
        int j1 = i1 & 0xf;
        byte abyte0[] = O;
        int k1 = c;
        c = k1 + 1;
        byte byte0 = abyte0[k1];
        if ((byte0 & 0xc0) != 128)
        {
            b(byte0 & 0xff, c);
        }
        int l1 = j1 << 6 | byte0 & 0x3f;
        byte abyte1[] = O;
        int i2 = c;
        c = i2 + 1;
        byte byte1 = abyte1[i2];
        if ((byte1 & 0xc0) != 128)
        {
            b(byte1 & 0xff, c);
        }
        return l1 << 6 | byte1 & 0x3f;
    }

    private int k(int i1)
    {
        if (c >= d)
        {
            a();
        }
        byte abyte0[] = O;
        int j1 = c;
        c = j1 + 1;
        byte byte0 = abyte0[j1];
        if ((byte0 & 0xc0) != 128)
        {
            b(byte0 & 0xff, c);
        }
        int k1 = (i1 & 7) << 6 | byte0 & 0x3f;
        if (c >= d)
        {
            a();
        }
        byte abyte1[] = O;
        int l1 = c;
        c = l1 + 1;
        byte byte1 = abyte1[l1];
        if ((byte1 & 0xc0) != 128)
        {
            b(byte1 & 0xff, c);
        }
        int i2 = k1 << 6 | byte1 & 0x3f;
        if (c >= d)
        {
            a();
        }
        byte abyte2[] = O;
        int j2 = c;
        c = j2 + 1;
        byte byte2 = abyte2[j2];
        if ((byte2 & 0xc0) != 128)
        {
            b(byte2 & 0xff, c);
        }
        return (i2 << 6 | byte2 & 0x3f) - 0x10000;
    }

    private f k()
    {
        if (c >= d && !b())
        {
            _reportInvalidEOF(": was expecting closing '\"' for name");
        }
        byte abyte0[] = O;
        int i1 = c;
        c = i1 + 1;
        int j1 = 0xff & abyte0[i1];
        if (j1 == 34)
        {
            return com.fasterxml.jackson.a.e.a.c();
        } else
        {
            return a(L, 0, 0, j1, 0);
        }
    }

    private f l()
    {
        int j1;
        int ai[];
        int ai1[];
        int k1;
        int l1;
        int i2;
        if (c >= d && !b())
        {
            _reportInvalidEOF(": was expecting closing ''' for name");
        }
        byte abyte0[] = O;
        int i1 = c;
        c = i1 + 1;
        j1 = 0xff & abyte0[i1];
        if (j1 == 39)
        {
            return com.fasterxml.jackson.a.e.a.c();
        }
        ai = L;
        ai1 = R;
        k1 = 0;
        l1 = 0;
        i2 = 0;
_L2:
        int l2;
        int i3;
        int j3;
        int k3;
        if (j1 == 39)
        {
            break; /* Loop/switch isn't completed */
        }
        if (j1 == 34 || ai1[j1] == 0)
        {
            break MISSING_BLOCK_LABEL_662;
        }
        int ai3[];
        int i4;
        int j4;
        int k4;
        byte abyte1[];
        int l4;
        int i5;
        int j5;
        int l5;
        int i6;
        int k7;
        int l7;
        int ai5[];
        int j8;
        if (j1 != 92)
        {
            _throwUnquotedSpace(j1, "name");
        } else
        {
            j1 = g();
        }
        if (j1 <= 127)
        {
            break MISSING_BLOCK_LABEL_662;
        }
        if (k1 >= 4)
        {
            if (i2 >= ai.length)
            {
                ai = a(ai, ai.length);
                L = ai;
            }
            int j9 = i2 + 1;
            ai[i2] = l1;
            i6 = 0;
            i3 = j9;
            l5 = 0;
        } else
        {
            int k5 = k1;
            l5 = l1;
            i3 = i2;
            i6 = k5;
        }
        if (j1 < 2048)
        {
            int l8 = l5 << 8 | (0xc0 | j1 >> 6);
            int i9 = i6 + 1;
            k7 = l8;
            ai5 = ai;
            l7 = i9;
        } else
        {
            int j6 = l5 << 8 | (0xe0 | j1 >> 12);
            int k6 = i6 + 1;
            int ai2[];
            int j2;
            f f1;
            int k2;
            int l3;
            int l6;
            int i7;
            int ai4[];
            int j7;
            int i8;
            if (k6 >= 4)
            {
                if (i3 >= ai.length)
                {
                    ai = a(ai, ai.length);
                    L = ai;
                }
                int k8 = i3 + 1;
                ai[i3] = j6;
                i7 = k8;
                ai4 = ai;
                j7 = 0;
                l6 = 0;
            } else
            {
                l6 = j6;
                i7 = i3;
                ai4 = ai;
                j7 = k6;
            }
            k7 = l6 << 8 | (0x80 | 0x3f & j1 >> 6);
            l7 = j7 + 1;
            i8 = i7;
            ai5 = ai4;
            i3 = i8;
        }
        j8 = 0x80 | j1 & 0x3f;
        l2 = k7;
        j3 = l7;
        ai = ai5;
        k3 = j8;
_L3:
        if (j3 < 4)
        {
            j5 = j3 + 1;
            j4 = k3 | l2 << 8;
            k4 = i3;
            ai3 = ai;
            i4 = j5;
        } else
        {
            if (i3 >= ai.length)
            {
                ai = a(ai, ai.length);
                L = ai;
            }
            l3 = i3 + 1;
            ai[i3] = l2;
            ai3 = ai;
            i4 = 1;
            j4 = k3;
            k4 = l3;
        }
        if (c >= d && !b())
        {
            _reportInvalidEOF(" in field name");
        }
        abyte1 = O;
        l4 = c;
        c = l4 + 1;
        j1 = 0xff & abyte1[l4];
        i5 = i4;
        ai = ai3;
        l1 = j4;
        i2 = k4;
        k1 = i5;
        if (true) goto _L2; else goto _L1
_L1:
        if (k1 > 0)
        {
            if (i2 >= ai.length)
            {
                ai = a(ai, ai.length);
                L = ai;
            }
            k2 = i2 + 1;
            ai[i2] = l1;
            ai2 = ai;
            j2 = k2;
        } else
        {
            ai2 = ai;
            j2 = i2;
        }
        f1 = K.a(ai2, j2);
        if (f1 == null)
        {
            return a(ai2, j2, k1);
        } else
        {
            return f1;
        }
        l2 = l1;
        i3 = i2;
        j3 = k1;
        k3 = j1;
          goto _L3
    }

    private void l(int i1)
    {
        if (i1 < 32)
        {
            _throwInvalidSpace(i1);
        }
        m(i1);
    }

    private void m()
    {
        int ai[];
        byte abyte0[];
        M = false;
        ai = Q;
        abyte0 = O;
_L8:
        int i1;
        int j1;
        i1 = c;
        j1 = d;
        if (i1 >= j1)
        {
            a();
            i1 = c;
            j1 = d;
        }
_L6:
        if (i1 >= j1) goto _L2; else goto _L1
_L1:
        int k1;
        int l1;
        k1 = i1 + 1;
        l1 = 0xff & abyte0[i1];
        if (ai[l1] == 0) goto _L4; else goto _L3
_L3:
        c = k1;
        if (l1 != 34)
        {
            switch (ai[l1])
            {
            default:
                if (l1 < 32)
                {
                    _throwUnquotedSpace(l1, "string value");
                } else
                {
                    l(l1);
                }
                break;

            case 1: // '\001'
                g();
                break;

            case 2: // '\002'
                u();
                break;

            case 3: // '\003'
                v();
                break;

            case 4: // '\004'
                w();
                break;
            }
        } else
        {
            return;
        }
          goto _L5
_L2:
        c = i1;
          goto _L5
_L4:
        i1 = k1;
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void m(int i1)
    {
        _reportError((new StringBuilder("Invalid UTF-8 start byte 0x")).append(Integer.toHexString(i1)).toString());
    }

    private r n()
    {
        char ac[];
        int ai[];
        byte abyte0[];
        int i1;
        ac = m.j();
        ai = Q;
        abyte0 = O;
        i1 = 0;
_L6:
        do
        {
            if (c >= d)
            {
                a();
            }
            if (i1 >= ac.length)
            {
                ac = m.l();
                i1 = 0;
            }
            int j1 = d;
            int k1 = c + (ac.length - i1);
            int i2;
            int j2;
            int k2;
            int l2;
            int i3;
            if (k1 >= j1)
            {
                k1 = j1;
            }
            while (c < k1) 
            {
label0:
                {
                    int l1 = c;
                    c = l1 + 1;
                    i2 = 0xff & abyte0[l1];
                    if (i2 == 39 || ai[i2] != 0)
                    {
                        break label0;
                    }
                    int j3 = i1 + 1;
                    ac[i1] = (char)i2;
                    i1 = j3;
                }
            }
        } while (true);
        if (i2 == 39)
        {
            break MISSING_BLOCK_LABEL_369;
        }
        ai[i2];
        JVM INSTR tableswitch 1 4: default 188
    //                   1 248
    //                   2 264
    //                   3 275
    //                   4 310;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_310;
_L1:
        if (i2 < 32)
        {
            _throwUnquotedSpace(i2, "string value");
        }
        l(i2);
_L8:
        l2 = i2;
_L9:
        if (i1 >= ac.length)
        {
            ac = m.l();
            i3 = 0;
        } else
        {
            i3 = i1;
        }
        i1 = i3 + 1;
        ac[i3] = (char)l2;
          goto _L6
_L2:
        if (i2 == 34) goto _L8; else goto _L7
_L7:
        l2 = g();
          goto _L9
_L3:
        l2 = h(i2);
          goto _L9
_L4:
        if (d - c >= 2)
        {
            l2 = j(i2);
        } else
        {
            l2 = i(i2);
        }
          goto _L9
        j2 = k(i2);
        k2 = i1 + 1;
        ac[i1] = (char)(0xd800 | j2 >> 10);
        if (k2 >= ac.length)
        {
            ac = m.l();
            i1 = 0;
        } else
        {
            i1 = k2;
        }
        l2 = 0xdc00 | j2 & 0x3ff;
          goto _L9
        m.a(i1);
        return r.h;
    }

    private void n(int i1)
    {
        _reportError((new StringBuilder("Invalid UTF-8 middle byte 0x")).append(Integer.toHexString(i1)).toString());
    }

    private int o()
    {
        do
        {
            if (c >= d && !b())
            {
                break;
            }
            byte abyte0[] = O;
            int i1 = c;
            c = i1 + 1;
            int j1 = 0xff & abyte0[i1];
            if (j1 > 32)
            {
                if (j1 != 47)
                {
                    return j1;
                }
                r();
            } else
            if (j1 != 32)
            {
                if (j1 == 10)
                {
                    y();
                } else
                if (j1 == 13)
                {
                    x();
                } else
                if (j1 != 9)
                {
                    _throwInvalidSpace(j1);
                }
            }
        } while (true);
        throw _constructError((new StringBuilder("Unexpected end-of-input within/between ")).append(k.getTypeDesc()).append(" entries").toString());
    }

    private int p()
    {
        do
        {
            if (c >= d && !b())
            {
                break;
            }
            byte abyte0[] = O;
            int i1 = c;
            c = i1 + 1;
            int j1 = 0xff & abyte0[i1];
            if (j1 > 32)
            {
                if (j1 != 47)
                {
                    return j1;
                }
                r();
            } else
            if (j1 != 32)
            {
                if (j1 == 10)
                {
                    y();
                } else
                if (j1 == 13)
                {
                    x();
                } else
                if (j1 != 9)
                {
                    _throwInvalidSpace(j1);
                }
            }
        } while (true);
        _handleEOF();
        return -1;
    }

    private int q()
    {
        byte byte0;
        if (c >= d)
        {
            a();
        }
        byte abyte0[] = O;
        int i1 = c;
        c = i1 + 1;
        byte0 = abyte0[i1];
        if (byte0 != 58) goto _L2; else goto _L1
_L1:
        if (c >= d) goto _L4; else goto _L3
_L3:
        int i2 = 0xff & O[c];
        if (i2 <= 32 || i2 == 47) goto _L4; else goto _L5
_L5:
        c = 1 + c;
_L14:
        return i2;
_L2:
        int j1 = byte0 & 0xff;
_L15:
        j1;
        JVM INSTR lookupswitch 5: default 156
    //                   9: 259
    //                   10: 308
    //                   13: 255
    //                   32: 259
    //                   47: 315;
           goto _L6 _L7 _L8 _L9 _L7 _L10
_L6:
        if (j1 < 32)
        {
            _throwInvalidSpace(j1);
        }
        if (j1 != 58)
        {
            _reportUnexpectedChar(j1, "was expecting a colon to separate field name and value");
        }
_L4:
        if (c >= d && !b())
        {
            break MISSING_BLOCK_LABEL_373;
        }
        byte abyte2[] = O;
        int l1 = c;
        c = l1 + 1;
        i2 = 0xff & abyte2[l1];
        if (i2 <= 32) goto _L12; else goto _L11
_L11:
        if (i2 != 47) goto _L14; else goto _L13
_L13:
        r();
          goto _L4
_L9:
        x();
_L7:
        if (c >= d)
        {
            a();
        }
        byte abyte1[] = O;
        int k1 = c;
        c = k1 + 1;
        j1 = 0xff & abyte1[k1];
          goto _L15
_L8:
        y();
          goto _L7
_L10:
        r();
          goto _L7
_L12:
        if (i2 != 32)
        {
            if (i2 == 10)
            {
                y();
            } else
            if (i2 == 13)
            {
                x();
            } else
            if (i2 != 9)
            {
                _throwInvalidSpace(i2);
            }
        }
          goto _L4
        throw _constructError((new StringBuilder("Unexpected end-of-input within/between ")).append(k.getTypeDesc()).append(" entries").toString());
          goto _L15
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
        byte abyte0[] = O;
        int i1 = c;
        c = i1 + 1;
        int j1 = 0xff & abyte0[i1];
        if (j1 == 47)
        {
            t();
            return;
        }
        if (j1 == 42)
        {
            s();
            return;
        } else
        {
            _reportUnexpectedChar(j1, "was expecting either '*' or '/' for a comment");
            return;
        }
    }

    private void s()
    {
        int ai[] = com.fasterxml.jackson.a.c.b.e();
label0:
        do
        {
            if (c >= d && !b())
            {
                break;
            }
            byte abyte0[] = O;
            int i1 = c;
            c = i1 + 1;
            int j1 = 0xff & abyte0[i1];
            int k1 = ai[j1];
            if (k1 == 0)
            {
                continue;
            }
            switch (k1)
            {
            default:
                l(j1);
                break;

            case 42: // '*'
                if (c < d || b())
                {
                    if (O[c] == 47)
                    {
                        c = 1 + c;
                        return;
                    }
                    break;
                }
                break label0;

            case 10: // '\n'
                y();
                break;

            case 13: // '\r'
                x();
                break;

            case 2: // '\002'
                u();
                break;

            case 3: // '\003'
                v();
                break;

            case 4: // '\004'
                w();
                break;
            }
        } while (true);
        _reportInvalidEOF(" in a comment");
    }

    private void t()
    {
        int ai[] = com.fasterxml.jackson.a.c.b.e();
        do
        {
label0:
            {
label1:
                {
label2:
                    {
label3:
                        {
                            if (c < d || b())
                            {
                                byte abyte0[] = O;
                                int i1 = c;
                                c = i1 + 1;
                                int j1 = 0xff & abyte0[i1];
                                int k1 = ai[j1];
                                if (k1 == 0)
                                {
                                    continue;
                                }
                                switch (k1)
                                {
                                default:
                                    l(j1);
                                    continue;

                                case 2: // '\002'
                                    break label2;

                                case 3: // '\003'
                                    break label1;

                                case 4: // '\004'
                                    break label0;

                                case 13: // '\r'
                                    break label3;

                                case 42: // '*'
                                    continue;

                                case 10: // '\n'
                                    y();
                                    break;
                                }
                            }
                            return;
                        }
                        x();
                        return;
                    }
                    u();
                    continue;
                }
                v();
                continue;
            }
            w();
        } while (true);
    }

    private void u()
    {
        if (c >= d)
        {
            a();
        }
        byte abyte0[] = O;
        int i1 = c;
        c = i1 + 1;
        byte byte0 = abyte0[i1];
        if ((byte0 & 0xc0) != 128)
        {
            b(byte0 & 0xff, c);
        }
    }

    private void v()
    {
        if (c >= d)
        {
            a();
        }
        byte abyte0[] = O;
        int i1 = c;
        c = i1 + 1;
        byte byte0 = abyte0[i1];
        if ((byte0 & 0xc0) != 128)
        {
            b(byte0 & 0xff, c);
        }
        if (c >= d)
        {
            a();
        }
        byte abyte1[] = O;
        int j1 = c;
        c = j1 + 1;
        byte byte1 = abyte1[j1];
        if ((byte1 & 0xc0) != 128)
        {
            b(byte1 & 0xff, c);
        }
    }

    private void w()
    {
        if (c >= d)
        {
            a();
        }
        byte abyte0[] = O;
        int i1 = c;
        c = i1 + 1;
        byte byte0 = abyte0[i1];
        if ((byte0 & 0xc0) != 128)
        {
            b(byte0 & 0xff, c);
        }
        if (c >= d)
        {
            a();
        }
        byte abyte1[] = O;
        int j1 = c;
        c = j1 + 1;
        byte byte1 = abyte1[j1];
        if ((byte1 & 0xc0) != 128)
        {
            b(byte1 & 0xff, c);
        }
        if (c >= d)
        {
            a();
        }
        byte abyte2[] = O;
        int k1 = c;
        c = k1 + 1;
        byte byte2 = abyte2[k1];
        if ((byte2 & 0xc0) != 128)
        {
            b(byte2 & 0xff, c);
        }
    }

    private void x()
    {
        if ((c < d || b()) && O[c] == 10)
        {
            c = 1 + c;
        }
        f = 1 + f;
        g = c;
    }

    private void y()
    {
        f = 1 + f;
        g = c;
    }

    private int z()
    {
        if (c >= d)
        {
            a();
        }
        byte abyte0[] = O;
        int i1 = c;
        c = i1 + 1;
        return 0xff & abyte0[i1];
    }

    protected final boolean b()
    {
        e = e + (long)d;
        g = g - d;
        InputStream inputstream = N;
        boolean flag = false;
        if (inputstream != null)
        {
            int i1 = N.read(O, 0, O.length);
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
                    throw new IOException((new StringBuilder("InputStream.read() returned 0 characters when trying to read ")).append(O.length).append(" bytes").toString());
                }
            }
        }
        return flag;
    }

    protected final void c()
    {
        int i1 = c;
        if (i1 >= d)
        {
            a();
            i1 = c;
        }
        char ac[] = m.j();
        int ai[] = Q;
        int j1 = Math.min(d, i1 + ac.length);
        byte abyte0[] = O;
        int k1 = i1;
        int l1 = 0;
        do
        {
            if (k1 >= j1)
            {
                break;
            }
            int i2 = 0xff & abyte0[k1];
            if (ai[i2] != 0)
            {
                if (i2 == 34)
                {
                    c = k1 + 1;
                    m.a(l1);
                    return;
                }
                break;
            }
            int j2 = k1 + 1;
            int k2 = l1 + 1;
            ac[l1] = (char)i2;
            l1 = k2;
            k1 = j2;
        } while (true);
        c = k1;
        a(ac, l1);
    }

    public final void close()
    {
        super.close();
        K.b();
    }

    protected final void d()
    {
        if (N != null)
        {
            if (a.c() || isEnabled(n.a))
            {
                N.close();
            }
            N = null;
        }
    }

    protected final void e()
    {
        super.e();
        if (P)
        {
            byte abyte0[] = O;
            if (abyte0 != null)
            {
                O = null;
                a.a(abyte0);
            }
        }
    }

    protected final char g()
    {
        int i1 = 0;
        if (c >= d && !b())
        {
            _reportInvalidEOF(" in character escape sequence");
        }
        byte abyte0[] = O;
        int j1 = c;
        c = j1 + 1;
        byte byte0 = abyte0[j1];
        int k1;
        switch (byte0)
        {
        default:
            return _handleUnrecognizedCharacterEscape((char)g(byte0));

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

        case 34: // '"'
        case 47: // '/'
        case 92: // '\\'
            return (char)byte0;

        case 117: // 'u'
            k1 = 0;
            break;
        }
        for (; i1 < 4; i1++)
        {
            if (c >= d && !b())
            {
                _reportInvalidEOF(" in character escape sequence");
            }
            byte abyte1[] = O;
            int l1 = c;
            c = l1 + 1;
            byte byte1 = abyte1[l1];
            int i2 = com.fasterxml.jackson.a.c.b.a(byte1);
            if (i2 < 0)
            {
                _reportUnexpectedChar(byte1, "expected a hex-digit for character escape sequence");
            }
            k1 = i2 | k1 << 4;
        }

        return (char)k1;
    }

    public final byte[] getBinaryValue(a a1)
    {
        if (_currToken != r.h && (_currToken != r.g || q == null))
        {
            _reportError((new StringBuilder("Current token (")).append(_currToken).append(") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary").toString());
        }
        if (!M) goto _L2; else goto _L1
_L1:
        try
        {
            q = a(a1);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw _constructError((new StringBuilder("Failed to decode VALUE_STRING as base64 (")).append(a1).append("): ").append(illegalargumentexception.getMessage()).toString());
        }
        M = false;
_L4:
        return q;
_L2:
        if (q == null)
        {
            d d1 = f();
            _decodeBase64(getText(), d1, a1);
            q = d1.c();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final s getCodec()
    {
        return J;
    }

    public final Object getInputSource()
    {
        return N;
    }

    public final String getText()
    {
        if (_currToken == r.h)
        {
            if (M)
            {
                M = false;
                c();
            }
            return m.e();
        } else
        {
            return a(_currToken);
        }
    }

    public final char[] getTextCharacters()
    {
        if (_currToken == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        com.fasterxml.jackson.a.d.k.a[_currToken.ordinal()];
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
        if (M)
        {
            M = false;
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
                        switch (com.fasterxml.jackson.a.d.k.a[_currToken.ordinal()])
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
            if (M)
            {
                M = false;
                c();
            }
        }
        return m.b();
    }

    public final int getTextOffset()
    {
        if (_currToken == null) goto _L2; else goto _L1
_L1:
        com.fasterxml.jackson.a.d.k.a[_currToken.ordinal()];
        JVM INSTR tableswitch 1 4: default 48
    //                   1 48
    //                   2 50
    //                   3 66
    //                   4 66;
           goto _L2 _L2 _L3 _L4 _L4
_L2:
        return 0;
_L3:
        if (M)
        {
            M = false;
            c();
        }
_L4:
        return m.c();
    }

    public final String getValueAsString()
    {
        if (_currToken == r.h)
        {
            if (M)
            {
                M = false;
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
            if (M)
            {
                M = false;
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
        switch (com.fasterxml.jackson.a.d.k.a[nextToken().ordinal()])
        {
        default:
            return null;

        case 5: // '\005'
            return Boolean.TRUE;

        case 6: // '\006'
            return Boolean.FALSE;
        }
    }

    public final boolean nextFieldName(u u1)
    {
        int i1 = 0;
        z = 0;
        if (_currToken == r.f)
        {
            h();
            return false;
        }
        if (M)
        {
            m();
        }
        int j1 = p();
        if (j1 < 0)
        {
            close();
            _currToken = null;
            return false;
        }
        h = (e + (long)c) - 1L;
        i = f;
        j = -1 + (c - g);
        q = null;
        if (j1 == 93)
        {
            if (!k.inArray())
            {
                a(j1, '}');
            }
            k = k.c();
            _currToken = r.e;
            return false;
        }
        if (j1 == 125)
        {
            if (!k.inObject())
            {
                a(j1, ']');
            }
            k = k.c();
            _currToken = r.c;
            return false;
        }
        if (k.d())
        {
            if (j1 != 44)
            {
                _reportUnexpectedChar(j1, (new StringBuilder("was expecting comma to separate ")).append(k.getTypeDesc()).append(" entries").toString());
            }
            j1 = o();
        }
        if (!k.inObject())
        {
            a(j1);
            return false;
        }
        if (j1 == 34)
        {
            byte abyte0[] = u1.d();
            int k1 = abyte0.length;
            if (k1 + c < d)
            {
                int l1 = k1 + c;
                if (O[l1] == 34)
                {
                    int i2 = c;
                    do
                    {
                        if (i1 == k1)
                        {
                            c = l1 + 1;
                            k.a(u1.a());
                            _currToken = r.f;
                            i();
                            return true;
                        }
                        if (abyte0[i1] != O[i2 + i1])
                        {
                            break;
                        }
                        i1++;
                    } while (true);
                }
            }
        }
        return a(j1, u1);
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
        if (M)
        {
            M = false;
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
        int k1;
        z = 0;
        if (_currToken == r.f)
        {
            return h();
        }
        if (M)
        {
            m();
        }
        int i1 = p();
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
            i1 = o();
        }
        if (!k.inObject())
        {
            return a(i1);
        }
        f f1 = c(i1);
        k.a(f1.a());
        _currToken = r.f;
        int j1 = o();
        if (j1 != 58)
        {
            _reportUnexpectedChar(j1, "was expecting a colon to separate field name and value");
        }
        k1 = o();
        if (k1 == 34)
        {
            M = true;
            l = r.h;
            return _currToken;
        }
        k1;
        JVM INSTR lookupswitch 18: default 492
    //                   45: 580
    //                   48: 580
    //                   49: 580
    //                   50: 580
    //                   51: 580
    //                   52: 580
    //                   53: 580
    //                   54: 580
    //                   55: 580
    //                   56: 580
    //                   57: 580
    //                   91: 511
    //                   93: 527
    //                   102: 550
    //                   110: 565
    //                   116: 535
    //                   123: 519
    //                   125: 527;
           goto _L1 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L4
_L1:
        r r1 = f(k1);
_L10:
        l = r1;
        return _currToken;
_L3:
        r1 = r.d;
        continue; /* Loop/switch isn't completed */
_L8:
        r1 = r.b;
        continue; /* Loop/switch isn't completed */
_L4:
        _reportUnexpectedChar(k1, "expected a value");
_L7:
        a("true", 1);
        r1 = r.k;
        continue; /* Loop/switch isn't completed */
_L5:
        a("false", 1);
        r1 = r.l;
        continue; /* Loop/switch isn't completed */
_L6:
        a("null", 1);
        r1 = r.m;
        continue; /* Loop/switch isn't completed */
_L2:
        r1 = b(k1);
        if (true) goto _L10; else goto _L9
_L9:
    }

    public final int readBinaryValue(a a1, OutputStream outputstream)
    {
        byte abyte1[];
        if (!M || _currToken != r.h)
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

    public final int releaseBuffered(OutputStream outputstream)
    {
        int i1 = d - c;
        if (i1 <= 0)
        {
            return 0;
        } else
        {
            int j1 = c;
            outputstream.write(O, j1, i1);
            return i1;
        }
    }

    public final void setCodec(s s1)
    {
        J = s1;
    }

}
