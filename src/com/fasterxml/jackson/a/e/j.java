// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.e;


// Referenced classes of package com.fasterxml.jackson.a.e:
//            f

public final class j extends f
{

    final int c[];
    final int d;

    j(String s, int i, int ai[], int k)
    {
        super(s, i);
        if (k < 3)
        {
            throw new IllegalArgumentException("Qlen must >= 3");
        } else
        {
            c = ai;
            d = k;
            return;
        }
    }

    public final boolean a(int i)
    {
        return false;
    }

    public final boolean a(int i, int k)
    {
        return false;
    }

    public final boolean a(int ai[], int i)
    {
        if (i == d) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int k = 0;
label0:
        do
        {
label1:
            {
                if (k >= i)
                {
                    break label1;
                }
                if (ai[k] != c[k])
                {
                    break label0;
                }
                k++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }
}
