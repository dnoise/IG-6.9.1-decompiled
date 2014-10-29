// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import com.instagram.android.l.a.e;
import com.instagram.feed.c.p;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.a.a:
//            m

final class n
    implements e
{

    final m a;

    n(m m1)
    {
        a = m1;
        super();
    }

    public final boolean a(int i, int j)
    {
        if (m.a(a) != null)
        {
            p.b(m.a(a), i, j, m.b(a), m.c(a));
        }
        l l1 = m.a(a);
        m.a(a, "error");
        if (i == 1 && l1 != null && l1.x())
        {
            m.j();
            l1.f(null);
        }
        return true;
    }
}
