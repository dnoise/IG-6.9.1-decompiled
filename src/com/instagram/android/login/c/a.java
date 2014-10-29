// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.c;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.instagram.api.j.f;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.a.c.b;

public final class a extends g
{

    private String a;

    public a(Context context, an an, int i, f f)
    {
        super(context, an, i, f);
    }

    private static com.instagram.android.g.a a(p p1)
    {
        com.instagram.android.g.a a1 = (com.instagram.android.g.a)p1.h();
        if (a1 == null)
        {
            a1 = new com.instagram.android.g.a();
            p1.a(a1);
        }
        return a1;
    }

    protected final void a(b b1)
    {
        b1.a("username", a);
    }

    public final void a(String s)
    {
        if (s.equals(a))
        {
            return;
        } else
        {
            a = s;
            g();
            return;
        }
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("username".equals(s))
        {
            com.instagram.android.g.a a3 = a(p1);
            l1.nextToken();
            a3.a(l1.getText());
            return true;
        }
        if ("available".equals(s))
        {
            com.instagram.android.g.a a2 = a(p1);
            l1.nextToken();
            a2.a(l1.getValueAsBoolean());
            return true;
        }
        if ("error".equals(s))
        {
            com.instagram.android.g.a a1 = a(p1);
            l1.nextToken();
            a1.b(l1.getText());
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
        return "users/check_username/";
    }

    public final String e()
    {
        return a;
    }
}
