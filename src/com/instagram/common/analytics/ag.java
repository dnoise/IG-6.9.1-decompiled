// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;


// Referenced classes of package com.instagram.common.analytics:
//            ab

final class ag
    implements Runnable
{

    final ab a;
    private final String b;

    private ag(ab ab1, String s)
    {
        a = ab1;
        super();
        b = s;
    }

    ag(ab ab1, String s, byte byte0)
    {
        this(ab1, s);
    }

    public final void run()
    {
        ab.b(a, b);
        ab.m(a);
    }
}
