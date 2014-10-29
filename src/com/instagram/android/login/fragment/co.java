// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Handler;
import android.support.v4.app.s;
import com.instagram.api.j.a;
import com.instagram.api.j.j;

// Referenced classes of package com.instagram.android.login.fragment:
//            cq, ci, cp

final class co extends a
{

    final ci a;

    private co(ci ci1)
    {
        a = ci1;
        super();
    }

    co(ci ci1, byte byte0)
    {
        this(ci1);
    }

    public final void a()
    {
        (new cq(this)).a(a.p(), "ProgressDialog");
        super.a();
    }

    protected final void a(j j1)
    {
        com.instagram.o.a.a.a(a.n(), j1.b(), j1.i(), null);
    }

    protected final volatile void a(Object obj)
    {
    }

    public final void b()
    {
        com.instagram.base.a.a a1 = (com.instagram.base.a.a)a.p().a("ProgressDialog");
        ci.d(a).post(new cp(this, a1));
        super.b();
    }
}
