// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.android.g.b.c;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;

public final class aa extends b
{

    public aa(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
    }

    private static c d(j j1)
    {
        c c1 = com.instagram.android.g.b.c.a(j1.l().get("user"));
        j1.a(c1);
        return c1;
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("edit", "true");
    }

    public final Object b(j j1)
    {
        return d(j1);
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    protected final String c_()
    {
        return "accounts/current_user/";
    }

    public final boolean e_()
    {
        return true;
    }
}
