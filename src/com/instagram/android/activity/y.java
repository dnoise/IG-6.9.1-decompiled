// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.res.Resources;
import android.widget.CompoundButton;
import com.facebook.av;
import com.facebook.az;
import com.instagram.share.f.a;
import com.instagram.share.f.g;
import com.instagram.share.f.k;
import com.instagram.ui.dialog.f;

// Referenced classes of package com.instagram.android.activity:
//            TwitterAuthActivity

final class y
    implements k
{

    final f a;
    final TwitterAuthActivity b;

    y(TwitterAuthActivity twitterauthactivity, f f1)
    {
        b = twitterauthactivity;
        a = f1;
        super();
    }

    public final void a(a a1)
    {
        a.dismiss();
        com.instagram.android.activity.TwitterAuthActivity.a(b);
        StringBuilder stringbuilder = new StringBuilder("Twitter login was ");
        String s;
        if (a1 == null)
        {
            s = "unsuccessful!";
        } else
        {
            s = "a success.";
        }
        stringbuilder.append(s);
        if (a1 == null)
        {
            TwitterAuthActivity twitterauthactivity = b;
            Resources resources = b.getResources();
            int i = az.service_login_error;
            Object aobj[] = new Object[1];
            aobj[0] = b.f();
            twitterauthactivity.b(resources.getString(i, aobj));
            return;
        }
        if (((CompoundButton)b.findViewById(av.followInstagram)).isChecked())
        {
            g.a(b);
        }
        b.setResult(-1);
        b.finish();
    }
}
