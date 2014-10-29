// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.an;
import android.support.v4.app.f;
import android.support.v4.app.s;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.az;
import com.instagram.ui.dialog.g;

// Referenced classes of package com.instagram.android.activity:
//            ab, v, x, w

public class TumblrAuthActivity extends ab
{

    private final android.view.View.OnClickListener q = new v(this);

    public TumblrAuthActivity()
    {
    }

    static void a(TumblrAuthActivity tumblrauthactivity)
    {
        tumblrauthactivity.j();
    }

    static String b(TumblrAuthActivity tumblrauthactivity)
    {
        return tumblrauthactivity.h();
    }

    public static void b(Fragment fragment)
    {
        fragment.a(new Intent(fragment.l(), com/instagram/android/activity/TumblrAuthActivity), 3);
    }

    static String c(TumblrAuthActivity tumblrauthactivity)
    {
        return tumblrauthactivity.i();
    }

    static void d(TumblrAuthActivity tumblrauthactivity)
    {
        tumblrauthactivity.k();
    }

    private String h()
    {
        EditText edittext = (EditText)findViewById(av.username);
        if (edittext != null)
        {
            return edittext.getText().toString();
        } else
        {
            return null;
        }
    }

    private String i()
    {
        EditText edittext = (EditText)findViewById(av.password);
        if (edittext != null)
        {
            return edittext.getText().toString();
        } else
        {
            return null;
        }
    }

    private void j()
    {
        com.instagram.ui.dialog.g.W().a(d(), "progressDialog");
        e().a(0, new x(this, (byte)0));
    }

    private void k()
    {
        f f1 = (f)d().a("progressDialog");
        p.post(new w(this, f1));
    }

    protected final String f()
    {
        return getResources().getString(az.tumblr);
    }

    protected final void g()
    {
        Bundle bundle = new Bundle();
        bundle.putBoolean("deliverOnly", true);
        e().a(0, bundle, new x(this, (byte)0));
        findViewById(av.done).setOnClickListener(q);
        ((EditText)findViewById(av.username)).setHint((new StringBuilder()).append(f()).append(" ").append(getString(az.email)).toString());
        ((TextView)findViewById(av.follow_instagram_text)).setText(az.followInstagramBlog);
    }
}
