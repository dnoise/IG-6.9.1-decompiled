// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.androidextra;


class value extends value
{

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
    //                   0 255
    //                   1 288
    //                   2 327
    //                   3 403
    //                   4 522
    //                   5 553;
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
    //                   0 632
    //                   1 646
    //                   2 654
    //                   3 677
    //                   4 713;
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


    public (int i, byte abyte0[])
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
