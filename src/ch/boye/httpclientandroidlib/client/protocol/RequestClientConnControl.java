// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.protocol;

import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.conn.HttpRoutedConnection;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public class RequestClientConnControl
    implements HttpRequestInterceptor
{

    private static final String PROXY_CONN_DIRECTIVE = "Proxy-Connection";
    public HttpClientAndroidLog log;

    public RequestClientConnControl()
    {
        log = new HttpClientAndroidLog(getClass());
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httprequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT"))
        {
            httprequest.setHeader("Proxy-Connection", "Keep-Alive");
        } else
        {
            HttpRoutedConnection httproutedconnection = (HttpRoutedConnection)httpcontext.getAttribute("http.connection");
            if (httproutedconnection == null)
            {
                log.debug("HTTP connection not set in the context");
                return;
            }
            HttpRoute httproute = httproutedconnection.getRoute();
            if ((httproute.getHopCount() == 1 || httproute.isTunnelled()) && !httprequest.containsHeader("Connection"))
            {
                httprequest.addHeader("Connection", "Keep-Alive");
            }
            if (httproute.getHopCount() == 2 && !httproute.isTunnelled() && !httprequest.containsHeader("Proxy-Connection"))
            {
                httprequest.addHeader("Proxy-Connection", "Keep-Alive");
                return;
            }
        }
    }
}
