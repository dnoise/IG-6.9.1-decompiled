// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import ch.boye.httpclientandroidlib.HttpClientConnection;
import ch.boye.httpclientandroidlib.HttpException;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import ch.boye.httpclientandroidlib.protocol.HttpRequestExecutor;
import java.io.IOException;

// Referenced classes of package com.instagram.api.g:
//            j

public final class m extends HttpRequestExecutor
{

    private final j a;

    public m(j j1)
    {
        a = j1;
    }

    protected final HttpResponse doReceiveResponse(HttpRequest httprequest, HttpClientConnection httpclientconnection, HttpContext httpcontext)
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpclientconnection == null)
        {
            throw new IllegalArgumentException("HTTP connection may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        HttpResponse httpresponse = null;
        for (int i = 0; httpresponse == null || i < 200; i = httpresponse.getStatusLine().getStatusCode())
        {
            httpresponse = httpclientconnection.receiveResponseHeader();
            a.a(httprequest, 2);
            if (canResponseHaveBody(httprequest, httpresponse))
            {
                httpclientconnection.receiveResponseEntity(httpresponse);
            }
        }

        a.a(httprequest, httpresponse, httpclientconnection);
        return httpresponse;
    }

    protected final HttpResponse doSendRequest(HttpRequest httprequest, HttpClientConnection httpclientconnection, HttpContext httpcontext)
    {
        a.a(httprequest);
        HttpResponse httpresponse = super.doSendRequest(httprequest, httpclientconnection, httpcontext);
        a.a(httprequest, 1);
        if (httpresponse != null)
        {
            a.a(httprequest, 2);
            a.a(httprequest, httpresponse, httpclientconnection);
        }
        return httpresponse;
    }

    public final HttpResponse execute(HttpRequest httprequest, HttpClientConnection httpclientconnection, HttpContext httpcontext)
    {
        HttpResponse httpresponse;
        try
        {
            httpresponse = super.execute(httprequest, httpclientconnection, httpcontext);
        }
        catch (IOException ioexception)
        {
            a.a(httprequest, ioexception);
            throw ioexception;
        }
        catch (HttpException httpexception)
        {
            a.a(httprequest, httpexception);
            throw httpexception;
        }
        catch (RuntimeException runtimeexception)
        {
            a.a(httprequest, runtimeexception);
            throw runtimeexception;
        }
        return httpresponse;
    }
}
