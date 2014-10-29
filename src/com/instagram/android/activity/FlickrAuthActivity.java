// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.app.Dialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.base.activity.d;
import com.instagram.ui.dialog.b;
import oauth.signpost.OAuthProvider;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthProvider;

// Referenced classes of package com.instagram.android.activity:
//            f, h, j

public class FlickrAuthActivity extends d
{

    private CommonsHttpOAuthConsumer p;
    private OAuthProvider q;
    private Handler r;

    public FlickrAuthActivity()
    {
    }

    static Handler a(FlickrAuthActivity flickrauthactivity)
    {
        return flickrauthactivity.r;
    }

    static OAuthProvider b(FlickrAuthActivity flickrauthactivity)
    {
        return flickrauthactivity.q;
    }

    public static void b(Fragment fragment)
    {
        fragment.a(new Intent(fragment.l(), com/instagram/android/activity/FlickrAuthActivity), 4);
    }

    static CommonsHttpOAuthConsumer c(FlickrAuthActivity flickrauthactivity)
    {
        return flickrauthactivity.p;
    }

    static void d(FlickrAuthActivity flickrauthactivity)
    {
        flickrauthactivity.g();
    }

    private void g()
    {
        if (!isFinishing())
        {
            b b1 = new b(this);
            b1.b(az.unknown_error_occured);
            b1.a(true);
            b1.b(az.ok, new f(this));
            b1.c().show();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        r = new Handler();
        setContentView(aw.foursquare_auth);
        WebView webview = (WebView)findViewById(av.webView);
        webview.setWebViewClient(new h(this, (byte)0));
        webview.getSettings().setJavaScriptEnabled(true);
        p = new CommonsHttpOAuthConsumer(com.instagram.share.c.b.a(), com.instagram.share.c.b.b());
        q = new CommonsHttpOAuthProvider("http://www.flickr.com/services/oauth/request_token", "http://www.flickr.com/services/oauth/access_token", "http://www.flickr.com/services/oauth/authorize");
        q.setOAuth10a(true);
        (new j(this, webview, q, p)).execute(new Object[0]);
    }
}
