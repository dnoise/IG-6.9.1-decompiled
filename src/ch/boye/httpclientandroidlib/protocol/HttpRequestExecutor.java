// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.HttpClientConnection;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpException;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.io.IOException;
import java.net.ProtocolException;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpContext, HttpProcessor

public class HttpRequestExecutor
{

    public HttpRequestExecutor()
    {
    }

    private static final void closeConnection(HttpClientConnection httpclientconnection)
    {
        try
        {
            httpclientconnection.close();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    protected boolean canResponseHaveBody(HttpRequest httprequest, HttpResponse httpresponse)
    {
        int i;
        if (!"HEAD".equalsIgnoreCase(httprequest.getRequestLine().getMethod()))
        {
            if ((i = httpresponse.getStatusLine().getStatusCode()) >= 200 && i != 204 && i != 304 && i != 205)
            {
                return true;
            }
        }
        return false;
    }

    protected HttpResponse doReceiveResponse(HttpRequest httprequest, HttpClientConnection httpclientconnection, HttpContext httpcontext)
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
            if (canResponseHaveBody(httprequest, httpresponse))
            {
                httpclientconnection.receiveResponseEntity(httpresponse);
            }
        }

        return httpresponse;
    }

    protected HttpResponse doSendRequest(HttpRequest httprequest, HttpClientConnection httpclientconnection, HttpContext httpcontext)
    {
        ProtocolVersion protocolversion;
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
        httpcontext.setAttribute("http.connection", httpclientconnection);
        httpcontext.setAttribute("http.request_sent", Boolean.FALSE);
        httpclientconnection.sendRequestHeader(httprequest);
        if (!(httprequest instanceof HttpEntityEnclosingRequest))
        {
            break MISSING_BLOCK_LABEL_288;
        }
        protocolversion = httprequest.getRequestLine().getProtocolVersion();
        if (!((HttpEntityEnclosingRequest)httprequest).expectContinue() || protocolversion.lessEquals(HttpVersion.HTTP_1_0)) goto _L2; else goto _L1
_L1:
        httpclientconnection.flush();
        if (!httpclientconnection.isResponseAvailable(httprequest.getParams().getIntParameter("http.protocol.wait-for-continue", 2000))) goto _L2; else goto _L3
_L3:
        HttpResponse httpresponse;
        boolean flag;
        HttpResponse httpresponse1 = httpclientconnection.receiveResponseHeader();
        if (canResponseHaveBody(httprequest, httpresponse1))
        {
            httpclientconnection.receiveResponseEntity(httpresponse1);
        }
        int i = httpresponse1.getStatusLine().getStatusCode();
        if (i < 200)
        {
            if (i != 100)
            {
                throw new ProtocolException((new StringBuilder("Unexpected response: ")).append(httpresponse1.getStatusLine()).toString());
            }
            httpresponse = null;
            flag = true;
        } else
        {
            httpresponse = httpresponse1;
            flag = false;
        }
_L4:
        if (flag)
        {
            httpclientconnection.sendRequestEntity((HttpEntityEnclosingRequest)httprequest);
        }
_L5:
        httpclientconnection.flush();
        httpcontext.setAttribute("http.request_sent", Boolean.TRUE);
        return httpresponse;
_L2:
        flag = true;
        httpresponse = null;
          goto _L4
        httpresponse = null;
          goto _L5
    }

    public HttpResponse execute(HttpRequest httprequest, HttpClientConnection httpclientconnection, HttpContext httpcontext)
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpclientconnection == null)
        {
            throw new IllegalArgumentException("Client connection may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        HttpResponse httpresponse;
        HttpResponse httpresponse1;
        try
        {
            httpresponse = doSendRequest(httprequest, httpclientconnection, httpcontext);
        }
        catch (IOException ioexception)
        {
            closeConnection(httpclientconnection);
            throw ioexception;
        }
        catch (HttpException httpexception)
        {
            closeConnection(httpclientconnection);
            throw httpexception;
        }
        catch (RuntimeException runtimeexception)
        {
            closeConnection(httpclientconnection);
            throw runtimeexception;
        }
        if (httpresponse != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        httpresponse1 = doReceiveResponse(httprequest, httpclientconnection, httpcontext);
        httpresponse = httpresponse1;
        return httpresponse;
    }

    public void postProcess(HttpResponse httpresponse, HttpProcessor httpprocessor, HttpContext httpcontext)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        if (httpprocessor == null)
        {
            throw new IllegalArgumentException("HTTP processor may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else
        {
            httpcontext.setAttribute("http.response", httpresponse);
            httpprocessor.process(httpresponse, httpcontext);
            return;
        }
    }

    public void preProcess(HttpRequest httprequest, HttpProcessor httpprocessor, HttpContext httpcontext)
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpprocessor == null)
        {
            throw new IllegalArgumentException("HTTP processor may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else
        {
            httpcontext.setAttribute("http.request", httprequest);
            httpprocessor.process(httprequest, httpcontext);
            return;
        }
    }
}
