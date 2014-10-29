// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.f;

import android.content.Context;
import android.os.AsyncTask;
import com.instagram.api.f.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Scanner;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.instagram.share.f:
//            f, i, a, k

final class j extends AsyncTask
{

    final Context a;
    final String b;
    final String c;
    final k d;

    j(Context context, String s, String s1, k k1)
    {
        a = context;
        b = s;
        c = s1;
        d = k1;
        super();
    }

    private transient Map a()
    {
        new a(a);
        HttpClient httpclient = com.instagram.api.f.a.a();
        HttpPost httppost = new HttpPost("https://api.twitter.com/oauth/access_token");
        CommonsHttpOAuthConsumer commonshttpoauthconsumer = new CommonsHttpOAuthConsumer(com.instagram.share.f.f.a(), f.b());
        BasicNameValuePair abasicnamevaluepair[] = new BasicNameValuePair[3];
        abasicnamevaluepair[0] = new BasicNameValuePair("x_auth_username", b);
        abasicnamevaluepair[1] = new BasicNameValuePair("x_auth_password", c);
        abasicnamevaluepair[2] = new BasicNameValuePair("x_auth_mode", "client_auth");
        java.util.List list = Arrays.asList(abasicnamevaluepair);
        HttpResponse httpresponse;
        Map map;
        int l;
        ArrayList arraylist;
        Map map1;
        try
        {
            httppost.setEntity(new UrlEncodedFormEntity(list, "UTF-8"));
            commonshttpoauthconsumer.sign(httppost);
            httpresponse = httpclient.execute(httppost);
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("TwitterXAuth", "Unable to retrieve twitter token.", exception);
            return null;
        }
        map = null;
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_217;
        }
        l = httpresponse.getStatusLine().getStatusCode();
        map = null;
        if (l != 200)
        {
            break MISSING_BLOCK_LABEL_217;
        }
        arraylist = new ArrayList();
        URLEncodedUtils.parse(arraylist, new Scanner(httpresponse.getEntity().getContent(), "UTF-8"), "UTF-8");
        map1 = com.instagram.share.f.i.a(arraylist);
        map = map1;
        return map;
    }

    private void a(Map map)
    {
        boolean flag;
        com.instagram.share.f.a a1;
        if (map != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1 = null;
        if (flag)
        {
            a1 = com.instagram.share.f.a.a((String)map.get("oauth_token"), (String)map.get("oauth_token_secret"), (String)map.get("screen_name"));
        }
        d.a(a1);
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        a((Map)obj);
    }
}
