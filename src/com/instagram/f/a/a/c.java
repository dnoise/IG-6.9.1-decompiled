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

public final class c extends b
{

    private final String a;

    public c(Context context, an an, com.instagram.api.j.a a1, String s)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = s;
    }

    public final volatile Object b(j j)
    {
        return null;
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
        Object aobj[] = new Object[1];
        aobj[0] = a;
        return e.a("direct_share/pending/%s/approve/", aobj);
    }

    public final boolean e_()
    {
        return true;
    }
}
