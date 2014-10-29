// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e.a.a;

import com.instagram.user.c.c;
import com.instagram.user.d.a;
import com.instagram.user.d.b;
import com.instagram.user.follow.g;

final class d
    implements g
{

    final com.instagram.common.analytics.g a;
    final a b;
    final int c;

    d(com.instagram.common.analytics.g g1, a a1, int i)
    {
        a = g1;
        b = a1;
        c = i;
        super();
    }

    public final void a(c c1)
    {
        com.instagram.user.d.b.c(a, b, c, false);
    }
}
