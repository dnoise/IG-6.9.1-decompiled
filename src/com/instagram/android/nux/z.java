// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.os.Handler;
import com.instagram.android.login.fragment.RegisterParameters;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.common.i.c;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.nux:
//            g, n, af, SignedOutFragmentActivity, 
//            aa

final class z extends a
{

    final String a;
    final n b;

    z(n n1, String s)
    {
        b = n1;
        a = s;
        super();
    }

    private void a(g g1)
    {
        if (g1.a() && g1.b != null)
        {
            com.instagram.android.nux.af.a(b.l(), g1.b);
            if (g1.b())
            {
                if (b.l() instanceof SignedOutFragmentActivity)
                {
                    ((SignedOutFragmentActivity)b.l()).g();
                }
                com.instagram.android.nux.n.c(b).post(new aa(this));
                return;
            } else
            {
                com.instagram.n.a.a(g1.b.b());
                b.aC.b().a("instagram_id", g1.b.g()).a();
                com.instagram.android.nux.af.a(b.l());
                return;
            }
        }
        if (g1.b())
        {
            if (g1.e != null)
            {
                com.instagram.android.nux.n.a(b, g1.e);
                return;
            } else
            {
                com.instagram.android.nux.n.a(b);
                return;
            }
        }
        if (g1.c())
        {
            com.instagram.android.nux.n.a(b, new RegisterParameters(g1.e, g1.g, g1.c, null));
            return;
        }
        if (g1.d() && g1.b != null && g1.f != null)
        {
            com.instagram.android.nux.n.a(b, g1.b, g1.f);
            return;
        } else
        {
            b.n.c();
            n.d(b);
            c.b("FacebookLoginRequest", (new StringBuilder("bad response with code: ")).append(g1.a).toString());
            return;
        }
    }

    public final void a()
    {
        n.e(b);
    }

    protected final void a(j j1)
    {
        b.n.c();
        com.instagram.o.a.a.a(b.n(), j1.b(), j1.i(), com.instagram.android.nux.af.a(j1));
    }

    protected final volatile void a(Object obj)
    {
        a((g)obj);
    }

    public final void b()
    {
        n.f(b);
    }
}
