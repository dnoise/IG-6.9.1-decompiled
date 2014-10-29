// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import com.instagram.android.feed.a.a.d;
import com.instagram.android.fragment.a;
import com.instagram.feed.c.q;
import com.instagram.feed.d.l;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.android.feed.a:
//            a, d, h

final class c
    implements d
{

    final int a;
    final com.instagram.android.feed.a.a b;

    c(com.instagram.android.feed.a.a a1, int i)
    {
        b = a1;
        a = i;
        super();
    }

    public final void a(l l1)
    {
        b.a.al().a(l1);
    }

    public final void a(l l1, int i)
    {
        if (b.c().p_() && l1.aa() && l1.d().equals(com.instagram.l.b.a.a().C()))
        {
            com.instagram.common.y.c.a.a().execute(new com.instagram.android.feed.a.d(this, l1));
        }
        b.a.al().a(l1, i);
        if (a == com.instagram.android.feed.a.h.a && q.a(l1))
        {
            q.a().a(l1, i, b.c());
        }
    }

    public final void b(l l1)
    {
        b.a.al().b(l1);
    }

    public final void b(l l1, int i)
    {
        b.a.al().b(l1, i);
    }
}
