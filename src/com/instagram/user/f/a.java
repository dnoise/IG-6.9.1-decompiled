// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.f;

import com.instagram.user.c.i;
import java.util.concurrent.ConcurrentHashMap;

public final class a extends ConcurrentHashMap
    implements i
{

    private ConcurrentHashMap a;
    private boolean b;

    public a()
    {
        a = new ConcurrentHashMap();
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        if (a1 != null)
        {
            a(a1.g(), a1);
        }
    }

    private boolean b()
    {
        boolean flag = b;
        b = false;
        return flag;
    }

    public final com.instagram.user.c.a a(com.instagram.user.c.a a1)
    {
        com.instagram.user.c.a a2 = a(a1.g());
        com.instagram.service.a.a a3 = com.instagram.service.a.a.a();
        if (a3.a(a1) && !b())
        {
            return a2;
        }
        if (a2 == null)
        {
            a(a1.g(), a1);
        } else
        {
            a2.a(a1);
            a1 = a2;
        }
        if (a3.a(a1))
        {
            a3.c(a1);
        }
        return a1;
    }

    public final com.instagram.user.c.a a(String s)
    {
        return (com.instagram.user.c.a)super.get(s);
    }

    public final com.instagram.user.c.a a(String s, com.instagram.user.c.a a1)
    {
        com.instagram.user.c.a a2 = (com.instagram.user.c.a)super.put(s, a1);
        if (com.instagram.service.a.a.a().a(a1))
        {
            b();
        }
        if (a1 != null && a1.b() != null)
        {
            a.put(a1.b(), a1);
        }
        return a2;
    }

    public final void a()
    {
        b = true;
    }

    public final com.instagram.user.c.a b(com.instagram.user.c.a a1)
    {
        a();
        com.instagram.user.c.a a2 = a(a1);
        if (com.instagram.service.a.a.a().a(a2))
        {
            com.instagram.service.a.a.a().b(a2);
        }
        return a2;
    }

    public final com.instagram.user.c.a b(String s)
    {
        return (com.instagram.user.c.a)a.get(s);
    }

    public final Object put(Object obj, Object obj1)
    {
        return a((String)obj, (com.instagram.user.c.a)obj1);
    }
}
