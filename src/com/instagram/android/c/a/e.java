// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.instagram.android.g.g;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;
import com.instagram.feed.d.l;
import com.instagram.feed.d.o;
import com.instagram.feed.d.u;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class e extends b
{

    private l a;
    private int d;
    private int e;
    private Map f;

    public e(Context context, an an, l l1, int i, int j, Map map, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = l1;
        d = i;
        e = j;
        f = map;
    }

    public final void a(j j)
    {
        u.a(a);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("media_id", a.d());
    }

    public final volatile Object b(j j)
    {
        return null;
    }

    protected final void b(com.instagram.common.a.c.b b1)
    {
        String s;
        if (e == g.b)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        b1.a("d", s);
        if (f != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = f.entrySet().iterator(); iterator.hasNext(); b1.a((String)entry.getKey(), (String)entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

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

    public final boolean c(j j)
    {
        return false;
    }

    protected final String c_()
    {
        String s;
        Object aobj[];
        if (d == o.a)
        {
            s = "like";
        } else
        {
            s = "unlike";
        }
        aobj = new Object[2];
        aobj[0] = a.d();
        aobj[1] = s;
        return String.format("media/%s/%s/", aobj);
    }
}
