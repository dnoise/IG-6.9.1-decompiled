// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Handler;
import com.instagram.a.f;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.g.c;

// Referenced classes of package com.instagram.android.login.fragment:
//            ad, am

final class al extends a
{

    final ad a;

    private al(ad ad1)
    {
        a = ad1;
        super();
    }

    al(ad ad1, byte byte0)
    {
        this(ad1);
    }

    private void a(Boolean boolean1)
    {
        if (boolean1.booleanValue())
        {
            ad.g(a).post(new am(this));
        }
    }

    public final void a()
    {
        f.a(a.l()).b(true);
    }

    protected final void a(j j1)
    {
        f.a(a.l()).b(false);
        if (c.b(j1))
        {
            c.c(j1);
            return;
        } else
        {
            com.instagram.o.a.a.a(a.n(), j1.b(), j1.i(), null);
            return;
        }
    }

    protected final volatile void a(Object obj)
    {
        a((Boolean)obj);
    }
}
