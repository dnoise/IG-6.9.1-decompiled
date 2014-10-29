// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e;
import com.instagram.common.y.e.a;
import com.instagram.feed.d.l;

public final class c extends b
{

    private l a;

    public c(l l1, Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = l1;
    }

    public final volatile Object b(j j)
    {
        return null;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String c_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        return e.a("media/%s/remove_from_popular/", aobj);
    }

    public final boolean e_()
    {
        return true;
    }
}
