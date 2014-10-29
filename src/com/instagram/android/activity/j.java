// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.os.AsyncTask;
import android.webkit.WebView;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.OAuthProvider;

// Referenced classes of package com.instagram.android.activity:
//            FlickrAuthActivity

final class j extends AsyncTask
{

    final FlickrAuthActivity a;
    private final WebView b;
    private OAuthProvider c;
    private OAuthConsumer d;

    public j(FlickrAuthActivity flickrauthactivity, WebView webview, OAuthProvider oauthprovider, OAuthConsumer oauthconsumer)
    {
        a = flickrauthactivity;
        super();
        b = webview;
        c = oauthprovider;
        d = oauthconsumer;
    }

    private transient String a()
    {
        String s;
        try
        {
            s = c.retrieveRequestToken(d, "instagram://flickr_callback");
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    private void a(String s)
    {
        if (s != null)
        {
            if (!a.isFinishing())
            {
                b.loadUrl(s);
            }
            return;
        } else
        {
            FlickrAuthActivity.d(a);
            return;
        }
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        a((String)obj);
    }
}
