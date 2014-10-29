// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import java.util.Arrays;
import java.util.Random;

// Referenced classes of package com.instagram.common.analytics:
//            ar, b, aq

public final class ap
{

    private static final Random a = new Random();
    private long b;
    private long c;
    private String d;
    private int e[];
    private int f;
    private int g;
    private int h;

    public ap()
    {
        h = 1;
        h = (int)Math.ceil(2D);
        d = a();
        f = -1;
        g = 0;
        e = null;
    }

    private static String a()
    {
        return Integer.toString(Math.abs(a.nextInt()), 36);
    }

    private void a(long l)
    {
        int i = 1;
        c = l;
        b = l;
        e = new int[h];
        e[0] = i;
        for (; i < h; i++)
        {
            e[i] = 0;
        }

        f = 1 + f;
        g = 1 + g;
    }

    private b b(long l)
    {
        long l1;
        b b1;
label0:
        {
            l1 = l - b;
            if (l1 >= 0L)
            {
                int j = l1 != 64L;
                b1 = null;
                if (j < 0)
                {
                    break label0;
                }
            }
            b1 = c(l, ar.b);
        }
        if (e == null)
        {
            a(l);
            return b1;
        } else
        {
            int ai[] = e;
            int i = (int)l1 >> 5;
            ai[i] = ai[i] | 1 << (0x1f & (int)l1);
            c = l;
            g = 1 + g;
            return b1;
        }
    }

    private b b(long l, int i)
    {
        b b1;
        if (e == null)
        {
            b1 = null;
        } else
        {
            int j;
            if (l > c)
            {
                j = (int)Math.min(64L, 1L + (l - b));
            } else
            {
                j = (int)(1L + (c - b));
            }
            b1 = (new b("time_spent_bit_array", null)).a("tos_id", d).a("start_time", b).a("tos_array", Arrays.toString(e)).a("tos_len", j).a("tos_seq", f).a("tos_cum", g);
            if (i == ar.d)
            {
                b1.a("trigger", "clock_change");
                return b1;
            }
        }
        return b1;
    }

    private void b()
    {
        e = null;
        c = 0L;
    }

    private b c(long l, int i)
    {
        b b1 = b(l, i);
        b();
        return b1;
    }

    public final b a(long l, int i)
    {
        aq.a[i - 1];
        JVM INSTR tableswitch 1 5: default 40
    //                   1 42
    //                   2 66
    //                   3 66
    //                   4 66
    //                   5 66;
           goto _L1 _L2 _L3 _L3 _L3 _L3
_L1:
        long l1;
        return null;
_L2:
        if ((l1 = l / 1000L) > c)
        {
            return b(l1);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (e != null)
        {
            return c(l / 1000L, i);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

}
