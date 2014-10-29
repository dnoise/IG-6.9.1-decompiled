// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import com.fasterxml.jackson.a.h;

// Referenced classes of package com.instagram.common.analytics:
//            t

final class x
    implements t
{

    private final String a;

    private x(String s)
    {
        a = s;
    }

    x(String s, byte byte0)
    {
        this(s);
    }

    static String a(x x1)
    {
        return x1.a;
    }

    public final void a(h h1)
    {
        h1.writeString(a);
    }

    public final String toString()
    {
        return a;
    }
}
