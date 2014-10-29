// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.common.y.e.a;
import com.instagram.feed.d.c;
import com.instagram.feed.d.e;
import com.instagram.feed.d.l;
import java.util.List;
import java.util.ListIterator;
import java.util.UUID;

public final class q extends b
{

    private final com.instagram.feed.d.b a;
    private final UUID d = UUID.randomUUID();

    public q(Context context, an an, com.instagram.feed.d.b b1, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), null);
        a = b1;
    }

    private static String a(l l1)
    {
        List list = l1.D().c();
        for (ListIterator listiterator = list.listIterator(list.size()); listiterator.hasPrevious();)
        {
            com.instagram.feed.d.b b1 = (com.instagram.feed.d.b)listiterator.previous();
            if (b1.h() == c.f && b1.b() != null)
            {
                return b1.b();
            }
        }

        return "";
    }

    private Void d(j j1)
    {
        JsonNode jsonnode = j1.l().get("comment");
        com.instagram.feed.comments.util.a.a(a, jsonnode);
        a.e().E();
        if (a.h() == c.e)
        {
            com.instagram.f.a.a.a.a.a(k(), j(), a, null);
        }
        return null;
    }

    public final void a(j j1)
    {
        a.a(false, null);
        a.e().F();
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("comment_text", a.f());
        b1.a("client_request_uid", d.toString());
        b1.a("last_comment_id", a(a.e()));
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

    public final boolean c(j j1)
    {
        return false;
    }

    protected final String c_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        return a("direct_share/%s/comment/", aobj);
    }

    public final boolean e_()
    {
        return true;
    }
}
