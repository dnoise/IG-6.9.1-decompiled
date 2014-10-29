// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.l.a;


// Referenced classes of package com.instagram.common.l.a:
//            e

final class g extends e
{

    private final Object a;

    g(Object obj)
    {
        a = obj;
    }

    public final boolean a()
    {
        return true;
    }

    public final Object b()
    {
        return a;
    }

    public final boolean equals(Object obj)
    {
        if (obj instanceof g)
        {
            g g1 = (g)obj;
            return a.equals(g1.a);
        } else
        {
            return false;
        }
    }

    public final int hashCode()
    {
        return 0x598df91c + a.hashCode();
    }

    public final String toString()
    {
        return (new StringBuilder("Optional.of(")).append(a).append(")").toString();
    }
}
