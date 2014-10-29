// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import com.instagram.a.f;
import com.instagram.android.directshare.c.x;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.common.y.d;
import com.instagram.ui.d.b;

// Referenced classes of package com.instagram.android.directshare.e:
//            l, b, a

final class k extends a
{

    final com.instagram.android.directshare.e.b a;
    private final com.instagram.f.c.a b;
    private final l c;

    public k(com.instagram.android.directshare.e.b b1, com.instagram.f.c.a a1, l l1)
    {
        a = b1;
        super();
        b = a1;
        c = l1;
    }

    private void c()
    {
        x.a(b);
        if (c == l.c)
        {
            com.instagram.android.directshare.e.b.e(a).a();
        } else
        {
            if (c == com.instagram.android.directshare.e.l.b)
            {
                d.a("INTENT_ACTION_PENDING_REQUEST_ACCEPTED");
            }
            com.instagram.android.directshare.e.b.f(a);
            f.a(a.l()).b();
        }
        if (c != com.instagram.android.directshare.e.l.b && !com.instagram.l.b.a.a().j())
        {
            com.instagram.android.directshare.b.a.a(a.n());
            com.instagram.l.b.a.a().k();
        }
    }

    public final void a()
    {
        com.instagram.ui.d.b.a(true, a.E());
    }

    protected final void a(j j)
    {
        com.instagram.android.directshare.e.b b1 = a;
        l _tmp = c;
        com.instagram.android.directshare.e.b.g(b1);
    }

    protected final void a(Object obj)
    {
        c();
    }

    public final void b()
    {
        com.instagram.ui.d.b.a(false, a.E());
    }
}
