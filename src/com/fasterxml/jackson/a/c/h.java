// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;


public final class h
{

    static final String a = "-9223372036854775808".substring(1);
    static final String b = "9223372036854775807";

    public static double a(String s, double d1)
    {
        String s1;
        if (s != null)
        {
            if ((s1 = s.trim()).length() != 0)
            {
                double d2;
                try
                {
                    d2 = d(s1);
                }
                catch (NumberFormatException numberformatexception)
                {
                    return d1;
                }
                return d2;
            }
        }
        return d1;
    }

    public static int a(String s)
    {
        int i;
        char c1;
        int j;
        int k;
        int l;
        i = 1;
        c1 = s.charAt(0);
        j = s.length();
        if (c1 == '-')
        {
            k = i;
        } else
        {
            k = 0;
        }
        if (k == 0) goto _L2; else goto _L1
_L1:
        if (j != i && j <= 10) goto _L4; else goto _L3
_L3:
        l = Integer.parseInt(s);
_L8:
        return l;
_L4:
        c1 = s.charAt(i);
        i = 2;
_L6:
        if (c1 > '9' || c1 < '0')
        {
            return Integer.parseInt(s);
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (j > 9)
        {
            return Integer.parseInt(s);
        }
        if (true) goto _L6; else goto _L5
_L5:
        int j1;
        l = c1 - 48;
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        int i1 = i + 1;
        char c2 = s.charAt(i);
        if (c2 > '9' || c2 < '0')
        {
            return Integer.parseInt(s);
        }
        l = l * 10 + (c2 - 48);
        if (i1 >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = i1 + 1;
        char c3 = s.charAt(i1);
        if (c3 > '9' || c3 < '0')
        {
            return Integer.parseInt(s);
        }
        l = l * 10 + (c3 - 48);
        if (j1 >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
_L9:
        int k1;
        k1 = j1 + 1;
        char c4 = s.charAt(j1);
        if (c4 > '9' || c4 < '0')
        {
            return Integer.parseInt(s);
        }
        l = l * 10 + (c4 - 48);
        if (k1 < j)
        {
            break MISSING_BLOCK_LABEL_263;
        }
        if (k == 0) goto _L8; else goto _L7
_L7:
        return -l;
        j1 = k1;
          goto _L9
    }

    public static int a(String s, int i)
    {
        int j = 0;
        if (s != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        String s1;
        int k;
        s1 = s.trim();
        k = s1.length();
        if (k == 0) goto _L1; else goto _L3
_L3:
        if (k <= 0) goto _L5; else goto _L4
_L4:
        char c2 = s1.charAt(0);
        if (c2 != '+') goto _L7; else goto _L6
_L6:
        int l;
        String s2;
        s2 = s1.substring(1);
        l = s2.length();
_L9:
        if (j < l)
        {
            char c1 = s2.charAt(j);
            if (c1 > '9' || c1 < '0')
            {
                int i1;
                double d1;
                try
                {
                    d1 = d(s2);
                }
                catch (NumberFormatException numberformatexception1)
                {
                    return i;
                }
                return (int)d1;
            }
            j++;
            continue; /* Loop/switch isn't completed */
        } else
        {
            try
            {
                i1 = Integer.parseInt(s2);
            }
            catch (NumberFormatException numberformatexception)
            {
                return i;
            }
            return i1;
        }
_L7:
        if (c2 == '-')
        {
            j = 1;
            l = k;
            s2 = s1;
            continue; /* Loop/switch isn't completed */
        }
_L5:
        l = k;
        s2 = s1;
        j = 0;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static int a(char ac[], int i, int j)
    {
        int k = -48 + ac[i];
        int l = j + i;
        int i1 = i + 1;
        if (i1 < l)
        {
            k = k * 10 + (-48 + ac[i1]);
            int j1 = i1 + 1;
            if (j1 < l)
            {
                k = k * 10 + (-48 + ac[j1]);
                int k1 = j1 + 1;
                if (k1 < l)
                {
                    k = k * 10 + (-48 + ac[k1]);
                    int l1 = k1 + 1;
                    if (l1 < l)
                    {
                        k = k * 10 + (-48 + ac[l1]);
                        int i2 = l1 + 1;
                        if (i2 < l)
                        {
                            k = k * 10 + (-48 + ac[i2]);
                            int j2 = i2 + 1;
                            if (j2 < l)
                            {
                                k = k * 10 + (-48 + ac[j2]);
                                int k2 = j2 + 1;
                                if (k2 < l)
                                {
                                    k = k * 10 + (-48 + ac[k2]);
                                    int l2 = k2 + 1;
                                    if (l2 < l)
                                    {
                                        k = k * 10 + (-48 + ac[l2]);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return k;
    }

    public static long a(String s, long l)
    {
        int i = 0;
        if (s != null) goto _L2; else goto _L1
_L1:
        return l;
_L2:
        String s1;
        int j;
        s1 = s.trim();
        j = s1.length();
        if (j == 0) goto _L1; else goto _L3
_L3:
        if (j <= 0) goto _L5; else goto _L4
_L4:
        char c2 = s1.charAt(0);
        if (c2 != '+') goto _L7; else goto _L6
_L6:
        int k;
        String s2;
        s2 = s1.substring(1);
        k = s2.length();
_L9:
        if (i < k)
        {
            char c1 = s2.charAt(i);
            if (c1 > '9' || c1 < '0')
            {
                long l1;
                double d1;
                try
                {
                    d1 = d(s2);
                }
                catch (NumberFormatException numberformatexception1)
                {
                    return l;
                }
                return (long)d1;
            }
            i++;
            continue; /* Loop/switch isn't completed */
        } else
        {
            try
            {
                l1 = Long.parseLong(s2);
            }
            catch (NumberFormatException numberformatexception)
            {
                return l;
            }
            return l1;
        }
_L7:
        if (c2 == '-')
        {
            i = 1;
            k = j;
            s2 = s1;
            continue; /* Loop/switch isn't completed */
        }
_L5:
        k = j;
        s2 = s1;
        i = 0;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static boolean a(char ac[], int i, int j, boolean flag)
    {
        String s;
        int k;
        if (flag)
        {
            s = a;
        } else
        {
            s = b;
        }
        k = s.length();
        if (j < k)
        {
            return true;
        }
        if (j > k)
        {
            return false;
        }
        for (int l = 0; l < k; l++)
        {
            int i1 = ac[i + l] - s.charAt(l);
            if (i1 != 0)
            {
                return i1 < 0;
            }
        }

        return true;
    }

    public static long b(String s)
    {
        if (s.length() <= 9)
        {
            return (long)a(s);
        } else
        {
            return Long.parseLong(s);
        }
    }

    public static long b(char ac[], int i, int j)
    {
        int k = j - 9;
        return 0x3b9aca00L * (long)a(ac, i, k) + (long)a(ac, k + i, 9);
    }

    public static boolean c(String s)
    {
        String s1;
        int i;
        int j;
        s1 = b;
        i = s1.length();
        j = s.length();
        if (j >= i) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (j > i)
        {
            return false;
        }
        int k = 0;
        do
        {
            if (k < i)
            {
label0:
                {
                    int l = s.charAt(k) - s1.charAt(k);
                    if (l == 0)
                    {
                        break label0;
                    }
                    if (l >= 0)
                    {
                        return false;
                    }
                }
            }
            if (true)
            {
                continue;
            }
            k++;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static double d(String s)
    {
        if ("2.2250738585072012e-308".equals(s))
        {
            return 4.9406564584124654E-324D;
        } else
        {
            return Double.parseDouble(s);
        }
    }

}
