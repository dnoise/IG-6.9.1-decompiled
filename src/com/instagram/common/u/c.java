// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u;

import com.instagram.common.u.c.a;

// Referenced classes of package com.instagram.common.u:
//            a, b

final class c
    implements Runnable
{

    final com.instagram.common.u.a a;
    final String b;
    final a c;
    final b d;

    c(b b1, com.instagram.common.u.a a1, String s, a a2)
    {
        d = b1;
        a = a1;
        b = s;
        c = a2;
        super();
    }

    public final void run()
    {
        a.a().a(b, c);
    }
}
