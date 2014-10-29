// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.util;

import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.feed.d.b;
import com.instagram.feed.d.c;
import com.instagram.feed.d.e;
import com.instagram.feed.d.l;

public final class a
{

    private static long a(JsonNode jsonnode)
    {
        JsonNode jsonnode1 = jsonnode.get("created_at");
        if (jsonnode1.asToken() == r.h)
        {
            return jsonnode1.asLong();
        } else
        {
            return 0xf4240L * jsonnode1.asLong();
        }
    }

    public static void a(b b1, JsonNode jsonnode)
    {
        String s = com.instagram.o.e.a.a(jsonnode);
        b1.a(a(jsonnode));
        b1.a(c.f);
        b1.e().t().a(b1, s);
    }

    public static boolean a(b b1)
    {
        com.instagram.user.c.a a1 = b1.g();
        com.instagram.user.c.a a2 = b1.e().c();
        com.instagram.user.c.a a3 = com.instagram.service.a.a.a().b();
        return a1.equals(a3) || a2.equals(a3) || a3.h() && !b1.e().ak();
    }
}
