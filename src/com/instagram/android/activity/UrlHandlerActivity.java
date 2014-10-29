// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import android.widget.Toast;
import com.facebook.av;
import com.facebook.az;
import com.instagram.android.fragment.eo;
import com.instagram.android.fragment.fo;
import com.instagram.android.nux.SignedOutFragmentActivity;
import com.instagram.base.activity.a;
import com.instagram.common.analytics.b;

// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity, aa

public class UrlHandlerActivity extends a
{

    private static final Class p = com/instagram/android/activity/UrlHandlerActivity;

    public UrlHandlerActivity()
    {
    }

    private static String b(String s1)
    {
        String as[] = s1.split("/");
        if (as.length >= 3)
        {
            return as[2];
        } else
        {
            return null;
        }
    }

    private void g()
    {
        Intent intent = new Intent(this, com/instagram/android/nux/SignedOutFragmentActivity);
        intent.setFlags(0x4000000);
        startActivity(intent);
        finish();
    }

    public final void a_()
    {
        if (d().g() > 0)
        {
            super.a_();
            return;
        } else
        {
            com.instagram.b.c.a.a().a(this, "up");
            Intent intent = new Intent(this, com/instagram/android/activity/MainTabActivity);
            intent.setFlags(0x10020000);
            startActivity(intent);
            finish();
            return;
        }
    }

    protected final void h()
    {
        com.instagram.service.a.a.a();
        if (!com.instagram.service.a.a.d())
        {
            Toast.makeText(this, az.must_be_logged_in, 0).show();
            g();
            return;
        }
        Bundle bundle = new Bundle();
        String s1 = getIntent().getDataString();
        String s2 = Uri.parse(s1).getPath();
        Object obj;
        if (s2.startsWith("/_u/") || s2.startsWith("/_uid"))
        {
            String s3 = b(s2);
            if (s3 == null)
            {
                com.facebook.e.a.a.a(p, "Improper user url: %s", new Object[] {
                    s1
                });
                finish();
                return;
            }
            fo fo1 = new fo();
            String s4;
            ag ag1;
            if (s2.startsWith("/_u/"))
            {
                s4 = "UserDetailFragment.EXTRA_USER_NAME";
            } else
            {
                s4 = "UserDetailFragment.EXTRA_USER_ID";
            }
            bundle.putString(s4, s3);
            obj = fo1;
        } else
        {
            obj = new eo();
            bundle.putString("com.instagram.android.fragment.ARGUMENTS_KEY_SHORT_URL", s1);
        }
        (new b("ig_url_loaded", new aa(this))).a("url", s1).a("attribution_id", com.instagram.l.a.b.a().i()).a();
        ((Fragment) (obj)).g(bundle);
        ag1 = d().a();
        ag1.b(av.layout_container_main, ((Fragment) (obj)));
        ag1.b();
    }

}
