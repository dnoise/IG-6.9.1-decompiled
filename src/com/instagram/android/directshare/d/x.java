// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.widget.Toast;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.android.c2dm.c;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.f.a.b.a;
import com.instagram.ui.d.b;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class x extends j
{

    final com.instagram.android.directshare.d.c a;

    x(com.instagram.android.directshare.d.c c1)
    {
        a = c1;
        super();
    }

    private void a(a a1)
    {
        com.instagram.android.directshare.d.c.a(a, a1.b());
        com.instagram.android.directshare.d.c.b(a);
        if (a.u())
        {
            f.a(a.l()).b();
        }
        c.a().a(com.instagram.android.directshare.d.c.c(a));
        com.instagram.android.directshare.d.c.j(a);
        c.k(a);
    }

    public final void a()
    {
        com.instagram.android.directshare.d.c.c(a, true);
        boolean flag;
        if (com.instagram.android.directshare.d.c.a(a) == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.ui.d.b.a(flag, a.E());
        if (a.u())
        {
            f.a(a.l()).b(true);
        }
    }

    public final void a(e e1)
    {
        com.instagram.android.directshare.d.c.c(a, false);
        com.instagram.ui.d.b.a(false, a.E());
        if (a.u())
        {
            f.a(a.l()).b(false);
        }
    }

    public final volatile void a(Object obj)
    {
        a((a)obj);
    }

    public final void b(e e1)
    {
        if (e1.a() && ((a)e1.b()).s() == 404)
        {
            c.l(a);
        } else
        if (!com.instagram.common.y.g.a.c(a.n()))
        {
            Toast.makeText(a.n(), az.could_not_refresh_feed, 0).show();
            return;
        }
    }
}
