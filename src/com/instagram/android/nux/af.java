// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.app.Activity;
import android.content.Intent;
import com.fasterxml.jackson.databind.JsonNode;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.login.c.h;
import com.instagram.api.j.j;
import com.instagram.common.analytics.d;
import com.instagram.common.l.a.e;
import com.instagram.p.b;
import com.instagram.share.b.a;
import com.instagram.user.c.i;

public final class af
{

    public static String a(j j1)
    {
        if (j1.l() != null && j1.l().get("help_url") != null)
        {
            return j1.l().get("help_url").asText();
        } else
        {
            return null;
        }
    }

    public static String a(e e1)
    {
        if (e1.a())
        {
            return ((h)e1.b()).c();
        } else
        {
            return null;
        }
    }

    public static void a(Activity activity)
    {
        b.a();
        com.instagram.share.b.a.a(false);
        Intent intent = new Intent(activity, com/instagram/android/activity/MainTabActivity);
        intent.addFlags(0x14000000);
        activity.startActivity(intent);
        activity.finish();
    }

    public static void a(Activity activity, com.instagram.user.c.a a1)
    {
        com.instagram.common.analytics.a.a().a(a1.g(), com.instagram.share.b.a.f());
        com.instagram.user.c.a a2 = com.instagram.user.c.j.a().a(a1);
        com.instagram.service.a.a.a().d(a2);
        com.instagram.common.u.b.i.a().a(activity);
        com.instagram.service.c.a.a();
    }
}
