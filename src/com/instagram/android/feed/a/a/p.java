// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import com.instagram.android.l.a.c;
import com.instagram.android.l.a.d;

// Referenced classes of package com.instagram.android.feed.a.a:
//            m, s

final class p
    implements d
{

    final m a;

    p(m m1)
    {
        a = m1;
        super();
    }

    public final void a()
    {
        m.i(a).sendEmptyMessageDelayed(4, 1000L);
        if (m.a(a) != null)
        {
            com.instagram.feed.c.p.a(m.a(a), m.b(a), m.j(a).m(), m.j(a).n(), com.instagram.android.feed.a.a.m.c(a));
            com.instagram.feed.c.p.a(m.a(a), m.j(a).m(), m.j(a).n(), m.j(a).m(), m.b(a), m.e(a), com.instagram.android.feed.a.a.m.c(a), m.f(a), "finished");
        }
    }
}
