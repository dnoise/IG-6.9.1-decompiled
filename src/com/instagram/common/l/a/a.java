// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.l.a;


// Referenced classes of package com.instagram.common.l.a:
//            e

final class a extends e
{

    static final a a = new a();

    private a()
    {
    }

    public final boolean a()
    {
        return false;
    }

    public final Object b()
    {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    public final boolean equals(Object obj)
    {
        return obj == this;
    }

    public final int hashCode()
    {
        return 0x598df91c;
    }

    public final String toString()
    {
        return "Optional.absent()";
    }

}
