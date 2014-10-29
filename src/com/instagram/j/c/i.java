// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import com.instagram.common.j.d;
import com.instagram.user.c.a;
import com.instagram.user.c.g;

// Referenced classes of package com.instagram.j.c:
//            g

final class i
    implements d
{

    final com.instagram.j.c.g a;

    i(com.instagram.j.c.g g1)
    {
        a = g1;
        super();
    }

    private void a()
    {
        g.c(a);
    }

    private boolean a(g g1)
    {
        return g1.a.equals(g.b(a).g());
    }

    public final volatile boolean a(com.instagram.common.j.a a1)
    {
        return a((g)a1);
    }

    public final void b(com.instagram.common.j.a a1)
    {
        a();
    }
}
