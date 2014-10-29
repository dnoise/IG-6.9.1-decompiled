// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.tumblr;

import android.content.Context;
import android.support.v4.a.a;
import java.util.Arrays;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;

// Referenced classes of package com.instagram.share.tumblr:
//            f, e

public final class d extends a
{

    private e n;
    private boolean o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;

    public d(Context context)
    {
        super(context);
    }

    private void a(e e1)
    {
        j();
        n = e1;
        if (h())
        {
            super.a(e1);
        }
    }

    private e u()
    {
        new com.instagram.api.f.a(f());
        HttpClient httpclient = com.instagram.api.f.a.a();
        HttpPost httppost = new HttpPost(p);
        CommonsHttpOAuthConsumer commonshttpoauthconsumer = new CommonsHttpOAuthConsumer(q, r);
        BasicNameValuePair abasicnamevaluepair[] = new BasicNameValuePair[3];
        abasicnamevaluepair[0] = new BasicNameValuePair("x_auth_username", s);
        abasicnamevaluepair[1] = new BasicNameValuePair("x_auth_password", t);
        abasicnamevaluepair[2] = new BasicNameValuePair("x_auth_mode", "client_auth");
        java.util.List list = Arrays.asList(abasicnamevaluepair);
        f f1 = new f();
        e e1;
        try
        {
            httppost.setEntity(new UrlEncodedFormEntity(list, "UTF-8"));
            commonshttpoauthconsumer.sign(httppost);
            e1 = com.instagram.share.tumblr.e.a(httpclient.execute(httppost));
        }
        catch (Exception exception)
        {
            f1.c(exception.getMessage());
            return f1.a();
        }
        return e1;
    }

    public final volatile void a(Object obj)
    {
        a((e)obj);
    }

    public final void a(String s1)
    {
        p = s1;
    }

    public final void a(String s1, String s2)
    {
        q = s1;
        r = s2;
    }

    public final void a(boolean flag)
    {
        o = flag;
    }

    public final void b(String s1, String s2)
    {
        s = s1;
        t = s2;
    }

    public final Object d()
    {
        return u();
    }

    protected final void l()
    {
        if (n == null && !o)
        {
            m();
        }
        if (n != null)
        {
            a(n);
        }
    }

    protected final void o()
    {
        b();
    }

    protected final void r()
    {
        super.r();
        o();
        if (n != null)
        {
            n = null;
        }
    }
}
