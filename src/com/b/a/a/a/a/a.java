// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a.a.a.a;


// Referenced classes of package com.b.a.a.a.a:
//            b

public final class a extends b
{

    private static final char a[] = {
        '+'
    };
    private static final char b[] = "0123456789ABCDEF".toCharArray();
    private final boolean c;
    private final boolean d[];

    public a(String s)
    {
        if (s.matches(".*[0-9A-Za-z].*"))
        {
            throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
        }
        if (s.contains("%"))
        {
            throw new IllegalArgumentException("The '%' character cannot be specified as 'safe'");
        } else
        {
            c = false;
            d = b(s);
            return;
        }
    }

    private static boolean[] b(String s)
    {
        int i = 0;
        char ac[] = s.toCharArray();
        int j = ac.length;
        int k = 0;
        int l = 122;
        for (; k < j; k++)
        {
            l = Math.max(ac[k], l);
        }

        boolean aflag[] = new boolean[l + 1];
        for (int i1 = 48; i1 <= 57; i1++)
        {
            aflag[i1] = true;
        }

        for (int j1 = 65; j1 <= 90; j1++)
        {
            aflag[j1] = true;
        }

        for (int k1 = 97; k1 <= 122; k1++)
        {
            aflag[k1] = true;
        }

        for (int l1 = ac.length; i < l1; i++)
        {
            aflag[ac[i]] = true;
        }

        return aflag;
    }

    protected final int a(CharSequence charsequence, int i, int j)
    {
        do
        {
            if (i >= j)
            {
                break;
            }
            char c1 = charsequence.charAt(i);
            if (c1 >= d.length || !d[c1])
            {
                break;
            }
            i++;
        } while (true);
        return i;
    }

    public final String a(String s)
    {
        int i = s.length();
        int j = 0;
        do
        {
label0:
            {
                if (j < i)
                {
                    char c1 = s.charAt(j);
                    if (c1 < d.length && d[c1])
                    {
                        break label0;
                    }
                    s = a(s, j);
                }
                return s;
            }
            j++;
        } while (true);
    }

    protected final char[] a(int i)
    {
        if (i < d.length && d[i])
        {
            return null;
        }
        if (i == 32 && c)
        {
            return a;
        }
        if (i <= 127)
        {
            char ac3[] = new char[3];
            ac3[0] = '%';
            ac3[2] = b[i & 0xf];
            ac3[1] = b[i >>> 4];
            return ac3;
        }
        if (i <= 2047)
        {
            char ac2[] = new char[6];
            ac2[0] = '%';
            ac2[3] = '%';
            ac2[5] = b[i & 0xf];
            int l2 = i >>> 4;
            ac2[4] = b[8 | l2 & 3];
            int i3 = l2 >>> 2;
            ac2[2] = b[i3 & 0xf];
            int j3 = i3 >>> 4;
            ac2[1] = b[j3 | 0xc];
            return ac2;
        }
        if (i <= 65535)
        {
            char ac1[] = new char[9];
            ac1[0] = '%';
            ac1[1] = 'E';
            ac1[3] = '%';
            ac1[6] = '%';
            ac1[8] = b[i & 0xf];
            int l1 = i >>> 4;
            ac1[7] = b[8 | l1 & 3];
            int i2 = l1 >>> 2;
            ac1[5] = b[i2 & 0xf];
            int j2 = i2 >>> 4;
            ac1[4] = b[8 | j2 & 3];
            int k2 = j2 >>> 2;
            ac1[2] = b[k2];
            return ac1;
        }
        if (i <= 0x10ffff)
        {
            char ac[] = new char[12];
            ac[0] = '%';
            ac[1] = 'F';
            ac[3] = '%';
            ac[6] = '%';
            ac[9] = '%';
            ac[11] = b[i & 0xf];
            int j = i >>> 4;
            ac[10] = b[8 | j & 3];
            int k = j >>> 2;
            ac[8] = b[k & 0xf];
            int l = k >>> 4;
            ac[7] = b[8 | l & 3];
            int i1 = l >>> 2;
            ac[5] = b[i1 & 0xf];
            int j1 = i1 >>> 4;
            ac[4] = b[8 | j1 & 3];
            int k1 = j1 >>> 2;
            ac[2] = b[k1 & 7];
            return ac;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid unicode character value ")).append(i).toString());
        }
    }

}
