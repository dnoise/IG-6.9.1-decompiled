// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.b;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.api.j.f;
import com.instagram.api.j.j;
import com.instagram.user.c.a;
import java.util.Iterator;
import java.util.List;

public final class b extends com.instagram.api.j.b
{

    private List a;

    public b(Context context, an an, f f)
    {
        super(context, an, 0, f);
    }

    private Iterable m()
    {
        return a;
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); stringbuilder.append(","))
        {
            stringbuilder.append(((a)iterator.next()).g());
        }

        if (stringbuilder.length() > 0)
        {
            stringbuilder.deleteCharAt(-1 + stringbuilder.length());
        }
        b1.a("user_ids", stringbuilder.toString());
    }

    public final void a(List list)
    {
        a = list;
        g();
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

    protected final String c_()
    {
        return "friendships/create_many/async/";
    }
}
