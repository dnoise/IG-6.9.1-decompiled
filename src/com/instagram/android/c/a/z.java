// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.l;
import com.instagram.api.j.f;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.user.c.a;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

public final class z extends g
{

    private String a;
    private String d;

    public z(Context context, an an, int k, f f)
    {
        super(context, an, k, f);
    }

    private boolean a(a a1)
    {
        if (a1 == null)
        {
            return false;
        }
        if (a != null)
        {
            return a1.g().equals(a);
        } else
        {
            return a1.b().equalsIgnoreCase(d);
        }
    }

    public final void a(String s)
    {
        a = s;
        d = null;
        g();
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("user".equals(s))
        {
            l1.nextToken();
            if (a(com.instagram.service.a.a.a().b()))
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

    public final void b(String s)
    {
        a = null;
        d = s;
        g();
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    protected final String c_()
    {
        if (a != null)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = a;
            return String.format("users/%s/info/", aobj1);
        }
        if (d != null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = d;
            return String.format("users/%s/usernameinfo/", aobj);
        } else
        {
            return null;
        }
    }

    public final String e()
    {
        return d;
    }
}
