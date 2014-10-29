// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.utils;

import java.util.StringTokenizer;

// Referenced classes of package ch.boye.httpclientandroidlib.client.utils:
//            Idn

public class Rfc3492Idn
    implements Idn
{

    private static final String ACE_PREFIX = "xn--";
    private static final int base = 36;
    private static final int damp = 700;
    private static final char delimiter = 45;
    private static final int initial_bias = 72;
    private static final int initial_n = 128;
    private static final int skew = 38;
    private static final int tmax = 26;
    private static final int tmin = 1;

    public Rfc3492Idn()
    {
    }

    private int adapt(int i, int j, boolean flag)
    {
        int k;
        int l;
        int i1;
        if (flag)
        {
            k = i / 700;
        } else
        {
            k = i / 2;
        }
        l = k + k / j;
        for (i1 = 0; l > 455; i1 += 36)
        {
            l /= 35;
        }

        return i1 + (l * 36) / (l + 38);
    }

    private int digit(char c)
    {
        if (c >= 'A' && c <= 'Z')
        {
            return c - 65;
        }
        if (c >= 'a' && c <= 'z')
        {
            return c - 97;
        }
        if (c >= '0' && c <= '9')
        {
            return 26 + (c - 48);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("illegal digit: ")).append(c).toString());
        }
    }

    protected String decode(String s)
    {
        int i = 72;
        StringBuilder stringbuilder = new StringBuilder(s.length());
        int j = s.lastIndexOf('-');
        int k;
        int l;
        if (j != -1)
        {
            stringbuilder.append(s.subSequence(0, j));
            s = s.substring(j + 1);
            k = 128;
            l = 0;
        } else
        {
            k = 128;
            l = 0;
        }
        while (s.length() > 0) 
        {
            int i1 = 36;
            int j1 = 1;
            int k1 = l;
            do
            {
                if (s.length() == 0)
                {
                    break;
                }
                char c = s.charAt(0);
                s = s.substring(1);
                int k2 = digit(c);
                k1 += k2 * j1;
                int l2;
                if (i1 <= i + 1)
                {
                    l2 = 1;
                } else
                if (i1 >= i + 26)
                {
                    l2 = 26;
                } else
                {
                    l2 = i1 - i;
                }
                if (k2 < l2)
                {
                    break;
                }
                j1 *= 36 - l2;
                i1 += 36;
            } while (true);
            int l1 = k1 - l;
            int i2 = 1 + stringbuilder.length();
            boolean flag;
            int j2;
            if (l == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            i = adapt(l1, i2, flag);
            k += k1 / (1 + stringbuilder.length());
            j2 = k1 % (1 + stringbuilder.length());
            stringbuilder.insert(j2, (char)k);
            l = j2 + 1;
        }
        return stringbuilder.toString();
    }

    public String toUnicode(String s)
    {
        StringBuilder stringbuilder = new StringBuilder(s.length());
        String s1;
        for (StringTokenizer stringtokenizer = new StringTokenizer(s, "."); stringtokenizer.hasMoreTokens(); stringbuilder.append(s1))
        {
            s1 = stringtokenizer.nextToken();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append('.');
            }
            if (s1.startsWith("xn--"))
            {
                s1 = decode(s1.substring(4));
            }
        }

        return stringbuilder.toString();
    }
}
