// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;


// Referenced classes of package com.instagram.common.a.a:
//            d, a

final class e
    implements Runnable
{

    final com.instagram.common.l.a.e a;
    final d b;

    e(d d1, com.instagram.common.l.a.e e1)
    {
        b = d1;
        a = e1;
        super();
    }

    public final void run()
    {
        b.a.a(a);
    }
}
