// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.instagram.android.g.b.c;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.a.c.b;
import com.instagram.common.y.e.a;
import com.instagram.user.c.f;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

public final class ab extends g
{

    private final c a;

    public ab(Context context, an an, c c1, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = c1;
    }

    protected final void a(b b1)
    {
        b1.a("gender", String.valueOf(a.j()));
        b1.a("username", a.b());
        b1.a("first_name", a.a());
        b1.a("phone_number", a.f());
        b1.a("email", a.i());
        b1.a("external_url", a.c());
        b1.a("biography", a.d());
        String s;
        if (a.e() == f.c)
        {
            s = "True";
        } else
        {
            s = "False";
        }
        b1.a("is_private", s);
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("user".equals(s))
        {
            l1.nextToken();
            if (com.instagram.service.a.a.a().a(a.k()))
            {
                j.a().a();
            }
            p1.a(com.instagram.user.c.a.a(l1));
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String c_()
    {
        return "accounts/edit_profile/";
    }

    public final boolean e_()
    {
        return true;
    }
}
