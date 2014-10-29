// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.tumblr;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.instagram.api.f.a;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import oauth.signpost.exception.OAuthException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.instagram.share.tumblr:
//            a, c, b

public class TumblrService extends IntentService
{

    public TumblrService()
    {
        super("TumblrService");
    }

    private static int a(Intent intent)
    {
        return intent.getIntExtra("TumblrService.INTENT_EXTRA_SERVICE_ACTION", -1);
    }

    private void a()
    {
        new a(this);
        HttpClient httpclient = com.instagram.api.f.a.a();
        HttpPost httppost = new HttpPost("http://api.tumblr.com/v2/user/follow");
        com.instagram.share.tumblr.a a1 = com.instagram.share.tumblr.a.b();
        if (a1 == null)
        {
            throw new c(this, (byte)0);
        }
        CommonsHttpOAuthConsumer commonshttpoauthconsumer = new CommonsHttpOAuthConsumer(com.instagram.share.tumblr.b.a(), com.instagram.share.tumblr.b.b());
        commonshttpoauthconsumer.setTokenWithSecret(a1.e(), a1.f());
        BasicNameValuePair abasicnamevaluepair[] = new BasicNameValuePair[1];
        abasicnamevaluepair[0] = new BasicNameValuePair("url", "http://blog.instagram.com/");
        java.util.List list = Arrays.asList(abasicnamevaluepair);
        UrlEncodedFormEntity urlencodedformentity;
        try
        {
            urlencodedformentity = new UrlEncodedFormEntity(list, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException("Failed to encode form entity");
        }
        httppost.setEntity(urlencodedformentity);
        try
        {
            commonshttpoauthconsumer.sign(httppost);
        }
        catch (OAuthException oauthexception)
        {
            oauthexception.printStackTrace();
        }
        try
        {
            httpclient.execute(httppost).getStatusLine();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

    public static void a(Context context)
    {
        b(context);
    }

    private static void b(Context context)
    {
        Context context1 = context.getApplicationContext();
        Intent intent = new Intent(context1, com/instagram/share/tumblr/TumblrService);
        intent.putExtra("TumblrService.INTENT_EXTRA_SERVICE_ACTION", 0);
        context1.startService(intent);
    }

    protected void onHandleIntent(Intent intent)
    {
        switch (a(intent))
        {
        default:
            return;

        case 0: // '\0'
            break;
        }
        try
        {
            a();
            return;
        }
        catch (c c1)
        {
            com.facebook.e.a.a.a("TumblrService", "Tumblr account not found", c1);
        }
    }
}
