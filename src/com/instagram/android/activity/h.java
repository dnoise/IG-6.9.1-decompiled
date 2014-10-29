// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.os.AsyncTask;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.e.a.a;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

// Referenced classes of package com.instagram.android.activity:
//            FlickrAuthActivity, i, g

final class h extends WebViewClient
{

    final FlickrAuthActivity a;

    private h(FlickrAuthActivity flickrauthactivity)
    {
        a = flickrauthactivity;
        super();
    }

    h(FlickrAuthActivity flickrauthactivity, byte byte0)
    {
        this(flickrauthactivity);
    }

    private static boolean a(String s)
    {
        return s.indexOf("oauth_verifier") >= 0;
    }

    private String b(String s)
    {
        List list = URLEncodedUtils.parse(new URI(s), "UTF-8");
        if (s == null)
        {
            return null;
        }
        String s1;
        Iterator iterator = list.iterator();
        NameValuePair namevaluepair;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_92;
            }
            namevaluepair = (NameValuePair)iterator.next();
        } while (!namevaluepair.getName().equalsIgnoreCase("oauth_verifier"));
        s1 = namevaluepair.getValue();
        return s1;
        Exception exception;
        exception;
        FlickrAuthActivity.d(a);
        com.facebook.e.a.a.a("FlickrAuthActivity", "Unable to parse oauth_token");
        return null;
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s.contains("oauth/authorize"))
        {
            webview.loadUrl((new StringBuilder()).append(s).append("&perms=write").toString());
        } else
        if (s.startsWith("http://instagram.com"))
        {
            com.instagram.android.activity.FlickrAuthActivity.a(a).post(new i(this));
        } else
        if (a(s))
        {
            String s1 = b(s);
            if (s1 != null)
            {
                (new g(a, s1, FlickrAuthActivity.b(a), FlickrAuthActivity.c(a))).execute(new Object[0]);
            } else
            {
                FlickrAuthActivity.d(a);
                com.facebook.e.a.a.a("FlickrAuthActivity", "Error retrieving access token fragment");
            }
        } else
        {
            webview.loadUrl(s);
        }
        return true;
    }
}
