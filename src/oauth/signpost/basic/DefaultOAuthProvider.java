// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost.basic;

import java.net.HttpURLConnection;
import java.net.URL;
import oauth.signpost.AbstractOAuthProvider;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.http.HttpResponse;

// Referenced classes of package oauth.signpost.basic:
//            HttpURLConnectionRequestAdapter, HttpURLConnectionResponseAdapter

public class DefaultOAuthProvider extends AbstractOAuthProvider
{

    private static final long serialVersionUID = 1L;

    public DefaultOAuthProvider(String s, String s1, String s2)
    {
        super(s, s1, s2);
    }

    protected void closeConnection(HttpRequest httprequest, HttpResponse httpresponse)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)httprequest.unwrap();
        if (httpurlconnection != null)
        {
            httpurlconnection.disconnect();
        }
    }

    protected HttpRequest createRequest(String s)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        httpurlconnection.setRequestMethod("POST");
        httpurlconnection.setAllowUserInteraction(false);
        httpurlconnection.setRequestProperty("Content-Length", "0");
        return new HttpURLConnectionRequestAdapter(httpurlconnection);
    }

    protected HttpResponse sendRequest(HttpRequest httprequest)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)httprequest.unwrap();
        httpurlconnection.connect();
        return new HttpURLConnectionResponseAdapter(httpurlconnection);
    }
}
