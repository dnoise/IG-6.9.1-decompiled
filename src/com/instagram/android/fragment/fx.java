// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.s;
import com.facebook.az;
import com.instagram.base.a.a.a;
import com.instagram.common.y.e;
import com.instagram.feed.d.l;
import com.instagram.o.f.g;

public final class fx
    implements g
{

    public fx()
    {
    }

    private static a a(s s, int i, String s1, String s2, boolean flag, boolean flag1)
    {
        Bundle bundle = new Bundle();
        bundle.putBoolean("UserListFragment.ARGUMENTS_FOLLOW_BUTTONS", true);
        bundle.putInt("UserListFragment.ARGUMENTS_TYPE", i - 1);
        if (s2 != null)
        {
            bundle.putString("UserListFragment.ARGUMENTS_TITLE", s2);
        }
        if (s1 != null)
        {
            bundle.putString("UserListFragment.ARGUMENTS_ACCESS_TOKEN", s1);
        }
        if (flag)
        {
            bundle.putBoolean("com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW", true);
            bundle.putBoolean("UserListFragment.ARGUMENTS_CLICK_THROUGH", false);
        }
        if (flag1)
        {
            bundle.putBoolean("UserListFragment.ARGUMENTS_IS_FACEBOOK_LINKING_FLOW", true);
        }
        return (new a(s)).a(new com.instagram.android.k.c.a(), bundle);
    }

    public static a a(s s, Context context, l l1)
    {
        String s1;
        Bundle bundle;
        Object aobj[];
        if (com.instagram.user.a.a.a(l1.c()))
        {
            s1 = "self_likers";
        } else
        {
            s1 = "likers";
        }
        bundle = new Bundle();
        bundle.putString("UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME", s1);
        aobj = new Object[1];
        aobj[0] = l1.d();
        return a(s, bundle, e.a("media/%s/likers/", aobj), context.getString(az.likers_title));
    }

    public static a a(s s, Context context, String s1)
    {
        String s2;
        Bundle bundle;
        if (com.instagram.user.a.a.a(s1))
        {
            s2 = "self_followers";
        } else
        {
            s2 = "followers";
        }
        bundle = new Bundle();
        bundle.putString("UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME", s2);
        return a(s, bundle, e.a("friendships/%s/followers/", new Object[] {
            s1
        }), context.getString(az.followers_title));
    }

    private static a a(s s, Bundle bundle, String s1, String s2)
    {
        bundle.putString("UserListFragment.ARGUMENTS_FETCH_URL", s1);
        bundle.putString("UserListFragment.ARGUMENTS_TITLE", s2);
        bundle.putBoolean("UserListFragment.ARGUMENTS_FOLLOW_BUTTONS", true);
        return (new a(s)).a(new com.instagram.android.k.c.a(), bundle);
    }

    public static a a(s s, String s1, String s2, boolean flag)
    {
        return a(s, com.instagram.android.k.d.a.c, s1, s2, flag, false);
    }

    public static a a(s s, String s1, String s2, boolean flag, boolean flag1)
    {
        return a(s, com.instagram.android.k.d.a.a, s1, s2, flag, flag1);
    }

    public static a a(s s, String s1, boolean flag)
    {
        return a(s, com.instagram.android.k.d.a.b, null, s1, flag, false);
    }

    public static a b(s s, Context context, String s1)
    {
        String s2;
        Bundle bundle;
        if (com.instagram.user.a.a.a(s1))
        {
            s2 = "self_following";
        } else
        {
            s2 = "following";
        }
        bundle = new Bundle();
        bundle.putString("UserListFragment.ARGUMENTS_ANALYTICS_MODULE_NAME", s2);
        return a(s, bundle, e.a("friendships/%s/following/", new Object[] {
            s1
        }), context.getString(az.following_title));
    }
}
