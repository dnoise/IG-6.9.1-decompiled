// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.d;

import com.instagram.filterkit.e.a;

final class g
{

    public final String a;
    public final a b;
    public int c;

    private g(String s, a a1)
    {
        a = s;
        b = a1;
        c = 0;
    }

    g(String s, a a1, byte byte0)
    {
        this(s, a1);
    }

    public final boolean equals(Object obj)
    {
        return obj != null && (obj instanceof g) && ((g)obj).b.b() == b.b();
    }

    public final int hashCode()
    {
        return b.b();
    }
}
