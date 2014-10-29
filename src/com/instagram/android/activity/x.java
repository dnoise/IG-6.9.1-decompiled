// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.c;
import android.support.v4.app.an;
import android.support.v4.app.ao;
import android.widget.CompoundButton;
import com.facebook.av;
import com.facebook.az;
import com.instagram.share.tumblr.TumblrService;
import com.instagram.share.tumblr.a;
import com.instagram.share.tumblr.b;
import com.instagram.share.tumblr.d;
import com.instagram.share.tumblr.e;

// Referenced classes of package com.instagram.android.activity:
//            TumblrAuthActivity

final class x
    implements ao
{

    final TumblrAuthActivity a;

    private x(TumblrAuthActivity tumblrauthactivity)
    {
        a = tumblrauthactivity;
        super();
    }

    x(TumblrAuthActivity tumblrauthactivity, byte byte0)
    {
        this(tumblrauthactivity);
    }

    private void a(c c1, e e1)
    {
        a.e().a(c1.g());
        com.instagram.android.activity.TumblrAuthActivity.d(a);
        if (e1.c())
        {
            (new StringBuilder("Success! Token: ")).append(e1.a()).append(", Secret: ").append(e1.b());
            if (((CompoundButton)a.findViewById(av.followInstagram)).isChecked())
            {
                TumblrService.a(a.getApplicationContext());
            }
            com.instagram.share.tumblr.a.a(e1.a(), e1.b());
            a.setResult(-1);
            a.finish();
            return;
        } else
        {
            a.b(a.getResources().getString(az.tumblr_login_error));
            return;
        }
    }

    public final c a(Bundle bundle)
    {
        d d1 = new d(a.getApplicationContext());
        boolean flag;
        if (bundle != null && bundle.getBoolean("deliverOnly"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d1.a(flag);
        d1.a("https://www.tumblr.com/oauth/access_token");
        d1.b(com.instagram.android.activity.TumblrAuthActivity.b(a), com.instagram.android.activity.TumblrAuthActivity.c(a));
        d1.a(b.a(), b.b());
        return d1;
    }

    public final volatile void a(c c1, Object obj)
    {
        a(c1, (e)obj);
    }
}
