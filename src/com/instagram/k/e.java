// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.k;

import com.facebook.e.c.a;

// Referenced classes of package com.instagram.k:
//            d, f

final class e
    implements android.os.MessageQueue.IdleHandler
{

    final a a;
    final long b;
    final d c;

    e(d d1, a a1, long l)
    {
        c = d1;
        a = a1;
        b = l;
        super();
    }

    public final boolean queueIdle()
    {
        long l = a.a();
        d _tmp = c;
        com.instagram.k.d.a(com.instagram.k.d.a(c), l, b, a.b());
        a.b(com.instagram.k.f.a(com.instagram.k.d.a(c)));
        d.b(c);
        return false;
    }
}
