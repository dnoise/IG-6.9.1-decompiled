// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.util;

import android.os.Bundle;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.android.fragment.bp;
import com.instagram.android.fragment.cd;
import com.instagram.android.fragment.cf;
import com.instagram.android.fragment.dn;
import com.instagram.android.fragment.ev;
import com.instagram.android.fragment.fo;
import com.instagram.base.a.a.a;
import com.instagram.common.analytics.g;
import com.instagram.feed.d.l;
import com.instagram.o.f.e;

public final class c
    implements e
{

    public c()
    {
    }

    public final a a(s s1)
    {
        Bundle bundle = new Bundle();
        bundle.putBoolean("RecommendedUserFragment.IS_AYML_ENABLED", true);
        return (new a(s1)).a(new dn(), bundle);
    }

    public final a a(s s1, l l1, boolean flag, boolean flag1, boolean flag2)
    {
        Bundle bundle = new Bundle();
        bundle.putString("CommentThreadFragment.MEDIA_ID", l1.d());
        bundle.putBoolean("CommentThreadFragment.SHOW_KEYBOARD", flag);
        bundle.putBoolean("CommentThreadFragment.IS_SPONSORED", flag1);
        bundle.putBoolean("CommentThreadFragment.IS_ORGANIC", flag2);
        bundle.getBoolean("CommentThreadFragment.IS_SELF_MEDIA", com.instagram.service.a.a.a().b().equals(l1.c()));
        return (new a(s1)).a(new com.instagram.android.feed.comments.a.a(), bundle);
    }

    public final a a(s s1, String s2)
    {
        return a(s1, s2, true);
    }

    public final a a(s s1, String s2, boolean flag)
    {
        Bundle bundle = new Bundle();
        bundle.putString("UserDetailFragment.EXTRA_USER_ID", s2);
        bundle.putBoolean("UserDetailFragment.EXTRA_SHOW_USER_REQUEST_ROW", flag);
        return (new a(s1)).a(new fo(), bundle);
    }

    public final a a(s s1, String s2, boolean flag, boolean flag1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("mediaId", s2);
        bundle.putBoolean("scroll", flag);
        bundle.putBoolean("opened_via_push", flag1);
        return (new a(s1)).a(new com.instagram.android.directshare.d.c(), bundle);
    }

    public final a a(s s1, String s2, boolean flag, boolean flag1, boolean flag2)
    {
        Bundle bundle = new Bundle();
        bundle.putString("com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID", s2);
        bundle.putBoolean("com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK", flag);
        bundle.putBoolean("com.instagram.android.fragment.KEY_EXPLORE_ATTRIBUTION_VISIBLE", flag1);
        bundle.putBoolean("com.instagram.android.fragment.ARGUMENTS_IS_FOLLOW_BUTTON_ELIGIBLE_NEXT", flag2);
        android.support.v4.app.Fragment fragment = s1.a(av.layout_container_main);
        if (fragment != null && (fragment instanceof g))
        {
            bundle.putString("com.instagram.android.fragment.KEY_REFERRER", ((g)fragment).j_());
        }
        return (new a(s1)).a(new ev(), bundle);
    }

    public final a b(s s1)
    {
        if (com.instagram.m.c.a.b())
        {
            return (new a(s1)).a(new cd());
        } else
        {
            return (new a(s1)).a(new bp());
        }
    }

    public final a b(s s1, String s2)
    {
        Bundle bundle = new Bundle();
        bundle.putString("UserDetailFragment.EXTRA_USER_NAME", s2);
        return (new a(s1)).a(new fo(), bundle);
    }

    public final a b(s s1, String s2, boolean flag)
    {
        return a(s1, s2, flag, false, true);
    }

    public final a c(s s1, String s2)
    {
        return b(s1, s2, false);
    }

    public final a d(s s1, String s2)
    {
        Bundle bundle = new Bundle();
        bundle.putString("HashtagFeedFragment.ARGUMENT_TAG_NAME", s2);
        return (new a(s1)).a(new cf(), bundle);
    }
}
