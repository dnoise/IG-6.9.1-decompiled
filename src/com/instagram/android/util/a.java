// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.util;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.s;
import com.instagram.android.directshare.c.c;
import com.instagram.android.directshare.e.b;
import com.instagram.android.fragment.ac;
import com.instagram.android.fragment.cd;
import com.instagram.android.fragment.dn;
import com.instagram.o.f.e;
import com.instagram.o.f.f;

public class a
{

    private static final Class a = com/instagram/android/util/a;

    public a()
    {
    }

    public static Bundle a(Uri uri)
    {
        byte byte0;
        Bundle bundle;
        Bundle bundle1;
        String s;
        byte0 = 3;
        bundle = new Bundle();
        bundle1 = new Bundle();
        s = uri.getHost();
        if (!"media".equals(s)) goto _L2; else goto _L1
_L1:
        bundle1.putString("screen", s);
        bundle1.putString("id", uri.getQueryParameter("id"));
_L4:
        if (byte0 != -1)
        {
            bundle.putInt("MainTabActivity.INITIAL_TAB", byte0);
            bundle.putBundle("MainTabActivity.INITIAL_TAB_ARGUMENTS", bundle1);
        }
        return bundle;
_L2:
        if ("user".equals(s))
        {
            bundle1.putString("screen", s);
            bundle1.putString("id", uri.getQueryParameter("username"));
        } else
        if ("direct".equals(s))
        {
            bundle1.putString("screen", s);
            bundle1.putString("id", uri.getQueryParameter("id"));
            bundle1.putBoolean("ds_has_comment", Boolean.TRUE.toString().equals(uri.getQueryParameter("has_comment")));
            byte0 = 0;
        } else
        if ("direct_request".equals(s))
        {
            bundle1.putString("screen", s);
            byte0 = 0;
        } else
        if ("inbox".equals(s))
        {
            bundle1.putString("screen", uri.getHost());
            byte0 = 0;
        } else
        if ("mainfeed".equals(s))
        {
            byte0 = 0;
        } else
        if ("explore".equals(s))
        {
            byte0 = 1;
        } else
        if ("share".equals(s))
        {
            bundle.putBoolean("MainTabActivity.EXTRA_LAUNCH_CAMERA", true);
            byte0 = -1;
        } else
        if (!"news".equals(s))
        {
            if ("profile".equals(s))
            {
                byte0 = 4;
            } else
            if ("editprofile".equals(s))
            {
                bundle1.putString("screen", s);
                byte0 = 4;
            } else
            if ("findfriends".equals(s))
            {
                bundle1.putString("screen", s);
                byte0 = 4;
            } else
            if ("suggestedaccounts".equals(s))
            {
                bundle1.putString("screen", s);
                byte0 = 4;
            } else
            if ("follow_destination".equals(s))
            {
                bundle1.putString("screen", s);
                byte0 = 4;
            } else
            {
                a;
                byte0 = -1;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void a(s s, Bundle bundle)
    {
        String s1 = bundle.getString("screen");
        String s2 = bundle.getString("id");
        com.instagram.base.a.a.a a1;
        if (s1.equals("media"))
        {
            a1 = f.a().b(s, s2, true);
        } else
        if (s1.equals("user"))
        {
            a1 = f.a().b(s, s2);
        } else
        if (s1.equals("userid"))
        {
            a1 = f.a().a(s, s2);
        } else
        if (s1.equals("hashtag"))
        {
            a1 = f.a().d(s, s2);
        } else
        if (s1.equals("direct"))
        {
            Bundle bundle1 = new Bundle();
            bundle1.putBoolean("InboxFragment.ADD_TO_BACKSTACK", true);
            (new com.instagram.base.a.a.a(s)).a(new c(), bundle1).a();
            boolean flag = bundle.getBoolean("ds_has_comment");
            a1 = f.a().a(s, s2, flag, true);
        } else
        if (s1.equals("direct_request"))
        {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("InboxFragment.ADD_TO_BACKSTACK", true);
            (new com.instagram.base.a.a.a(s)).a(new c(), bundle2).a();
            a1 = (new com.instagram.base.a.a.a(s)).a(new b());
        } else
        if (s1.equals("inbox"))
        {
            a1 = (new com.instagram.base.a.a.a(s)).a(new c());
        } else
        if (s1.equals("editprofile"))
        {
            a1 = (new com.instagram.base.a.a.a(s)).a(new ac());
        } else
        if (s1.equals("findfriends"))
        {
            a1 = f.a().b(s);
        } else
        if (s1.equals("suggestedaccounts"))
        {
            a1 = (new com.instagram.base.a.a.a(s)).a(new dn());
        } else
        if (s1.equals("follow_destination"))
        {
            a1 = (new com.instagram.base.a.a.a(s)).a(new cd());
        } else
        {
            throw new RuntimeException("Received unknown starting bundle type");
        }
        a1.a();
    }

}
