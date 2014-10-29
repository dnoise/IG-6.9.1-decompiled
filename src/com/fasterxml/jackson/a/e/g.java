// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.e;


// Referenced classes of package com.fasterxml.jackson.a.e:
//            f

public final class g extends f
{

    static final g c = new g("", 0, 0);
    final int d;

    g(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    static g b()
    {
        return c;
    }

    public final boolean a(int i)
    {
        return i == d;
    }

    public final boolean a(int i, int j)
    {
        return i == d && j == 0;
    }

    public final boolean a(int ai[], int i)
    {
        return i == 1 && ai[0] == d;
    }

}
