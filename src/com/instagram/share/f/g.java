// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.f;

import android.content.Context;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.l;
import com.instagram.api.f.a;
import java.io.IOException;
import java.net.URLEncoder;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.instagram.share.f:
//            f, a, e, d, 
//            h

public final class g
{

    public static String a(Context context, String s)
    {
        HttpClient httpclient;
        HttpGet httpget;
        CommonsHttpOAuthConsumer commonshttpoauthconsumer;
        new a(context);
        httpclient = com.instagram.api.f.a.a();
        httpget = new HttpGet((new StringBuilder("https://api.twitter.com/1.1/users/show.json?screen_name=")).append(URLEncoder.encode(s)).toString());
        commonshttpoauthconsumer = new CommonsHttpOAuthConsumer(com.instagram.share.f.f.a(), f.b());
        com.instagram.share.f.a a1 = com.instagram.share.f.a.b();
        commonshttpoauthconsumer.setTokenWithSecret(a1.e(), a1.f());
        HttpResponse httpresponse1;
        commonshttpoauthconsumer.sign(httpget);
        httpresponse1 = httpclient.execute(httpget);
        HttpResponse httpresponse = httpresponse1;
        if (200 != httpresponse.getStatusLine().getStatusCode()) goto _L2; else goto _L1
_L1:
        String s2;
        l l1 = com.instagram.common.n.a.a.createParser(httpresponse.getEntity().getContent());
        l1.nextToken();
        s2 = com.instagram.share.f.e.a(l1).b().replace("_normal", "_bigger");
        String s1 = s2;
_L3:
        Exception exception;
        Exception exception1;
        HttpEntity httpentity;
        Exception exception2;
        if (httpresponse != null && httpresponse.getEntity() != null)
        {
            try
            {
                httpresponse.getEntity().consumeContent();
            }
            catch (IOException ioexception2)
            {
                return s1;
            }
        }
_L5:
        return s1;
_L2:
        com.facebook.e.a.a.a("TwitterService", (new StringBuilder("Error in fetching twitter avatar url")).append(httpresponse.getStatusLine().getStatusCode()).toString());
        s1 = null;
          goto _L3
        exception;
_L9:
        com.facebook.e.a.a.a("TwitterService", "Error in fetching twitter avatar url.", exception);
        s1 = null;
        if (httpresponse == null) goto _L5; else goto _L4
_L4:
        httpentity = httpresponse.getEntity();
        s1 = null;
        if (httpentity == null) goto _L5; else goto _L6
_L6:
        try
        {
            httpresponse.getEntity().consumeContent();
        }
        catch (IOException ioexception1)
        {
            return null;
        }
        return null;
        exception2;
        httpresponse = null;
        exception1 = exception2;
_L8:
        if (httpresponse != null && httpresponse.getEntity() != null)
        {
            try
            {
                httpresponse.getEntity().consumeContent();
            }
            catch (IOException ioexception) { }
        }
        throw exception1;
        exception1;
        if (true) goto _L8; else goto _L7
_L7:
        exception;
        httpresponse = null;
          goto _L9
    }

    public static void a(Context context)
    {
        (new h(context)).execute(new Void[0]);
    }
}
