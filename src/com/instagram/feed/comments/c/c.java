// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.c;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.a.c.a;
import com.instagram.feed.d.b;
import com.instagram.feed.d.e;
import com.instagram.feed.d.l;
import java.util.List;

public final class c extends g
{

    private l a;

    public c(Context context, an an, int i)
    {
        super(context, an, i, null);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        long l1 = a.o();
        if (a.o() == -1L && a.t().a() > 0)
        {
            l1 = Long.valueOf(((b)a.t().c().get(0)).b()).longValue() - 1L;
        }
        if (l1 > 0L)
        {
            b1.a("max_id", String.valueOf(l1));
        }
        b1.a("page", String.valueOf(a.p()));
    }

    public final void a(l l1)
    {
        a = l1;
        a.J();
        g();
    }

    public final boolean a(String s, com.fasterxml.jackson.a.l l1, p p)
    {
        l _tmp = a;
        if (l.d(s))
        {
            a.c(l1);
            return true;
        } else
        {
            return false;
        }
    }

    public final int c()
    {
        return a.c;
    }

    protected final String c_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        return String.format("media/%s/comments/", aobj);
    }

    public final void m()
    {
        a.K();
    }

    public final void n()
    {
        a.L();
    }
}
