// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.ConnectionReuseStrategy;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpException;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseFactory;
import ch.boye.httpclientandroidlib.HttpServerConnection;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.MethodNotSupportedException;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.UnsupportedHttpVersionException;
import ch.boye.httpclientandroidlib.entity.ByteArrayEntity;
import ch.boye.httpclientandroidlib.params.DefaultedHttpParams;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.util.EncodingUtils;
import ch.boye.httpclientandroidlib.util.EntityUtils;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpRequestHandlerResolver, HttpRequestHandler, HttpContext, HttpExpectationVerifier, 
//            HttpProcessor

public class HttpService
{

    private volatile ConnectionReuseStrategy connStrategy;
    private volatile HttpExpectationVerifier expectationVerifier;
    private volatile HttpRequestHandlerResolver handlerResolver;
    private volatile HttpParams params;
    private volatile HttpProcessor processor;
    private volatile HttpResponseFactory responseFactory;

    public HttpService(HttpProcessor httpprocessor, ConnectionReuseStrategy connectionreusestrategy, HttpResponseFactory httpresponsefactory)
    {
        params = null;
        processor = null;
        handlerResolver = null;
        connStrategy = null;
        responseFactory = null;
        expectationVerifier = null;
        setHttpProcessor(httpprocessor);
        setConnReuseStrategy(connectionreusestrategy);
        setResponseFactory(httpresponsefactory);
    }

    public HttpService(HttpProcessor httpprocessor, ConnectionReuseStrategy connectionreusestrategy, HttpResponseFactory httpresponsefactory, HttpRequestHandlerResolver httprequesthandlerresolver, HttpParams httpparams)
    {
        this(httpprocessor, connectionreusestrategy, httpresponsefactory, httprequesthandlerresolver, null, httpparams);
    }

    public HttpService(HttpProcessor httpprocessor, ConnectionReuseStrategy connectionreusestrategy, HttpResponseFactory httpresponsefactory, HttpRequestHandlerResolver httprequesthandlerresolver, HttpExpectationVerifier httpexpectationverifier, HttpParams httpparams)
    {
        params = null;
        processor = null;
        handlerResolver = null;
        connStrategy = null;
        responseFactory = null;
        expectationVerifier = null;
        if (httpprocessor == null)
        {
            throw new IllegalArgumentException("HTTP processor may not be null");
        }
        if (connectionreusestrategy == null)
        {
            throw new IllegalArgumentException("Connection reuse strategy may not be null");
        }
        if (httpresponsefactory == null)
        {
            throw new IllegalArgumentException("Response factory may not be null");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            processor = httpprocessor;
            connStrategy = connectionreusestrategy;
            responseFactory = httpresponsefactory;
            handlerResolver = httprequesthandlerresolver;
            expectationVerifier = httpexpectationverifier;
            params = httpparams;
            return;
        }
    }

    protected void doService(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
    {
        HttpRequestHandlerResolver httprequesthandlerresolver = handlerResolver;
        HttpRequestHandler httprequesthandler = null;
        if (httprequesthandlerresolver != null)
        {
            String s = httprequest.getRequestLine().getUri();
            httprequesthandler = handlerResolver.lookup(s);
        }
        if (httprequesthandler != null)
        {
            httprequesthandler.handle(httprequest, httpresponse, httpcontext);
            return;
        } else
        {
            httpresponse.setStatusCode(501);
            return;
        }
    }

    public HttpParams getParams()
    {
        return params;
    }

    protected void handleException(HttpException httpexception, HttpResponse httpresponse)
    {
        ByteArrayEntity bytearrayentity;
        if (httpexception instanceof MethodNotSupportedException)
        {
            httpresponse.setStatusCode(501);
        } else
        if (httpexception instanceof UnsupportedHttpVersionException)
        {
            httpresponse.setStatusCode(505);
        } else
        if (httpexception instanceof ProtocolException)
        {
            httpresponse.setStatusCode(400);
        } else
        {
            httpresponse.setStatusCode(500);
        }
        bytearrayentity = new ByteArrayEntity(EncodingUtils.getAsciiBytes(httpexception.getMessage()));
        bytearrayentity.setContentType("text/plain; charset=US-ASCII");
        httpresponse.setEntity(bytearrayentity);
    }

    public void handleRequest(HttpServerConnection httpserverconnection, HttpContext httpcontext)
    {
        httpcontext.setAttribute("http.connection", httpserverconnection);
        HttpRequest httprequest;
        ProtocolVersion protocolversion;
        Object obj;
        httprequest = httpserverconnection.receiveRequestHeader();
        httprequest.setParams(new DefaultedHttpParams(httprequest.getParams(), params));
        protocolversion = httprequest.getRequestLine().getProtocolVersion();
        if (protocolversion.lessEquals(HttpVersion.HTTP_1_1))
        {
            break MISSING_BLOCK_LABEL_484;
        }
        obj = HttpVersion.HTTP_1_1;
_L7:
        if (!(httprequest instanceof HttpEntityEnclosingRequest))
        {
            break MISSING_BLOCK_LABEL_491;
        }
        if (!((HttpEntityEnclosingRequest)httprequest).expectContinue()) goto _L2; else goto _L1
_L1:
        HttpResponse httpresponse;
        HttpExpectationVerifier httpexpectationverifier;
        httpresponse = responseFactory.newHttpResponse(((ProtocolVersion) (obj)), 100, httpcontext);
        httpresponse.setParams(new DefaultedHttpParams(httpresponse.getParams(), params));
        httpexpectationverifier = expectationVerifier;
        if (httpexpectationverifier == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        expectationVerifier.verify(httprequest, httpresponse, httpcontext);
_L5:
        if (httpresponse.getStatusLine().getStatusCode() >= 200) goto _L4; else goto _L3
_L3:
        httpserverconnection.sendResponseHeader(httpresponse);
        httpserverconnection.flush();
_L2:
        httpserverconnection.receiveRequestEntity((HttpEntityEnclosingRequest)httprequest);
        break MISSING_BLOCK_LABEL_491;
_L4:
        HttpException httpexception;
        HttpException httpexception1;
        HttpResponse httpresponse1;
        for (; httpresponse != null; httpresponse = null)
        {
            break MISSING_BLOCK_LABEL_293;
        }

        httpresponse = responseFactory.newHttpResponse(((ProtocolVersion) (obj)), 200, httpcontext);
        httpresponse.setParams(new DefaultedHttpParams(httpresponse.getParams(), params));
        httpcontext.setAttribute("http.request", httprequest);
        httpcontext.setAttribute("http.response", httpresponse);
        processor.process(httprequest, httpcontext);
        doService(httprequest, httpresponse, httpcontext);
        if (httprequest instanceof HttpEntityEnclosingRequest)
        {
            EntityUtils.consume(((HttpEntityEnclosingRequest)httprequest).getEntity());
        }
_L6:
        processor.process(httpresponse, httpcontext);
        httpserverconnection.sendResponseHeader(httpresponse);
        httpserverconnection.sendResponseEntity(httpresponse);
        httpserverconnection.flush();
        if (!connStrategy.keepAlive(httpresponse, httpcontext))
        {
            httpserverconnection.close();
        }
        return;
        httpexception1;
        httpresponse1 = responseFactory.newHttpResponse(HttpVersion.HTTP_1_0, 500, httpcontext);
        httpresponse1.setParams(new DefaultedHttpParams(httpresponse1.getParams(), params));
        handleException(httpexception1, httpresponse1);
        httpresponse = httpresponse1;
          goto _L5
        httpexception;
        httpresponse = responseFactory.newHttpResponse(HttpVersion.HTTP_1_0, 500, httpcontext);
        httpresponse.setParams(new DefaultedHttpParams(httpresponse.getParams(), params));
        handleException(httpexception, httpresponse);
          goto _L6
        obj = protocolversion;
          goto _L7
    }

    public void setConnReuseStrategy(ConnectionReuseStrategy connectionreusestrategy)
    {
        if (connectionreusestrategy == null)
        {
            throw new IllegalArgumentException("Connection reuse strategy may not be null");
        } else
        {
            connStrategy = connectionreusestrategy;
            return;
        }
    }

    public void setExpectationVerifier(HttpExpectationVerifier httpexpectationverifier)
    {
        expectationVerifier = httpexpectationverifier;
    }

    public void setHandlerResolver(HttpRequestHandlerResolver httprequesthandlerresolver)
    {
        handlerResolver = httprequesthandlerresolver;
    }

    public void setHttpProcessor(HttpProcessor httpprocessor)
    {
        if (httpprocessor == null)
        {
            throw new IllegalArgumentException("HTTP processor may not be null");
        } else
        {
            processor = httpprocessor;
            return;
        }
    }

    public void setParams(HttpParams httpparams)
    {
        params = httpparams;
    }

    public void setResponseFactory(HttpResponseFactory httpresponsefactory)
    {
        if (httpresponsefactory == null)
        {
            throw new IllegalArgumentException("Response factory may not be null");
        } else
        {
            responseFactory = httpresponsefactory;
            return;
        }
    }
}
