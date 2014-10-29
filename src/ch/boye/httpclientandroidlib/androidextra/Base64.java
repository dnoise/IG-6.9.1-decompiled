// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.androidextra;

import java.io.UnsupportedEncodingException;

public class Base64
{

    static final boolean $assertionsDisabled = false;
    public static final int CRLF = 4;
    public static final int DEFAULT = 0;
    public static final int NO_CLOSE = 16;
    public static final int NO_PADDING = 1;
    public static final int NO_WRAP = 2;
    public static final int URL_SAFE = 8;

    private Base64()
    {
    }

    public static byte[] decode(String s, int i)
    {
        return decode(s.getBytes(), i);
    }

    public static byte[] decode(byte abyte0[], int i)
    {
        return decode(abyte0, 0, abyte0.length, i);
    }

    public static byte[] decode(byte abyte0[], int i, int j, int k)
    {
        Decoder decoder = new Decoder(k, new byte[(j * 3) / 4]);
        if (!decoder.process(abyte0, i, j, true))
        {
            throw new IllegalArgumentException("bad base-64");
        }
        if (decoder.op == decoder.output.length)
        {
            return decoder.output;
        } else
        {
            byte abyte1[] = new byte[decoder.op];
            System.arraycopy(decoder.output, 0, abyte1, 0, decoder.op);
            return abyte1;
        }
    }

    public static byte[] encode(byte abyte0[], int i)
    {
        return encode(abyte0, 0, abyte0.length, i);
    }

    public static byte[] encode(byte abyte0[], int i, int j, int k)
    {
        Encoder encoder;
        int l;
        encoder = new Encoder(k, null);
        l = 4 * (j / 3);
        if (!encoder.do_padding) goto _L2; else goto _L1
_L1:
        if (j % 3 > 0)
        {
            l += 4;
        }
_L4:
        if (encoder.do_newline && j > 0)
        {
            int i1 = 1 + (j - 1) / 57;
            byte byte0;
            if (encoder.do_cr)
            {
                byte0 = 2;
            } else
            {
                byte0 = 1;
            }
            l += byte0 * i1;
        }
        encoder.output = new byte[l];
        encoder.process(abyte0, i, j, true);
        if (!$assertionsDisabled && encoder.op != l)
        {
            throw new AssertionError();
        } else
        {
            return encoder.output;
        }
_L2:
        switch (j % 3)
        {
        case 1: // '\001'
            l += 2;
            break;

        case 2: // '\002'
            l += 3;
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static String encodeToString(byte abyte0[], int i)
    {
        String s;
        try
        {
            s = new String(encode(abyte0, i), "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
        return s;
    }

    public static String encodeToString(byte abyte0[], int i, int j, int k)
    {
        String s;
        try
        {
            s = new String(encode(abyte0, i, j, k), "US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new AssertionError(unsupportedencodingexception);
        }
        return s;
    }

    static 
    {
        boolean flag;
        if (!ch/boye/httpclientandroidlib/androidextra/Base64.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }

    private class Decoder extends Coder
    {
        private class Coder
        {

            public int op;
            public byte output[];

            public abstract int maxOutputSize(int i);

            public abstract boolean process(byte abyte0[], int i, int j, boolean flag);

            Coder()
            {
            }
        }


        private static final int DECODE[] = {
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 
            54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
            -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 
            5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
            15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
            25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 
            29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
            39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
            49, 50, 51, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1
        };
        private static final int DECODE_WEBSAFE[] = {
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 
            54, 55, 56, 57, 58, 59, 60, 61, -1, -1, 
            -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 
            5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
            15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
            25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 
            29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
            39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
            49, 50, 51, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
            -1, -1, -1, -1, -1, -1
        };
        private static final int EQUALS = -2;
        private static final int SKIP = -1;
        private final int alphabet[];
        private int state;
        private int value;

        public int maxOutputSize(int i)
        {
            return 10 + (i * 3) / 4;
        }

        public boolean process(byte abyte0[], int i, int j, boolean flag)
        {
            int k;
            int i1;
            int j1;
            byte abyte1[];
            int ai[];
            int k1;
            int l1;
            if (state == 6)
            {
                return false;
            }
            k = j + i;
            int l = state;
            i1 = value;
            j1 = 0;
            abyte1 = output;
            ai = alphabet;
            k1 = l;
            l1 = i;
_L24:
            if (l1 >= k) goto _L2; else goto _L1
_L1:
            if (k1 != 0) goto _L4; else goto _L3
_L3:
            do
            {
                if (l1 + 4 > k)
                {
                    break;
                }
                i1 = ai[0xff & abyte0[l1]] << 18 | ai[0xff & abyte0[l1 + 1]] << 12 | ai[0xff & abyte0[l1 + 2]] << 6 | ai[0xff & abyte0[l1 + 3]];
                if (i1 < 0)
                {
                    break;
                }
                abyte1[j1 + 2] = (byte)i1;
                abyte1[j1 + 1] = (byte)(i1 >> 8);
                abyte1[j1] = (byte)(i1 >> 16);
                j1 += 3;
                l1 += 4;
            } while (true);
            if (l1 >= k) goto _L2; else goto _L4
_L4:
            int l2;
            int i3;
            l2 = l1 + 1;
            i3 = ai[0xff & abyte0[l1]];
            k1;
            JVM INSTR tableswitch 0 5: default 248
        //                       0 255
        //                       1 288
        //                       2 327
        //                       3 403
        //                       4 522
        //                       5 553;
               goto _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L5:
            l1 = l2;
            continue; /* Loop/switch isn't completed */
_L6:
            if (i3 < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            k1++;
            i1 = i3;
            l1 = l2;
            continue; /* Loop/switch isn't completed */
            if (i3 == -1) goto _L5; else goto _L12
_L12:
            state = 6;
            return false;
_L7:
            if (i3 < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            i1 = i3 | i1 << 6;
            k1++;
            l1 = l2;
            continue; /* Loop/switch isn't completed */
            if (i3 == -1) goto _L5; else goto _L13
_L13:
            state = 6;
            return false;
_L8:
            if (i3 >= 0)
            {
                i1 = i3 | i1 << 6;
                k1++;
                l1 = l2;
            } else
            {
                if (i3 != -2)
                {
                    continue; /* Loop/switch isn't completed */
                }
                int j3 = j1 + 1;
                abyte1[j1] = (byte)(i1 >> 4);
                k1 = 4;
                j1 = j3;
                l1 = l2;
            }
            continue; /* Loop/switch isn't completed */
            if (i3 == -1) goto _L5; else goto _L14
_L14:
            state = 6;
            return false;
_L9:
            if (i3 >= 0)
            {
                i1 = i3 | i1 << 6;
                abyte1[j1 + 2] = (byte)i1;
                abyte1[j1 + 1] = (byte)(i1 >> 8);
                abyte1[j1] = (byte)(i1 >> 16);
                j1 += 3;
                l1 = l2;
                k1 = 0;
            } else
            {
                if (i3 != -2)
                {
                    continue; /* Loop/switch isn't completed */
                }
                abyte1[j1 + 1] = (byte)(i1 >> 2);
                abyte1[j1] = (byte)(i1 >> 10);
                j1 += 2;
                k1 = 5;
                l1 = l2;
            }
            continue; /* Loop/switch isn't completed */
            if (i3 == -1) goto _L5; else goto _L15
_L15:
            state = 6;
            return false;
_L10:
            if (i3 != -2)
            {
                continue; /* Loop/switch isn't completed */
            }
            k1++;
            l1 = l2;
            continue; /* Loop/switch isn't completed */
            if (i3 == -1) goto _L5; else goto _L16
_L16:
            state = 6;
            return false;
_L11:
            if (i3 == -1) goto _L5; else goto _L17
_L17:
            state = 6;
            return false;
_L2:
            int i2;
            i2 = i1;
            if (!flag)
            {
                state = k1;
                value = i2;
                op = j1;
                return true;
            }
            k1;
            JVM INSTR tableswitch 0 4: default 632
        //                       0 632
        //                       1 646
        //                       2 654
        //                       3 677
        //                       4 713;
               goto _L18 _L18 _L19 _L20 _L21 _L22
_L18:
            state = k1;
            op = j1;
            return true;
_L19:
            state = 6;
            return false;
_L20:
            int k2 = j1 + 1;
            abyte1[j1] = (byte)(i2 >> 4);
            j1 = k2;
            continue; /* Loop/switch isn't completed */
_L21:
            int j2 = j1 + 1;
            abyte1[j1] = (byte)(i2 >> 10);
            j1 = j2 + 1;
            abyte1[j2] = (byte)(i2 >> 2);
            if (true) goto _L18; else goto _L22
_L22:
            state = 6;
            return false;
            if (true) goto _L24; else goto _L23
_L23:
        }


        public Decoder(int i, byte abyte0[])
        {
            output = abyte0;
            int ai[];
            if ((i & 8) == 0)
            {
                ai = DECODE;
            } else
            {
                ai = DECODE_WEBSAFE;
            }
            alphabet = ai;
            state = 0;
            value = 0;
        }
    }


    private class Encoder extends Coder
    {

        static final boolean $assertionsDisabled = false;
        private static final byte ENCODE[] = {
            65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
            75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
            85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
            101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
            111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
            121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
            56, 57, 43, 47
        };
        private static final byte ENCODE_WEBSAFE[] = {
            65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 
            75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 
            85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 
            101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 
            111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 
            121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 
            56, 57, 45, 95
        };
        public static final int LINE_GROUPS = 19;
        private final byte alphabet[];
        private int count;
        public final boolean do_cr;
        public final boolean do_newline;
        public final boolean do_padding;
        private final byte tail[] = new byte[2];
        int tailLen;

        public int maxOutputSize(int i)
        {
            return 10 + (i * 8) / 5;
        }

        public boolean process(byte abyte0[], int i, int j, boolean flag)
        {
            byte abyte1[];
            byte abyte2[];
            int k;
            int l;
            abyte1 = alphabet;
            abyte2 = output;
            k = count;
            l = j + i;
            tailLen;
            JVM INSTR tableswitch 0 2: default 52
        //                       0 349
        //                       1 358
        //                       2 436;
               goto _L1 _L2 _L3 _L4
_L1:
            int j1;
            int l1;
            l1 = -1;
            j1 = i;
_L6:
            int i2;
            int j2;
            if (l1 != -1)
            {
                abyte2[0] = abyte1[0x3f & l1 >> 18];
                abyte2[1] = abyte1[0x3f & l1 >> 12];
                abyte2[2] = abyte1[0x3f & l1 >> 6];
                byte byte3 = 4;
                abyte2[3] = abyte1[l1 & 0x3f];
                int l9 = k - 1;
                int i1;
                int k1;
                byte abyte3[];
                int k2;
                byte abyte4[];
                int l2;
                byte abyte5[];
                int i3;
                int j3;
                int k3;
                byte byte0;
                int l3;
                int i4;
                int j4;
                byte byte1;
                int k4;
                int l4;
                int i5;
                int j5;
                int k5;
                int l5;
                int i6;
                byte abyte6[];
                int j6;
                byte abyte7[];
                int k6;
                byte byte2;
                int l6;
                int i7;
                int j7;
                int k7;
                int l7;
                int i8;
                int j8;
                byte abyte8[];
                int k8;
                int l8;
                int i9;
                int j9;
                int k9;
                int i10;
                int j10;
                int k10;
                int l10;
                int i11;
                if (l9 == 0)
                {
                    if (do_cr)
                    {
                        byte3 = 5;
                        abyte2[4] = 13;
                    }
                    j2 = byte3 + 1;
                    abyte2[byte3] = 10;
                    i2 = 19;
                } else
                {
                    i2 = l9;
                    j2 = byte3;
                }
            } else
            {
                i2 = k;
                j2 = 0;
            }
            while (j1 + 3 <= l) 
            {
                k8 = (0xff & abyte0[j1]) << 16 | (0xff & abyte0[j1 + 1]) << 8 | 0xff & abyte0[j1 + 2];
                abyte2[j2] = abyte1[0x3f & k8 >> 18];
                abyte2[j2 + 1] = abyte1[0x3f & k8 >> 12];
                abyte2[j2 + 2] = abyte1[0x3f & k8 >> 6];
                abyte2[j2 + 3] = abyte1[k8 & 0x3f];
                l8 = j1 + 3;
                i9 = j2 + 4;
                j9 = i2 - 1;
                if (j9 == 0)
                {
                    if (do_cr)
                    {
                        k9 = i9 + 1;
                        abyte2[i9] = 13;
                    } else
                    {
                        k9 = i9;
                    }
                    j2 = k9 + 1;
                    abyte2[k9] = 10;
                    j1 = l8;
                    i2 = 19;
                } else
                {
                    i2 = j9;
                    j2 = i9;
                    j1 = l8;
                }
            }
              goto _L5
_L2:
            l1 = -1;
            j1 = i;
              goto _L6
_L3:
            if (i + 2 > l) goto _L1; else goto _L7
_L7:
            i10 = (0xff & tail[0]) << 16;
            j10 = i + 1;
            k10 = i10 | (0xff & abyte0[i]) << 8;
            l10 = j10 + 1;
            i11 = k10 | 0xff & abyte0[j10];
            tailLen = 0;
            l1 = i11;
            j1 = l10;
              goto _L6
_L4:
            if (i + 1 > l) goto _L1; else goto _L8
_L8:
            i1 = (0xff & tail[0]) << 16 | (0xff & tail[1]) << 8;
            j1 = i + 1;
            k1 = i1 | 0xff & abyte0[i];
            tailLen = 0;
            l1 = k1;
              goto _L6
_L5:
            if (!flag) goto _L10; else goto _L9
_L9:
            if (j1 - tailLen != l - 1) goto _L12; else goto _L11
_L11:
            if (tailLen > 0)
            {
                abyte8 = tail;
                l6 = 1;
                byte2 = abyte8[0];
            } else
            {
                k6 = j1 + 1;
                byte2 = abyte0[j1];
                j1 = k6;
                l6 = 0;
            }
            i7 = (byte2 & 0xff) << 4;
            tailLen = tailLen - l6;
            j7 = j2 + 1;
            abyte2[j2] = abyte1[0x3f & i7 >> 6];
            k7 = j7 + 1;
            abyte2[j7] = abyte1[i7 & 0x3f];
            if (do_padding)
            {
                j8 = k7 + 1;
                abyte2[k7] = 61;
                k7 = j8 + 1;
                abyte2[j8] = 61;
            }
            if (do_newline)
            {
                if (do_cr)
                {
                    i8 = k7 + 1;
                    abyte2[k7] = 13;
                    k7 = i8;
                }
                l7 = k7 + 1;
                abyte2[k7] = 10;
                k7 = l7;
            }
            j2 = k7;
_L14:
            if (!$assertionsDisabled && tailLen != 0)
            {
                throw new AssertionError();
            }
              goto _L13
_L12:
            if (j1 - tailLen == l - 2)
            {
                if (tailLen > 1)
                {
                    abyte7 = tail;
                    l3 = 1;
                    byte0 = abyte7[0];
                } else
                {
                    k3 = j1 + 1;
                    byte0 = abyte0[j1];
                    j1 = k3;
                    l3 = 0;
                }
                i4 = (byte0 & 0xff) << 10;
                if (tailLen > 0)
                {
                    abyte6 = tail;
                    j6 = l3 + 1;
                    byte1 = abyte6[l3];
                    l3 = j6;
                } else
                {
                    j4 = j1 + 1;
                    byte1 = abyte0[j1];
                    j1 = j4;
                }
                k4 = i4 | (byte1 & 0xff) << 2;
                tailLen = tailLen - l3;
                l4 = j2 + 1;
                abyte2[j2] = abyte1[0x3f & k4 >> 12];
                i5 = l4 + 1;
                abyte2[l4] = abyte1[0x3f & k4 >> 6];
                j5 = i5 + 1;
                abyte2[i5] = abyte1[k4 & 0x3f];
                if (do_padding)
                {
                    k5 = j5 + 1;
                    abyte2[j5] = 61;
                } else
                {
                    k5 = j5;
                }
                if (do_newline)
                {
                    if (do_cr)
                    {
                        i6 = k5 + 1;
                        abyte2[k5] = 13;
                        k5 = i6;
                    }
                    l5 = k5 + 1;
                    abyte2[k5] = 10;
                    k5 = l5;
                }
                j2 = k5;
            } else
            if (do_newline && j2 > 0 && i2 != 19)
            {
                if (do_cr)
                {
                    j3 = j2 + 1;
                    abyte2[j2] = 13;
                } else
                {
                    j3 = j2;
                }
                j2 = j3 + 1;
                abyte2[j3] = 10;
            }
            if (true) goto _L14; else goto _L13
_L13:
            if (!$assertionsDisabled && j1 != l)
            {
                throw new AssertionError();
            }
              goto _L15
_L10:
            if (j1 != l - 1) goto _L17; else goto _L16
_L16:
            abyte5 = tail;
            i3 = tailLen;
            tailLen = i3 + 1;
            abyte5[i3] = abyte0[j1];
_L15:
            op = j2;
            count = i2;
            return true;
_L17:
            if (j1 == l - 2)
            {
                abyte3 = tail;
                k2 = tailLen;
                tailLen = k2 + 1;
                abyte3[k2] = abyte0[j1];
                abyte4 = tail;
                l2 = tailLen;
                tailLen = l2 + 1;
                abyte4[l2] = abyte0[j1 + 1];
            }
            if (true) goto _L15; else goto _L18
_L18:
        }

        static 
        {
            boolean flag;
            if (!ch/boye/httpclientandroidlib/androidextra/Base64.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            $assertionsDisabled = flag;
        }

        public Encoder(int i, byte abyte0[])
        {
            boolean flag = true;
            super();
            output = abyte0;
            boolean flag1;
            boolean flag2;
            byte abyte1[];
            int j;
            if ((i & 1) == 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            do_padding = flag1;
            if ((i & 2) == 0)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            do_newline = flag2;
            if ((i & 4) == 0)
            {
                flag = false;
            }
            do_cr = flag;
            if ((i & 8) == 0)
            {
                abyte1 = ENCODE;
            } else
            {
                abyte1 = ENCODE_WEBSAFE;
            }
            alphabet = abyte1;
            tailLen = 0;
            if (do_newline)
            {
                j = 19;
            } else
            {
                j = -1;
            }
            count = j;
        }
    }

}
