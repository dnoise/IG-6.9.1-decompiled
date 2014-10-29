// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.e;


// Referenced classes of package com.fasterxml.jackson.a.e:
//            f

public final class i extends f
{

    final int c;
    final int d;
    final int e;

    i(String s, int j, int k, int l, int i1)
    {
        super(s, j);
        c = k;
        d = l;
        e = i1;
    }

    public final boolean a(int j)
    {
        return false;
    }

    public final boolean a(int j, int k)
    {
        return false;
    }

    public final boolean a(int ai[], int j)
    {
        return j == 3 && ai[0] == c && ai[1] == d && ai[2] == e;
    }
}
