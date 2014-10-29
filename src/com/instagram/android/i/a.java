// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.i;


public final class a extends Enum
{

    public static final a a;
    public static final a b;
    public static final a c;
    public static final a d;
    private static final a f[];
    String e;

    private a(String s, int i, String s1)
    {
        super(s, i);
        e = s1;
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/instagram/android/i/a, s);
    }

    public static a[] values()
    {
        return (a[])f.clone();
    }

    public final String a()
    {
        return e;
    }

    static 
    {
        a = new a("Impression", 0, "similar_user_impression");
        b = new a("FollowButtonTapped", 1, "similar_user_follow_button_tapped");
        c = new a("UserNameTapped", 2, "similar_username_tapped");
        d = new a("SuggestionsClosed", 3, "similar_user_suggestions_closed");
        a aa[] = new a[4];
        aa[0] = a;
        aa[1] = b;
        aa[2] = c;
        aa[3] = d;
        f = aa;
    }
}
