// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.a;

import android.content.Context;
import android.support.v4.app.Fragment;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.android.nux.af;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.n.a;
import com.instagram.p.b;

public class h extends j
{

    private final Fragment a;
    private final String b;

    public h(Fragment fragment, String s)
    {
        a = fragment;
        b = s;
    }

    public final void a()
    {
        f.a(a.l()).b(true);
        super.a();
    }

    public void a(com.instagram.android.login.c.h h1)
    {
        com.instagram.user.c.a a1 = h1.b();
        String s;
        if (b != null)
        {
            s = b;
        } else
        {
            s = a1.b();
        }
        com.instagram.n.a.b(s);
        b.aE.b().a("instagram_id", a1.g()).a();
        af.a(a.l(), a1);
        af.a(a.l());
    }

    public volatile void a(Object obj)
    {
        a((com.instagram.android.login.c.h)obj);
    }

    public void b(e e1)
    {
        if (a.u())
        {
            f.a(a.l()).b(false);
        }
        String s;
        String s1;
        if (e1.a())
        {
            s = ((com.instagram.android.login.c.h)e1.b()).j();
        } else
        {
            s = a.n().getString(az.error);
        }
        if (e1.a())
        {
            s1 = ((com.instagram.android.login.c.h)e1.b()).k();
        } else
        {
            s1 = a.n().getString(az.network_error);
        }
        com.instagram.o.a.a.a(a.n(), s, s1, af.a(e1));
    }
}
