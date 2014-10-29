// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.content.Intent;
import com.instagram.common.x.a;
import com.instagram.common.y.d;
import java.util.ArrayList;
import java.util.List;

public final class x
{

    private static List a = new ArrayList();

    public static List a()
    {
        com.instagram.common.x.a.a().b();
        return a;
    }

    public static void a(com.instagram.f.c.a a1)
    {
        com.instagram.common.x.a.a().b();
        if (a != null)
        {
            a.remove(a1);
            d();
        }
    }

    public static void a(List list)
    {
        com.instagram.common.x.a.a().b();
        a = list;
        d();
    }

    public static void b(com.instagram.f.c.a a1)
    {
        com.instagram.common.x.a.a().b();
        if (a != null)
        {
            a.remove(a1);
            c();
        }
    }

    public static boolean b()
    {
        return a.isEmpty();
    }

    private static void c()
    {
        com.instagram.common.y.d.a("INTENT_ACTION_PENDING_REQUEST_ACCEPTED");
    }

    private static void d()
    {
        com.instagram.common.y.d.a(new Intent("INTENT_ACTION_PENDING_REQUESTS_UPDATED"));
    }

}
