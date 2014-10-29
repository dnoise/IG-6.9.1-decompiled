// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.c;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.api.j.b;
import com.instagram.api.j.j;
import com.instagram.feed.d.c;
import com.instagram.feed.d.l;

public final class a extends b
{

    private com.instagram.feed.d.b a;

    public a(Context context, an an, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
    }

    private Void d(j j1)
    {
        if (a.h() == c.e)
        {
            com.instagram.feed.comments.b.a.a(k(), j(), a, com.instagram.feed.comments.c.b.a, null);
            return null;
        } else
        {
            JsonNode jsonnode = j1.l().get("comment");
            com.instagram.feed.comments.util.a.a(a, jsonnode);
            a.e().E();
            return null;
        }
    }

    public final void a(j j1)
    {
        boolean flag = false;
        String s = null;
        if (j1 != null)
        {
            JsonNode jsonnode = j1.l();
            flag = false;
            s = null;
            if (jsonnode != null)
            {
                JsonNode jsonnode1 = j1.l().get("spam");
                flag = false;
                if (jsonnode1 != null)
                {
                    boolean flag1 = jsonnode1.asBoolean();
                    flag = false;
                    if (flag1)
                    {
                        flag = true;
                    }
                }
                JsonNode jsonnode2 = j1.l().get("message");
                s = null;
                if (jsonnode2 != null)
                {
                    s = jsonnode2.asText();
                }
            }
        }
        a.a(flag, s);
        a.e().F();
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("comment_text", a.f());
    }

    public final void a(com.instagram.feed.d.b b1)
    {
        a = b1;
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

    public final boolean c(j j1)
    {
        return false;
    }

    protected final String c_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.d();
        return String.format("media/%s/comment/", aobj);
    }
}
