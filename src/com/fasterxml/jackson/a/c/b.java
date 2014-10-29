// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.c;

import java.util.Arrays;

public final class b
{

    static final int a[];
    static final int b[];
    static final int c[];
    static final int d[];
    static final int e[];
    static final int f[];
    static final int g[];
    private static final char h[];
    private static final byte i[];

    public static int a(int j)
    {
        if (j > 127)
        {
            return -1;
        } else
        {
            return g[j];
        }
    }

    public static void a(StringBuilder stringbuilder, String s)
    {
        int ai[] = f;
        int j = ai.length;
        int k = 0;
        int l = s.length();
        while (k < l) 
        {
            char c1 = s.charAt(k);
            if (c1 >= j || ai[c1] == 0)
            {
                stringbuilder.append(c1);
            } else
            {
                stringbuilder.append('\\');
                int i1 = ai[c1];
                if (i1 < 0)
                {
                    stringbuilder.append('u');
                    stringbuilder.append('0');
                    stringbuilder.append('0');
                    stringbuilder.append(h[c1 >> 4]);
                    stringbuilder.append(h[c1 & 0xf]);
                } else
                {
                    stringbuilder.append((char)i1);
                }
            }
            k++;
        }
    }

    public static int[] a()
    {
        return a;
    }

    public static int[] b()
    {
        return b;
    }

    public static int[] c()
    {
        return c;
    }

    public static int[] d()
    {
        return d;
    }

    public static int[] e()
    {
        return e;
    }

    public static int[] f()
    {
        return f;
    }

    public static char[] g()
    {
        return (char[])(char[])h.clone();
    }

    public static byte[] h()
    {
        return (byte[])(byte[])i.clone();
    }

    static 
    {
        char ac[] = "0123456789ABCDEF".toCharArray();
        h = ac;
        int j = ac.length;
        i = new byte[j];
        for (int k = 0; k < j; k++)
        {
            i[k] = (byte)h[k];
        }

        int ai[] = new int[256];
        for (int l = 0; l < 32; l++)
        {
            ai[l] = -1;
        }

        ai[34] = 1;
        ai[92] = 1;
        a = ai;
        int ai1[] = new int[256];
        System.arraycopy(a, 0, ai1, 0, a.length);
        int i1 = 128;
        while (i1 < 256) 
        {
            byte byte0;
            if ((i1 & 0xe0) == 192)
            {
                byte0 = 2;
            } else
            if ((i1 & 0xf0) == 224)
            {
                byte0 = 3;
            } else
            if ((i1 & 0xf8) == 240)
            {
                byte0 = 4;
            } else
            {
                byte0 = -1;
            }
            ai1[i1] = byte0;
            i1++;
        }
        b = ai1;
        int ai2[] = new int[256];
        Arrays.fill(ai2, -1);
        for (int j1 = 33; j1 < 256; j1++)
        {
            if (Character.isJavaIdentifierPart((char)j1))
            {
                ai2[j1] = 0;
            }
        }

        ai2[64] = 0;
        ai2[35] = 0;
        ai2[42] = 0;
        ai2[45] = 0;
        ai2[43] = 0;
        c = ai2;
        int ai3[] = new int[256];
        System.arraycopy(c, 0, ai3, 0, c.length);
        Arrays.fill(ai3, 128, 128, 0);
        d = ai3;
        e = new int[256];
        System.arraycopy(b, 128, e, 128, 128);
        Arrays.fill(e, 0, 32, -1);
        e[9] = 0;
        e[10] = 10;
        e[13] = 13;
        e[42] = 42;
        int ai4[] = new int[128];
        for (int k1 = 0; k1 < 32; k1++)
        {
            ai4[k1] = -1;
        }

        ai4[34] = 34;
        ai4[92] = 92;
        ai4[8] = 98;
        ai4[9] = 116;
        ai4[12] = 102;
        ai4[10] = 110;
        ai4[13] = 114;
        f = ai4;
        int ai5[] = new int[128];
        g = ai5;
        Arrays.fill(ai5, -1);
        for (int l1 = 0; l1 < 10; l1++)
        {
            g[l1 + 48] = l1;
        }

        for (int i2 = 0; i2 < 6; i2++)
        {
            g[i2 + 97] = i2 + 10;
            g[i2 + 65] = i2 + 10;
        }

    }
}
