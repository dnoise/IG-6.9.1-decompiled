// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.base.activity.d;
import com.instagram.share.d.a;
import com.instagram.share.d.c;

// Referenced classes of package com.instagram.android.activity:
//            k

public class FoursquareAuthActivity extends d
{

    private final String p = getClass().getSimpleName();

    public FoursquareAuthActivity()
    {
    }

    static String a(FoursquareAuthActivity foursquareauthactivity, String s)
    {
        return foursquareauthactivity.e(s);
    }

    public static void b(Fragment fragment)
    {
        fragment.a(new Intent(fragment.l(), com/instagram/android/activity/FoursquareAuthActivity), 2);
    }

    static void b(FoursquareAuthActivity foursquareauthactivity, String s)
    {
        foursquareauthactivity.c(s);
    }

    static boolean b(String s)
    {
        return d(s);
    }

    private void c(String s)
    {
        Intent intent = new Intent();
        if (s == null)
        {
            setResult(0, intent);
        } else
        {
            (new a(s)).c();
            setResult(-1, intent);
        }
        finish();
    }

    private static boolean d(String s)
    {
        return s.indexOf("#access_token=") >= 0;
    }

    private String e(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = s.substring(14 + s.indexOf("#access_token="), s.length());
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            com.facebook.e.a.a.a(p, (new StringBuilder("Unable to pull access_token from URL: ")).append(s).toString());
            return null;
        }
        return s1;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(aw.foursquare_auth);
        WebView webview = (WebView)findViewById(av.webView);
        webview.getSettings().setJavaScriptEnabled(true);
        webview.setWebViewClient(new k(this));
        webview.loadUrl((new StringBuilder("https://foursquare.com/oauth2/authenticate?client_id=")).append(com.instagram.share.d.c.a()).append("&response_type=token&redirect_uri=https://instagram.com/foursquare/oauth_callback/").toString());
    }
}
