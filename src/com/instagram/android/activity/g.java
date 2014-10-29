// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.os.AsyncTask;
import com.instagram.share.c.a;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.OAuthProvider;

// Referenced classes of package com.instagram.android.activity:
//            FlickrAuthActivity

final class g extends AsyncTask
{

    final FlickrAuthActivity a;
    private final String b;
    private OAuthProvider c;
    private OAuthConsumer d;

    public g(FlickrAuthActivity flickrauthactivity, String s, OAuthProvider oauthprovider, OAuthConsumer oauthconsumer)
    {
        a = flickrauthactivity;
        super();
        b = s;
        c = oauthprovider;
        d = oauthconsumer;
    }

    private transient Boolean a()
    {
        try
        {
            c.retrieveAccessToken(d, b);
        }
        catch (Exception exception)
        {
            return Boolean.valueOf(false);
        }
        return Boolean.valueOf(true);
    }

    private void a(Boolean boolean1)
    {
        if (boolean1.booleanValue())
        {
            com.instagram.share.c.a.a(d.getToken(), d.getTokenSecret());
            if (!a.isFinishing())
            {
                a.setResult(-1);
                a.finish();
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
        a((Boolean)obj);
    }
}
