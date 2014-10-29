// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost.basic;

import java.io.InputStream;
import java.net.HttpURLConnection;
import oauth.signpost.http.HttpResponse;

public class HttpURLConnectionResponseAdapter
    implements HttpResponse
{

    private HttpURLConnection connection;

    public HttpURLConnectionResponseAdapter(HttpURLConnection httpurlconnection)
    {
        connection = httpurlconnection;
    }

    public InputStream getContent()
    {
        return connection.getInputStream();
    }

    public String getReasonPhrase()
    {
        return connection.getResponseMessage();
    }

    public int getStatusCode()
    {
        return connection.getResponseCode();
    }

    public Object unwrap()
    {
        return connection;
    }
}
