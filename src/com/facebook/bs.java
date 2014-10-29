// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            br, cc

final class bs
    implements Runnable
{

    final cc a;
    final br b;

    bs(br br1, cc cc1)
    {
        b = br1;
        a = cc1;
        super();
    }

    public final void run()
    {
        a.a(b.c, b.a, b.b);
    }
}
