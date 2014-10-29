// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.b.b;
import com.instagram.common.a.a.o;
import com.instagram.common.analytics.d;

// Referenced classes of package com.instagram.share.b:
//            g, f, h, b, 
//            n, c, j, d, 
//            e

public final class a
{

    private static b a = null;
    private static boolean b;
    private static long c = 0L;

    public static b a()
    {
        if (a == null)
        {
            a = new b(com.instagram.share.b.g.a());
            o();
        }
        return a;
    }

    static com.instagram.common.a.c.b a(com.instagram.common.a.c.b b1, String s1)
    {
        return b(b1, s1);
    }

    public static void a(int i1)
    {
        s().edit().putInt("friends_count", i1).commit();
    }

    public static void a(long l1)
    {
        c = l1;
    }

    public static void a(Context context)
    {
        (new f(context)).b(new Void[0]);
    }

    public static void a(h h1)
    {
        android.content.SharedPreferences.Editor editor = s().edit();
        editor.putString("page_access_token", h1.c());
        editor.putString("page_id", h1.a());
        editor.putString("page_name", h1.b());
        editor.commit();
    }

    private static void a(String s1, String s2)
    {
        (new o()).a(new com.instagram.share.b.b(s1, s2));
    }

    public static void a(boolean flag)
    {
        if (flag)
        {
            r();
        }
        s().edit().clear().commit();
        l();
        com.instagram.common.analytics.a.a().d();
    }

    private static com.instagram.common.a.c.b b(com.instagram.common.a.c.b b1, String s1)
    {
        b1.a("fb_access_token", s1);
        b1.a("share_to_facebook", "1");
        b1.a("fb_has_publish_actions", "1");
        return b1;
    }

    public static void b()
    {
        b(false);
    }

    public static void b(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = s().edit();
        boolean flag1 = p();
        editor.putString("access_token", a().c());
        editor.putLong("access_expires", a().d());
        editor.putLong("last_access_update", a().e());
        editor.putBoolean("token_has_manage_pages", flag);
        editor.commit();
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            if (flag1)
            {
                e();
            }
        } else
        {
            q();
        }
        h();
    }

    public static void c()
    {
        android.content.SharedPreferences.Editor editor = s().edit();
        editor.putLong("last_permissions_check", u());
        editor.commit();
    }

    public static boolean d()
    {
        return b;
    }

    public static void e()
    {
        b = false;
        a("fb/store_token/", a().c());
    }

    public static String f()
    {
        boolean flag = a().b();
        String s1 = null;
        if (flag)
        {
            s1 = s().getString("user_id", null);
        }
        return s1;
    }

    public static void g()
    {
        b b1 = a();
        if (t())
        {
            n n1 = new n(b1.c());
            n1.a(new c());
            (new o()).a(n1);
        }
    }

    public static void h()
    {
        if (a().b() && f() == null)
        {
            j j1 = new j(a().c());
            j1.a(new com.instagram.share.b.d());
            (new o()).a(j1);
        }
    }

    public static h i()
    {
        SharedPreferences sharedpreferences = s();
        return new h(sharedpreferences.getString("page_id", ""), sharedpreferences.getString("page_name", ""), sharedpreferences.getString("page_access_token", ""));
    }

    public static boolean j()
    {
        return s().getBoolean("token_has_manage_pages", false);
    }

    public static int k()
    {
        return s().getInt("friends_count", -1);
    }

    public static void l()
    {
        a = null;
        c = 0L;
    }

    public static Runnable m()
    {
        return new e();
    }

    static SharedPreferences n()
    {
        return s();
    }

    private static void o()
    {
        SharedPreferences sharedpreferences = s();
        String s1 = sharedpreferences.getString("access_token", null);
        long l1 = sharedpreferences.getLong("access_expires", 0L);
        long l2 = sharedpreferences.getLong("last_access_update", 0L);
        long l3 = sharedpreferences.getLong("last_permissions_check", 0L);
        if (s1 != null)
        {
            a.a(s1, l1, l2);
        }
        a(l3);
    }

    private static boolean p()
    {
        boolean flag;
label0:
        {
            String s1 = s().getString("access_token", null);
            if (s1 != null)
            {
                boolean flag1 = s1.equals(a().c());
                flag = false;
                if (flag1)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    private static void q()
    {
        b = true;
    }

    private static void r()
    {
        a("fb/clear_token/", a().c());
    }

    private static SharedPreferences s()
    {
        return com.instagram.l.b.a.a.a("facebookPreferences");
    }

    private static boolean t()
    {
        return a().b() && System.currentTimeMillis() - c >= 0x5265c00L;
    }

    private static long u()
    {
        return c;
    }

}
