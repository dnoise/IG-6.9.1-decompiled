// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.fasterxml.jackson.a.h;

// Referenced classes of package com.instagram.common.analytics:
//            t

final class v
    implements t
{

    private final long a;

    private v(long l)
    {
        a = l;
    }

    v(long l, byte byte0)
    {
        this(l);
    }

    public final void a(h h1)
    {
        h1.writeNumber(a);
    }

    public final String toString()
    {
        return Long.toString(a);
    }
}
