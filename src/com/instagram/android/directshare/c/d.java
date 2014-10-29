// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.widget.ListView;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.android.directshare.a.a;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.f.a.b.c;

// Referenced classes of package com.instagram.android.directshare.c:
//            c, o, a, t

final class d extends j
{

    final com.instagram.android.directshare.c.c a;

    d(com.instagram.android.directshare.c.c c1)
    {
        a = c1;
        super();
    }

    private void a(c c1)
    {
        super.a(c1);
        com.instagram.android.directshare.c.c.a(a).a(false);
        c.b(a);
        com.instagram.android.directshare.c.c.c(a).a();
        if (!c.d(a))
        {
            com.instagram.android.directshare.a.a.a(com.instagram.android.directshare.c.t.a().f());
            com.instagram.android.directshare.c.c.e(a);
        }
        if (com.instagram.android.directshare.c.t.a().c())
        {
            com.instagram.android.directshare.a.a.a(com.instagram.android.directshare.c.c.c(a).getCount());
        }
        com.instagram.android.directshare.f.a.a().b();
        if (com.instagram.android.directshare.c.c.f(a))
        {
            a.s_();
            c.g(a);
        }
        if (c.h(a).getLastVisiblePosition() == -1 + c.h(a).getCount())
        {
            com.instagram.android.directshare.c.c.a(a).a();
        }
    }

    public final void a()
    {
        super.a();
        com.instagram.android.directshare.c.c.a(a).a(false);
        if (a.u())
        {
            f.a(a.l()).b(true);
        }
    }

    public final void a(e e)
    {
        super.a(e);
        if (a.u())
        {
            f.a(a.l()).b(false);
        }
    }

    public final volatile void a(Object obj)
    {
        a((c)obj);
    }

    public final void b(e e)
    {
        super.b(e);
        com.instagram.android.directshare.c.c.a(a).a(true);
        com.instagram.android.directshare.c.c.c(a).notifyDataSetChanged();
        if (a.n() != null)
        {
            Toast.makeText(a.n(), az.network_error, 0).show();
        }
        com.instagram.android.directshare.a.a.a();
    }
}
