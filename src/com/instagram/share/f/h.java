// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.f;

import android.content.Context;
import android.os.AsyncTask;
import com.instagram.api.f.a;
import java.util.Arrays;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.instagram.share.f:
//            f, a

final class h extends AsyncTask
{

    final Context a;

    h(Context context)
    {
        a = context;
        super();
    }

    private transient Void a()
    {
        new a(a);
        HttpClient httpclient = com.instagram.api.f.a.a();
        HttpPost httppost = new HttpPost("https://api.twitter.com/1.1/friendships/create.json");
        CommonsHttpOAuthConsumer commonshttpoauthconsumer = new CommonsHttpOAuthConsumer(com.instagram.share.f.f.a(), f.b());
        com.instagram.share.f.a a1 = com.instagram.share.f.a.b();
        commonshttpoauthconsumer.setTokenWithSecret(a1.e(), a1.f());
        BasicNameValuePair abasicnamevaluepair[] = new BasicNameValuePair[2];
        abasicnamevaluepair[0] = new BasicNameValuePair("screen_name", "instagram");
        abasicnamevaluepair[1] = new BasicNameValuePair("follow", "true");
        java.util.List list = Arrays.asList(abasicnamevaluepair);
        try
        {
            httppost.setEntity(new UrlEncodedFormEntity(list, "UTF-8"));
            commonshttpoauthconsumer.sign(httppost);
            HttpResponse httpresponse = httpclient.execute(httppost);
            if (200 != httpresponse.getStatusLine().getStatusCode())
            {
                com.facebook.e.a.a.a("TwitterService", (new StringBuilder("Error in following twitter account, status code: ")).append(httpresponse.getStatusLine().getStatusCode()).toString());
            }
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("TwitterService", "Error in following twitter account.", exception);
        }
        return null;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }
}
