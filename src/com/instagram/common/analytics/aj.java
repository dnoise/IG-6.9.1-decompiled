// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;


// Referenced classes of package com.instagram.common.analytics:
//            ab

final class aj
    implements Runnable
{

    final ab a;

    private aj(ab ab1)
    {
        a = ab1;
        super();
    }

    aj(ab ab1, byte byte0)
    {
        this(ab1);
    }

    public final void run()
    {
        ab.m(a);
    }
}
