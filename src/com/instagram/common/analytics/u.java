// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.fasterxml.jackson.a.h;

// Referenced classes of package com.instagram.common.analytics:
//            t

final class u
    implements t
{

    private final int a;

    private u(int i)
    {
        a = i;
    }

    u(int i, byte byte0)
    {
        this(i);
    }

    public final void a(h h1)
    {
        h1.writeNumber(a);
    }

    public final String toString()
    {
        return Integer.toString(a);
    }
}
