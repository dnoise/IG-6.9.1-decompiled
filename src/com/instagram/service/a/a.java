// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.service.a;

import android.content.Intent;
import android.os.SystemClock;
import com.instagram.common.y.d;
import com.instagram.l.a.b;

public class a
{

    private static final String a = com/instagram/service/a/a.getSimpleName();
    private static final a d = new a();
    private com.instagram.user.c.a b;
    private long c;

    private a()
    {
        c = 0x8000000000000000L;
    }

    public static a a()
    {
        return d;
    }

    private static void a(String s, boolean flag)
    {
        Intent intent = new Intent("AuthHelper.BROADCAST_USER_CHANGED");
        intent.putExtra("userid", s);
        intent.putExtra("loggedin", flag);
        com.instagram.common.y.d.b(intent);
    }

    public static boolean d()
    {
        return com.instagram.l.a.b.a().h() != null;
    }

    public final boolean a(com.instagram.user.c.a a1)
    {
        return a1.equals(b());
    }

    public final com.instagram.user.c.a b()
    {
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        String s = com.instagram.l.a.b.a().h();
        if (s == null)
        {
            return null;
        }
        try
        {
            b = com.instagram.user.b.b.a(s);
            a(b.g(), true);
        }
        catch (Exception exception) { }
        return b;
    }

    public final void b(com.instagram.user.c.a a1)
    {
        try
        {
            com.instagram.l.a.b.a().b(com.instagram.user.b.b.a(a1));
            b = a1;
            return;
        }
        catch (Exception exception)
        {
            throw new RuntimeException("Unable to write current user", exception);
        }
    }

    public final String c()
    {
        com.instagram.user.c.a a1 = b();
        if (a1 == null)
        {
            return null;
        } else
        {
            return a1.g();
        }
    }

    public final void c(com.instagram.user.c.a a1)
    {
        if (SystemClock.elapsedRealtime() > 0x2255100L + c)
        {
            b(a1);
            c = SystemClock.elapsedRealtime();
        }
    }

    public final void d(com.instagram.user.c.a a1)
    {
        b(a1);
        a(a1.g(), true);
    }

    public final void e()
    {
        if (b != null)
        {
            a(b.g(), false);
        }
        b = null;
        com.instagram.l.a.b.a().b(null);
    }

}
