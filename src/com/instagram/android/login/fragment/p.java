// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Handler;
import com.instagram.a.f;
import com.instagram.android.login.c.k;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.login.fragment:
//            o, q, r

final class p extends a
{

    final o a;

    p(o o1)
    {
        a = o1;
        super();
    }

    private void a(k k1)
    {
        o.b(a).post(new q(this, k1));
    }

    public final void a()
    {
        o.c(a).setEnabled(false);
        f.a(a.l()).b(true);
    }

    protected final void a(j j1)
    {
        f.a(a.l()).b(false);
        if (j1.d() != null && j1.d().intValue() == 404)
        {
            o.b(a).post(new r(this));
            return;
        } else
        {
            super.a(j1);
            return;
        }
    }

    protected final volatile void a(Object obj)
    {
        a((k)obj);
    }

    public final void b()
    {
        super.b();
        o.c(a).setEnabled(true);
    }
}
