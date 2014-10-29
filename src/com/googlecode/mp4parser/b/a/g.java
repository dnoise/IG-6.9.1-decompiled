// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.b.a;

import com.googlecode.mp4parser.b.b.b;

public final class g
{

    public int a[];
    public boolean b;

    public g()
    {
    }

    public static g a(b b1, int i)
    {
        int j = 8;
        g g1 = new g();
        g1.a = new int[i];
        int k = 0;
        int l = j;
        while (k < i) 
        {
            int i1;
            if (j != 0)
            {
                int j1 = (256 + (l + b1.b("deltaScale"))) % 256;
                int ai[];
                boolean flag;
                if (k == 0 && j1 == 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                g1.b = flag;
                j = j1;
            }
            ai = g1.a;
            if (j == 0)
            {
                i1 = l;
            } else
            {
                i1 = j;
            }
            ai[k] = i1;
            l = g1.a[k];
            k++;
        }
        return g1;
    }

    public final String toString()
    {
        return (new StringBuilder("ScalingList{scalingList=")).append(a).append(", useDefaultScalingMatrixFlag=").append(b).append('}').toString();
    }
}
