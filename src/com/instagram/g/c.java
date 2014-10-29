// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.g;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.support.v4.app.s;
import com.facebook.g.t;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.g:
//            d, e

public final class c
{

    private static final String a[] = {
        "feedback_title", "feedback_message", "feedback_appeal_label", "feedback_ignore_label", "feedback_url"
    };

    public static h a(Activity activity)
    {
        if (!(activity instanceof k))
        {
            return null;
        } else
        {
            s s = ((k)activity).d();
            return (new j(activity)).a().a("FeedbackUtil.BROADCAST_INTENT_FEEDBACK_REQUIRED", new com.instagram.g.d(s)).a();
        }
    }

    public static void a(Bundle bundle)
    {
        Intent intent = new Intent("FeedbackUtil.BROADCAST_INTENT_FEEDBACK_REQUIRED");
        intent.putExtras(bundle);
        com.instagram.common.y.d.a(intent);
    }

    public static void a(s s, Bundle bundle)
    {
        while (t.a(bundle.getString("feedback_message")) || s == null) 
        {
            return;
        }
        (new Handler()).post(new e(bundle, s));
    }

    public static void a(s s, com.instagram.api.j.j j1)
    {
        a(s, d(j1));
    }

    public static void a(com.instagram.api.j.j j1)
    {
        if (b(j1))
        {
            c(j1);
        }
    }

    public static void a(com.instagram.api.k.a.d d1)
    {
        if ("feedback_required".equals(d1.k()) || d1.m())
        {
            Bundle bundle = new Bundle();
            bundle.putString("feedback_title", d1.n());
            bundle.putString("feedback_message", d1.o());
            bundle.putString("feedback_appeal_label", d1.p());
            bundle.putString("feedback_ignore_label", d1.q());
            bundle.putString("feedback_url", d1.r());
            a(bundle);
        }
    }

    public static boolean b(com.instagram.api.j.j j1)
    {
        for (String s = j1.i(); s != null && "feedback_required".equals(s) || j1.b("feedback_required") && "true".equalsIgnoreCase(j1.c("feedback_required"));)
        {
            return true;
        }

        return false;
    }

    public static void c(com.instagram.api.j.j j1)
    {
        a(d(j1));
    }

    private static Bundle d(com.instagram.api.j.j j1)
    {
        Bundle bundle = new Bundle();
        String as[] = a;
        int i = as.length;
        for (int l = 0; l < i; l++)
        {
            String s = as[l];
            bundle.putString(s, j1.c(s));
        }

        return bundle;
    }

}
