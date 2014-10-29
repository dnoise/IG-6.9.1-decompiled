// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import com.facebook.au;

final class t extends Enum
{

    public static final t a;
    public static final t b;
    public static final t c;
    public static final t d;
    public static final t e;
    public static final t f;
    private static final t j[];
    private final int g;
    private final String h;
    private final int i;

    private t(String s, int k, int l, String s1, int i1)
    {
        super(s, k);
        g = l;
        h = s1;
        i = i1;
    }

    public static t valueOf(String s)
    {
        return (t)Enum.valueOf(com/instagram/android/activity/t, s);
    }

    public static t[] values()
    {
        return (t[])j.clone();
    }

    final int a()
    {
        return g;
    }

    final String b()
    {
        return h;
    }

    final int c()
    {
        return i;
    }

    static 
    {
        a = new t("FEED", 0, 0, "main_home", au.dock_home);
        b = new t("NEWS", 1, 3, "main_inbox", au.dock_news);
        c = new t("SHARE", 2, 2, "main_camera", au.dock_camera);
        d = new t("POPULAR", 3, 1, "main_explore", au.dock_explore);
        e = new t("SEARCH", 4, 1, "main_search", au.dock_search);
        f = new t("PROFILE", 5, 4, "main_profile", au.dock_profile);
        t at[] = new t[6];
        at[0] = a;
        at[1] = b;
        at[2] = c;
        at[3] = d;
        at[4] = e;
        at[5] = f;
        j = at;
    }
}
