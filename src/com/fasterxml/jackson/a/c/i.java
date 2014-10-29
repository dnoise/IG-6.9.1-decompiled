// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;


public final class i
{

    static final String a = "-9223372036854775808";
    static final char b[];
    static final char c[];
    static final byte d[];
    static final String e[] = {
        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", 
        "10"
    };
    static final String f[] = {
        "-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"
    };
    private static int g = 0xf4240;
    private static int h = 0x3b9aca00;
    private static long i = 0x2540be400L;
    private static long j = 1000L;
    private static long k = 0xffffffff80000000L;
    private static long l = 0x7fffffffL;

    public static int a(int i1, byte abyte0[], int j1)
    {
        if (i1 < 0)
        {
            if (i1 == 0x80000000)
            {
                return a(i1, abyte0, j1);
            }
            int l3 = j1 + 1;
            abyte0[j1] = 45;
            i1 = -i1;
            j1 = l3;
        }
        if (i1 < g)
        {
            if (i1 < 1000)
            {
                if (i1 < 10)
                {
                    int k3 = j1 + 1;
                    abyte0[j1] = (byte)(i1 + 48);
                    return k3;
                } else
                {
                    return b(i1, abyte0, j1);
                }
            } else
            {
                int j3 = i1 / 1000;
                return c(i1 - j3 * 1000, abyte0, b(j3, abyte0, j1));
            }
        }
        boolean flag;
        int i2;
        int k2;
        if (i1 >= h)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            i1 -= h;
            int k1;
            int l1;
            int j2;
            if (i1 >= h)
            {
                i1 -= h;
                int i3 = j1 + 1;
                abyte0[j1] = 50;
                j1 = i3;
            } else
            {
                int l2 = j1 + 1;
                abyte0[j1] = 49;
                j1 = l2;
            }
        }
        k1 = i1 / 1000;
        l1 = i1 - k1 * 1000;
        i2 = k1 / 1000;
        j2 = k1 - i2 * 1000;
        if (flag)
        {
            k2 = c(i2, abyte0, j1);
        } else
        {
            k2 = b(i2, abyte0, j1);
        }
        return c(l1, abyte0, c(j2, abyte0, k2));
    }

    public static int a(int i1, char ac[], int j1)
    {
        if (i1 < 0)
        {
            if (i1 == 0x80000000)
            {
                return a(i1, ac, j1);
            }
            int l3 = j1 + 1;
            ac[j1] = '-';
            i1 = -i1;
            j1 = l3;
        }
        if (i1 < g)
        {
            if (i1 < 1000)
            {
                if (i1 < 10)
                {
                    int k3 = j1 + 1;
                    ac[j1] = (char)(i1 + 48);
                    return k3;
                } else
                {
                    return b(i1, ac, j1);
                }
            } else
            {
                int j3 = i1 / 1000;
                return c(i1 - j3 * 1000, ac, b(j3, ac, j1));
            }
        }
        boolean flag;
        int i2;
        int k2;
        if (i1 >= h)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            i1 -= h;
            int k1;
            int l1;
            int j2;
            if (i1 >= h)
            {
                i1 -= h;
                int i3 = j1 + 1;
                ac[j1] = '2';
                j1 = i3;
            } else
            {
                int l2 = j1 + 1;
                ac[j1] = '1';
                j1 = l2;
            }
        }
        k1 = i1 / 1000;
        l1 = i1 - k1 * 1000;
        i2 = k1 / 1000;
        j2 = k1 - i2 * 1000;
        if (flag)
        {
            k2 = c(i2, ac, j1);
        } else
        {
            k2 = b(i2, ac, j1);
        }
        return c(l1, ac, c(j2, ac, k2));
    }

    public static int a(long l1, byte abyte0[], int i1)
    {
        if (l1 >= 0L) goto _L2; else goto _L1
_L1:
        if (l1 <= k) goto _L4; else goto _L3
_L3:
        int j4 = a((int)l1, abyte0, i1);
_L6:
        return j4;
_L4:
        if (l1 != 0x8000000000000000L)
        {
            break; /* Loop/switch isn't completed */
        }
        int k3 = a.length();
        int i4 = 0;
        j4 = i1;
        while (i4 < k3) 
        {
            int k4 = j4 + 1;
            abyte0[j4] = (byte)a.charAt(i4);
            i4++;
            j4 = k4;
        }
        if (true) goto _L6; else goto _L5
_L5:
        int j3 = i1 + 1;
        abyte0[i1] = 45;
        l1 = -l1;
        i1 = j3;
_L8:
        int j1;
        int k1;
        j1 = i1 + b(l1);
        k1 = j1;
        long l3;
        for (; l1 > l; l1 = l3)
        {
            k1 -= 3;
            l3 = l1 / j;
            c((int)(l1 - l3 * j), abyte0, k1);
        }

        break; /* Loop/switch isn't completed */
_L2:
        if (l1 <= l)
        {
            return a((int)l1, abyte0, i1);
        }
        if (true) goto _L8; else goto _L7
_L7:
        int i2 = (int)l1;
        int j2 = k1;
        int k2;
        for (k2 = i2; k2 >= 1000;)
        {
            int l2 = j2 - 3;
            int i3 = k2 / 1000;
            c(k2 - i3 * 1000, abyte0, l2);
            k2 = i3;
            j2 = l2;
        }

        b(k2, abyte0, i1);
        return j1;
    }

    public static int a(long l1, char ac[], int i1)
    {
        int j1;
        int k1;
        if (l1 < 0L)
        {
            if (l1 > k)
            {
                return a((int)l1, ac, i1);
            }
            if (l1 == 0x8000000000000000L)
            {
                int k3 = a.length();
                a.getChars(0, k3, ac, i1);
                return i1 + k3;
            }
            int j3 = i1 + 1;
            ac[i1] = '-';
            l1 = -l1;
            i1 = j3;
        } else
        if (l1 <= l)
        {
            return a((int)l1, ac, i1);
        }
        j1 = i1 + b(l1);
        k1 = j1;
        long l3;
        for (; l1 > l; l1 = l3)
        {
            k1 -= 3;
            l3 = l1 / j;
            c((int)(l1 - l3 * j), ac, k1);
        }

        int i2 = (int)l1;
        int j2 = k1;
        int k2;
        for (k2 = i2; k2 >= 1000;)
        {
            int l2 = j2 - 3;
            int i3 = k2 / 1000;
            c(k2 - i3 * 1000, ac, l2);
            k2 = i3;
            j2 = l2;
        }

        b(k2, ac, i1);
        return j1;
    }

    public static String a(double d1)
    {
        return Double.toString(d1);
    }

    public static String a(int i1)
    {
        if (i1 < e.length)
        {
            if (i1 >= 0)
            {
                return e[i1];
            }
            int j1 = -1 + -i1;
            if (j1 < f.length)
            {
                return f[j1];
            }
        }
        return Integer.toString(i1);
    }

    public static String a(long l1)
    {
        if (l1 <= 0x7fffffffL && l1 >= 0xffffffff80000000L)
        {
            return a((int)l1);
        } else
        {
            return Long.toString(l1);
        }
    }

    private static int b(int i1, byte abyte0[], int j1)
    {
        int k1 = i1 << 2;
        char ac[] = b;
        int l1 = k1 + 1;
        char c1 = ac[k1];
        if (c1 != 0)
        {
            int l2 = j1 + 1;
            abyte0[j1] = (byte)c1;
            j1 = l2;
        }
        char ac1[] = b;
        int i2 = l1 + 1;
        char c2 = ac1[l1];
        if (c2 != 0)
        {
            int k2 = j1 + 1;
            abyte0[j1] = (byte)c2;
            j1 = k2;
        }
        int j2 = j1 + 1;
        abyte0[j1] = (byte)b[i2];
        return j2;
    }

    private static int b(int i1, char ac[], int j1)
    {
        int k1 = i1 << 2;
        char ac1[] = b;
        int l1 = k1 + 1;
        char c1 = ac1[k1];
        if (c1 != 0)
        {
            int l2 = j1 + 1;
            ac[j1] = c1;
            j1 = l2;
        }
        char ac2[] = b;
        int i2 = l1 + 1;
        char c2 = ac2[l1];
        if (c2 != 0)
        {
            int k2 = j1 + 1;
            ac[j1] = c2;
            j1 = k2;
        }
        int j2 = j1 + 1;
        ac[j1] = b[i2];
        return j2;
    }

    private static int b(long l1)
    {
        int i1 = 10;
        for (long l2 = i; l1 >= l2 && i1 != 19; l2 = (l2 << 3) + (l2 << 1))
        {
            i1++;
        }

        return i1;
    }

    private static int c(int i1, byte abyte0[], int j1)
    {
        int k1 = i1 << 2;
        int l1 = j1 + 1;
        byte abyte1[] = d;
        int i2 = k1 + 1;
        abyte0[j1] = abyte1[k1];
        int j2 = l1 + 1;
        byte abyte2[] = d;
        int k2 = i2 + 1;
        abyte0[l1] = abyte2[i2];
        int l2 = j2 + 1;
        abyte0[j2] = d[k2];
        return l2;
    }

    private static int c(int i1, char ac[], int j1)
    {
        int k1 = i1 << 2;
        int l1 = j1 + 1;
        char ac1[] = c;
        int i2 = k1 + 1;
        ac[j1] = ac1[k1];
        int j2 = l1 + 1;
        char ac2[] = c;
        int k2 = i2 + 1;
        ac[l1] = ac2[i2];
        int l2 = j2 + 1;
        ac[j2] = c[k2];
        return l2;
    }

    static 
    {
        b = new char[4000];
        c = new char[4000];
        int i1 = 0;
        int j1 = 0;
        for (; i1 < 10; i1++)
        {
            char c1 = (char)(i1 + 48);
            char c2;
            int l1;
            if (i1 == 0)
            {
                c2 = '\0';
            } else
            {
                c2 = c1;
            }
            for (l1 = 0; l1 < 10;)
            {
                char c3 = (char)(l1 + 48);
                char c4;
                int i2;
                if (i1 == 0 && l1 == 0)
                {
                    c4 = '\0';
                } else
                {
                    c4 = c3;
                }
                i2 = j1;
                for (int j2 = 0; j2 < 10; j2++)
                {
                    char c5 = (char)(j2 + 48);
                    b[i2] = c2;
                    b[i2 + 1] = c4;
                    b[i2 + 2] = c5;
                    c[i2] = c1;
                    c[i2 + 1] = c3;
                    c[i2 + 2] = c5;
                    i2 += 4;
                }

                l1++;
                j1 = i2;
            }

        }

        d = new byte[4000];
        for (int k1 = 0; k1 < 4000; k1++)
        {
            d[k1] = (byte)c[k1];
        }

    }
}
