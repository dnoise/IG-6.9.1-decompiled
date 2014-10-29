// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.user.follow.n;

public final class a extends b
{

    private String a;
    private com.instagram.user.c.a d;

    public a(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
    }

    private Void d(j j1)
    {
        n.a().a(d, j1.l().get("friendship_status"), this);
        return null;
    }

    public final void a(j j1)
    {
        d.w();
        super.a(j1);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("user_id", d.g());
    }

    public final void a(com.instagram.user.c.a a1, String s)
    {
        d = a1;
        a = s;
        g();
    }

    public final Object b(j j1)
    {
        return d(j1);
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
        Object aobj[] = new Object[2];
        aobj[0] = a;
        aobj[1] = d.g();
        return String.format("friendships/%s/%s/", aobj);
    }
}
