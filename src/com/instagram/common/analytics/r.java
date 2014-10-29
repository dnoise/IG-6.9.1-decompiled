// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.fasterxml.jackson.a.h;

// Referenced classes of package com.instagram.common.analytics:
//            t

final class r
    implements t
{

    private final boolean a;

    private r(boolean flag)
    {
        a = flag;
    }

    r(boolean flag, byte byte0)
    {
        this(flag);
    }

    public final void a(h h1)
    {
        h1.writeBoolean(a);
    }

    public final String toString()
    {
        return Boolean.toString(a);
    }
}
