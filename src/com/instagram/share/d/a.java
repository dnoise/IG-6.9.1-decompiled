// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.d;

import android.content.SharedPreferences;

// Referenced classes of package com.instagram.share.d:
//            b

public final class a
{

    private final String a;

    public a(String s)
    {
        a = s;
    }

    public static a a()
    {
        String s = f().getString("accessToken", null);
        if (s == null)
        {
            return null;
        } else
        {
            return new a(s);
        }
    }

    public static void b()
    {
        android.content.SharedPreferences.Editor editor = f().edit();
        editor.remove("accessToken");
        editor.commit();
    }

    public static Runnable e()
    {
        return new b();
    }

    private static SharedPreferences f()
    {
        return com.instagram.l.b.a.a.a("foursquare.prefs");
    }

    public final void c()
    {
        android.content.SharedPreferences.Editor editor = f().edit();
        editor.putString("accessToken", a);
        editor.commit();
    }

    public final String d()
    {
        return a;
    }
}
