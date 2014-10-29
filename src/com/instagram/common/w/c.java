// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.w;

import android.hardware.SensorEvent;
import com.instagram.common.l.b.a;

// Referenced classes of package com.instagram.common.w:
//            d, e, b

final class c
{

    final long a = 0x3b9aca00L;
    private final a b = new a();
    private long c;
    private int d;

    c()
    {
        d = com.instagram.common.w.d.a;
    }

    final void a()
    {
        b.c();
    }

    final void a(SensorEvent sensorevent)
    {
        int i = b.b();
        if (i == 0)
        {
            c = 0x3b9aca00L + sensorevent.timestamp;
            b.a(new e(sensorevent));
            return;
        }
        if (sensorevent.timestamp < c && i < 32 || i < 10)
        {
            b.a(new e(sensorevent));
            return;
        } else
        {
            e e1 = (e)b.a();
            e1.a(sensorevent);
            b.a(e1);
            return;
        }
    }

    final boolean b()
    {
        int i;
        int j;
        int k;
        i = 0;
        j = 0;
        k = 0;
_L5:
        boolean flag;
        boolean flag1;
        if (i >= b.b())
        {
            break MISSING_BLOCK_LABEL_216;
        }
        e e1 = (e)b.a(i);
        if (e1.a > 13.04284F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (e1.a < -13.04284F)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        com.instagram.common.w.b.a[-1 + d];
        JVM INSTR tableswitch 1 3: default 96
    //                   1 114
    //                   2 150
    //                   3 183;
           goto _L1 _L2 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L4:
        break MISSING_BLOCK_LABEL_183;
_L6:
        i++;
          goto _L5
_L2:
        if (flag)
        {
            d = d.b;
            k++;
        } else
        if (flag1)
        {
            d = d.c;
            j++;
        }
          goto _L6
_L3:
        if (flag1)
        {
            d = d.c;
            j++;
        } else
        if (!flag)
        {
            d = com.instagram.common.w.d.a;
        }
          goto _L6
        if (flag)
        {
            d = d.b;
            k++;
        } else
        if (!flag1)
        {
            d = com.instagram.common.w.d.a;
        }
          goto _L6
        return k >= 2 && j >= 2;
    }
}
