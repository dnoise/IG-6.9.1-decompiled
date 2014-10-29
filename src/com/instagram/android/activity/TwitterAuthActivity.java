// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.az;
import com.instagram.share.f.i;
import com.instagram.ui.dialog.f;

// Referenced classes of package com.instagram.android.activity:
//            ab, y, z

public class TwitterAuthActivity extends ab
{

    private final String q = getClass().getSimpleName();

    public TwitterAuthActivity()
    {
    }

    static String a(TwitterAuthActivity twitterauthactivity)
    {
        return twitterauthactivity.q;
    }

    static void a(TwitterAuthActivity twitterauthactivity, String s, String s1)
    {
        twitterauthactivity.a(s, s1);
    }

    private void a(String s, String s1)
    {
        f f1 = new f(this);
        f1.a(getString(az.loading));
        f1.show();
        com.instagram.share.f.i.a(this, s, s1, new y(this, f1));
    }

    static String b(TwitterAuthActivity twitterauthactivity)
    {
        return twitterauthactivity.h();
    }

    public static void b(Fragment fragment)
    {
        fragment.a(new Intent(fragment.l(), com/instagram/android/activity/TwitterAuthActivity), 1);
    }

    static String c(TwitterAuthActivity twitterauthactivity)
    {
        return twitterauthactivity.i();
    }

    private String h()
    {
        return ((EditText)findViewById(av.username)).getText().toString();
    }

    private String i()
    {
        return ((EditText)findViewById(av.password)).getText().toString();
    }

    protected final String f()
    {
        return getResources().getString(az.twitter);
    }

    protected final void g()
    {
        findViewById(av.done).setOnClickListener(new z(this));
        ((EditText)findViewById(av.username)).setHint((new StringBuilder()).append(f()).append(" ").append(getResources().getString(az.username)).toString());
        ((TextView)findViewById(av.follow_instagram_text)).setText(az.followInstagram);
    }

    protected void onStop()
    {
        com.instagram.common.y.f.a(this, getWindow().getDecorView());
        super.onStop();
    }
}
