// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.e;


// Referenced classes of package com.fasterxml.jackson.a.e:
//            f

public final class h extends f
{

    final int c;
    final int d;

    h(String s, int i, int j, int k)
    {
        super(s, i);
        c = j;
        d = k;
    }

    public final boolean a(int i)
    {
        return false;
    }

    public final boolean a(int i, int j)
    {
        return i == c && j == d;
    }

    public final boolean a(int ai[], int i)
    {
        return i == 2 && ai[0] == c && ai[1] == d;
    }
}
