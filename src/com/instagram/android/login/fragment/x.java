// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.j.f;
import com.instagram.api.j.j;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            v

final class x extends f
{

    final v a;

    x(v v1)
    {
        a = v1;
        super();
    }

    private void a(a a1)
    {
        com.instagram.android.login.fragment.v.a(a, a1);
        com.instagram.android.login.fragment.v.a(a, a.E(), com.instagram.android.login.fragment.v.a(a));
    }

    public final void a()
    {
        super.a();
        com.instagram.android.login.fragment.v.a(a, true);
        com.instagram.a.f.a(a.l()).b(true);
    }

    protected final void a(j j)
    {
        Toast.makeText(a.n(), az.no_account_found, 0).show();
        super.a(j);
    }

    protected final volatile void a(Object obj)
    {
        a((a)obj);
    }

    public final void b()
    {
        super.b();
        com.instagram.android.login.fragment.v.a(a, false);
        if (a.u())
        {
            com.instagram.a.f.a(a.l()).b(false);
        }
    }
}
