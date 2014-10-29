// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.i;

import ch.boye.httpclientandroidlib.cookie.Cookie;
import com.instagram.common.a.c.d;
import com.instagram.service.persistentcookiestore.PersistentCookieStore;
import java.util.Iterator;
import java.util.List;

public final class a
{

    public static void a(d d1, com.instagram.api.c.a a1)
    {
        if (a1.c() == com.instagram.common.a.c.a.a)
        {
            Iterator iterator = PersistentCookieStore.c().getCookies().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Cookie cookie = (Cookie)iterator.next();
                if ("csrftoken".equals(cookie.getName()))
                {
                    d1.a("_csrftoken", cookie.getValue());
                }
            } while (true);
            if (com.instagram.service.a.a.a().b() != null)
            {
                if (a1.e_())
                {
                    d1.a("_uuid", com.instagram.common.z.a.b(com.instagram.common.h.a.a()));
                }
                if (a1.b())
                {
                    d1.a("_uid", com.instagram.service.a.a.a().b().g());
                }
            }
        }
    }
}
