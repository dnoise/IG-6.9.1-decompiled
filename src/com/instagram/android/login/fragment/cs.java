// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.app.Dialog;
import android.os.Handler;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.android.g.h;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            ci, ct, cu

final class cs extends a
{

    final ci a;

    private cs(ci ci1)
    {
        a = ci1;
        super();
    }

    cs(ci ci1, byte byte0)
    {
        this(ci1);
    }

    private void a(h h1)
    {
        ci.d(a).post(new ct(this, h1));
    }

    public final void a()
    {
        f.a(a.l()).b(true);
    }

    protected final void a(j j1)
    {
        f.a(a.l()).b(false);
        if (j1.a() != null && j1.a().equals("fail"))
        {
            (new b(a.n())).a(j1.i()).b(az.ok, new cu(this)).c().show();
            return;
        } else
        {
            com.instagram.o.a.a.a(a.n(), j1.b(), j1.i(), null);
            return;
        }
    }

    protected final volatile void a(Object obj)
    {
        a((h)obj);
    }
}
