// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.tumblr;

import android.content.SharedPreferences;

public final class a extends com.instagram.share.e.a
{

    private a(String s, String s1)
    {
        super(s, s1);
    }

    public static a a(String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = d().edit();
        editor.putString("oauth_token", s);
        editor.putString("oauth_secret", s1);
        editor.commit();
        return b();
    }

    public static boolean a()
    {
        return b() != null;
    }

    public static a b()
    {
        SharedPreferences sharedpreferences = d();
        String s = sharedpreferences.getString("oauth_token", null);
        String s1 = sharedpreferences.getString("oauth_secret", null);
        if (s == null || s1 == null)
        {
            return null;
        } else
        {
            return new a(s, s1);
        }
    }

    public static void c()
    {
        android.content.SharedPreferences.Editor editor = d().edit();
        editor.remove("oauth_token");
        editor.remove("oauth_secret");
        editor.commit();
    }

    private static SharedPreferences d()
    {
        return com.instagram.l.b.a.a.a("tumblrPreferences");
    }
}
