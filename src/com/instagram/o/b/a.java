// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.b;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import com.facebook.az;
import com.facebook.b.b;
import com.instagram.common.a.a.k;
import com.instagram.common.a.a.o;

// Referenced classes of package com.instagram.o.b:
//            b, h, c, d, 
//            e

public class a
{

    private static final Class a = com/instagram/o/b/a;
    private Context b;
    private SharedPreferences c;
    private k d;

    public a(Context context)
    {
        d = new o();
        b = context;
        c = b.getSharedPreferences("autoUpdatePreferences", 0);
    }

    static Context a(a a1)
    {
        return a1.b;
    }

    private void a(int i)
    {
        com.instagram.o.b.b b1 = new com.instagram.o.b.b(this, i);
        Class _tmp = a;
        a(System.currentTimeMillis());
        h h1 = new h(com.instagram.share.b.a.a().c());
        d.a(h1.a(b1));
    }

    private void a(long l)
    {
        c.edit().putLong("last_request_time", l).commit();
    }

    static void a(a a1, String s)
    {
        a1.a(s);
    }

    private void a(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
        (new com.instagram.ui.dialog.b(b)).a(az.autoupdater_upgrade_available).b(az.autoupdater_new_version).b(az.autoupdater_install, new c(this, intent)).a(true).c().show();
    }

    public static boolean a()
    {
        boolean flag = com.instagram.common.s.b.c();
        boolean flag1 = com.instagram.share.b.a.a().b();
        return flag && flag1;
    }

    static void b(a a1)
    {
        a1.g();
    }

    static Class d()
    {
        return a;
    }

    private boolean e()
    {
        if (!a())
        {
            return false;
        }
        long l = f();
        long l1 = System.currentTimeMillis();
        int i = l1 - l != 0x1499700L;
        boolean flag = false;
        if (i > 0)
        {
            flag = true;
        }
        Class _tmp = a;
        (new StringBuilder("Check? ")).append(flag).append(" Last check: ").append(l).append(" Now: ").append(l1);
        return flag;
    }

    private long f()
    {
        return c.getLong("last_request_time", 0L);
    }

    private void g()
    {
        (new com.instagram.ui.dialog.b(b)).a(az.autoupdater_no_upgrade_available).b(az.autoupdater_up_to_date).b(az.ok, new d(this)).a(true).c().show();
    }

    public final void b()
    {
        if (!e())
        {
            return;
        } else
        {
            a(e.a);
            return;
        }
    }

    public final void c()
    {
        a(com.instagram.o.b.e.b);
    }

}
