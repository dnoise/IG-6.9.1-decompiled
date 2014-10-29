// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e;
import com.instagram.common.y.e.a;
import com.instagram.feed.d.l;

public final class h extends b
{

    private final com.instagram.feed.d.b a;

    public h(Context context, an an, com.instagram.feed.d.b b1, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = b1;
    }

    private Void m()
    {
        a.m();
        return null;
    }

    public final void a(j j)
    {
        a.n();
    }

    public final Object b(j j)
    {
        return m();
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    public final boolean c(j j)
    {
        return false;
    }

    protected final String c_()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a.e().d();
        aobj[1] = a.b();
        return e.a("direct_share/%s/comment/%s/delete/", aobj);
    }

    public final boolean e_()
    {
        return true;
    }
}
