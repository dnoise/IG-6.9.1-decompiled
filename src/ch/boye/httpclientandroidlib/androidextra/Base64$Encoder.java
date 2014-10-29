// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.androidextra;


// Referenced classes of package ch.boye.httpclientandroidlib.androidextra:
//            Base64

class count extends count
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
    //                   0 349
    //                   1 358
    //                   2 436;
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

    public (int i, byte abyte0[])
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
