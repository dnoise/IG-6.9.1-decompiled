// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.f;

import android.content.SharedPreferences;
import com.instagram.common.a.a.o;
import java.util.HashMap;

// Referenced classes of package com.instagram.share.f:
//            b, c

public final class a extends com.instagram.share.e.a
{

    private static boolean a;
    private final String b;

    private a(String s, String s1, String s2)
    {
        super(s, s1);
        b = s2;
    }

    public static a a(String s, String s1, String s2)
    {
        android.content.SharedPreferences.Editor editor = j().edit();
        editor.putString("oauth_token", s);
        editor.putString("oauth_secret", s1);
        editor.putString("username", s2);
        editor.commit();
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            d();
        } else
        {
            k();
        }
        return b();
    }

    private static void a(String s, a a1)
    {
        (new o()).a(new b(s, a1));
    }

    public static void a(boolean flag)
    {
        if (flag)
        {
            l();
        }
        android.content.SharedPreferences.Editor editor = j().edit();
        editor.remove("oauth_token");
        editor.remove("oauth_secret");
        editor.remove("username");
        editor.commit();
    }

    public static boolean a()
    {
        return b() != null;
    }

    public static a b()
    {
        SharedPreferences sharedpreferences = j();
        String s = sharedpreferences.getString("oauth_token", null);
        String s1 = sharedpreferences.getString("oauth_secret", null);
        String s2 = sharedpreferences.getString("username", null);
        if (s == null || s1 == null)
        {
            return null;
        } else
        {
            return new a(s, s1, s2);
        }
    }

    public static boolean c()
    {
        return a;
    }

    public static void d()
    {
        a = false;
        a("twitter/store_token/", b());
    }

    public static Runnable i()
    {
        return new c();
    }

    private static SharedPreferences j()
    {
        return com.instagram.l.b.a.a.a("twitterPreferences");
    }

    private static void k()
    {
        a = true;
    }

    private static void l()
    {
        a("twitter/clear_token/", b());
    }

    public final String g()
    {
        return b;
    }

    public final HashMap h()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("share_to_twitter", "1");
        hashmap.put("twitter_access_token_key", e());
        hashmap.put("twitter_access_token_secret", f());
        if (g() != null)
        {
            hashmap.put("twitter_username", g());
        }
        return hashmap;
    }
}
