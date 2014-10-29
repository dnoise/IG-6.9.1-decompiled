// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.notifications.a;


public final class a
{

    public static String a = "like";
    public static String b = "comment";
    public static String c = "popular";
    public static String d = "direct_share";
    public static String e = "direct_share_seen";
    public static String f = "direct_share_like";
    public static String g = "direct_share_commented";
    public static String h = "direct_share_pending";
    public static String i = "contactjoined";
    public static String j = "usertag";
    public static String k = "post";
    public static String l = "default";

    public static boolean a(String s)
    {
        return d.equals(s) || e.equals(s) || f.equals(s) || g.equals(s);
    }

    public static boolean b(String s)
    {
        return h.equals(s);
    }

}
