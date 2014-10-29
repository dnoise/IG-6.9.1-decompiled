// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.filters;

import java.nio.Buffer;
import java.nio.ByteBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.common.filters:
//            j

public final class i
{

    private j a[];
    private int b;

    private i(int k)
    {
        b = 42;
        a = new j[b];
    }

    public i(float af[])
    {
        b = af.length / 2;
        a = new j[b];
        for (int k = 0; k < b; k++)
        {
            a[k] = new j(this, (byte)0);
            a[k].a[0] = af[k * 2];
            a[k].a[1] = af[1 + k * 2];
        }

    }

    private i a()
    {
        i k = new i(42);
        for (int l = 0; l < 42; l++)
        {
            float f = (float)l / 42F;
            k.a[l] = a(a, b, f);
        }

        return k;
    }

    private j a(j j1, j j2, j j3, j j4, float f)
    {
        float f1 = f * (f * f);
        float f2 = f * f;
        j j5 = new j(this, (byte)0);
        j5.a[0] = ((-0.5F * f + 1.0F * f2) - 0.5F * f1) * j1.a[0] + (1.0F + -2.5F * f2 + 1.5F * f1) * j2.a[0] + (0.5F * f + 2.0F * f2 + -1.5F * f1) * j3.a[0] + (-0.5F * f2 + 0.5F * f1) * j4.a[0];
        j5.a[1] = ((-0.5F * f + 1.0F * f2) - 0.5F * f1) * j1.a[1] + (1.0F + -2.5F * f2 + 1.5F * f1) * j2.a[1] + (0.5F * f + 2.0F * f2 + -1.5F * f1) * j3.a[1] + (f2 * -0.5F + f1 * 0.5F) * j4.a[1];
        return j5;
    }

    private j a(j aj[], int k, float f)
    {
        int l = k - 1;
        float f1 = f * (float)l;
        int i1 = (int)f1;
        float f2 = f1 - (float)i1;
        j j1 = new j(this, (byte)0);
        j j2;
        if (i1 == 0)
        {
            j1.a[0] = aj[0].a[0] - (aj[1].a[0] - aj[0].a[0]);
            j1.a[1] = aj[0].a[1] - (aj[1].a[1] - aj[0].a[1]);
        } else
        {
            j1 = aj[i1 - 1];
        }
        j2 = new j(this, (byte)0);
        if (i1 == l - 1)
        {
            j2.a[0] = aj[i1 + 1].a[0] - (aj[i1].a[0] - aj[i1 + 1].a[0]);
            j2.a[1] = aj[i1 + 1].a[1] - (aj[i1].a[1] - aj[i1 + 1].a[1]);
        } else
        {
            j2 = aj[i1 + 2];
        }
        return a(j1, aj[i1], aj[i1 + 1], j2, f2);
    }

    private Buffer a(ByteBuffer bytebuffer, int k, int l)
    {
        j j1 = a[0];
        j j2 = a[1];
        int i1 = 0;
        int k1 = 0;
        while (i1 < 256) 
        {
            float f = (float)i1 / 255F;
            if (f > j2.a[0] && k1 < -2 + b)
            {
                k1++;
                j1 = a[k1];
                j2 = a[k1 + 1];
            }
            float f1 = j2.a[0] - j1.a[0];
            float f2;
            byte byte0;
            if (f1 > 1E-07F)
            {
                f2 = (j2.a[1] - j1.a[1]) / f1;
            } else
            {
                f2 = 0.0F;
            }
            byte0 = (byte)(int)(255F * Math.max(Math.min(1.0F, j1.a[1] + f2 * (f - j1.a[0])), 0.0F));
            bytebuffer.put(k + i1, byte0);
            i1++;
        }
        return bytebuffer;
    }

    public final void a(ByteBuffer bytebuffer, int k)
    {
        a().a(bytebuffer, k, 256);
    }
}
