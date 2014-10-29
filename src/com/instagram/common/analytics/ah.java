// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;


// Referenced classes of package com.instagram.common.analytics:
//            ab

final class ah
    implements Runnable
{

    final ab a;
    private final String b;
    private final String c;

    private ah(ab ab1, String s, String s1)
    {
        a = ab1;
        super();
        b = s;
        c = s1;
    }

    ah(ab ab1, String s, String s1, byte byte0)
    {
        this(ab1, s, s1);
    }

    public final void run()
    {
        ab.a(a, b);
        ab.b(a, c);
        ab.m(a);
    }
}
