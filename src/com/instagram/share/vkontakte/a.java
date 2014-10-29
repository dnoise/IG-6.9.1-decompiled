// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.vkontakte;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.instagram.common.a.a.o;
import com.instagram.common.a.c.b;
import com.instagram.common.y.e;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;

// Referenced classes of package com.instagram.share.vkontakte:
//            b, c

public final class a
{

    private static boolean b;
    private final String a;

    public a(String s)
    {
        a = s;
    }

    static b a(b b1, String s)
    {
        return b(b1, s);
    }

    public static a a()
    {
        String s = i().getString("accessToken", null);
        if (s == null)
        {
            return null;
        } else
        {
            return new a(s);
        }
    }

    private static void a(String s, String s1)
    {
        (new o()).a(new com.instagram.share.vkontakte.b(s, s1));
    }

    public static boolean a(Context context)
    {
        String s2 = context.getResources().getConfiguration().locale.getISO3Country();
        String s = s2;
_L2:
        if (!com.instagram.common.y.e.c(s) && (s.equals("RUS") || s.equals("UKR") || s.equals("AZE") || s.equals("BLR") || s.equals("KAZ") || s.equals("MDA") || s.equals("ARM") || s.equals("GEO") || s.equals("UZB") || s.equals("LVA") || s.equals("KGZ") || s.equals("EST") || s.equals("TJK") || s.equals("LTU") || s.equals("TKM")))
        {
            return true;
        }
        String s1 = context.getResources().getConfiguration().locale.getLanguage();
        if (!com.instagram.common.y.e.c(s1) && (s1.equals("ru") || s1.equals("uk") || s1.equals("az") || s1.equals("be") || s1.equals("kk") || s1.equals("hy") || s1.equals("ka") || s1.equals("uz") || s1.equals("lv") || s1.equals("lt") || s1.equals("ky") || s1.equals("et") || s1.equals("tg") || s1.equals("tk")))
        {
            return true;
        }
        return a() != null;
        MissingResourceException missingresourceexception;
        missingresourceexception;
        s = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static b b(b b1, String s)
    {
        b1.a("vkontakte_access_token", s);
        return b1;
    }

    public static void b()
    {
        android.content.SharedPreferences.Editor editor = i().edit();
        editor.remove("accessToken");
        editor.commit();
    }

    public static boolean d()
    {
        return b;
    }

    public static void e()
    {
        b = false;
        a("vkontakte/store_token/", a().f());
    }

    public static Runnable h()
    {
        return new c();
    }

    private static SharedPreferences i()
    {
        return com.instagram.l.b.a.a.a("vkontaktePreferences");
    }

    private static void j()
    {
        b = true;
    }

    public final void c()
    {
        android.content.SharedPreferences.Editor editor = i().edit();
        editor.putString("accessToken", f());
        editor.commit();
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            e();
            return;
        } else
        {
            j();
            return;
        }
    }

    public final String f()
    {
        return a;
    }

    public final HashMap g()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("share_to_vkontakte", "1");
        hashmap.put("vkontakte_access_token", f());
        return hashmap;
    }
}
