// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.e;


// Referenced classes of package com.fasterxml.jackson.a.e:
//            f

final class b
{

    protected final f a;
    protected final b b;
    private final int c;

    b(f f1, b b1)
    {
        a = f1;
        b = b1;
        int i;
        if (b1 == null)
        {
            i = 1;
        } else
        {
            i = 1 + b1.c;
        }
        c = i;
    }

    public final int a()
    {
        return c;
    }

    public final f a(int i, int j, int k)
    {
        if (a.hashCode() != i || !a.a(j, k)) goto _L2; else goto _L1
_L1:
        f f1 = a;
_L4:
        return f1;
_L2:
        b b1 = b;
label0:
        do
        {
label1:
            {
                if (b1 == null)
                {
                    break label1;
                }
                f1 = b1.a;
                if (f1.hashCode() == i && f1.a(j, k))
                {
                    break label0;
                }
                b1 = b1.b;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    public final f a(int i, int ai[], int j)
    {
        if (a.hashCode() != i || !a.a(ai, j)) goto _L2; else goto _L1
_L1:
        f f1 = a;
_L4:
        return f1;
_L2:
        b b1 = b;
label0:
        do
        {
label1:
            {
                if (b1 == null)
                {
                    break label1;
                }
                f1 = b1.a;
                if (f1.hashCode() == i && f1.a(ai, j))
                {
                    break label0;
                }
                b1 = b1.b;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }
}
