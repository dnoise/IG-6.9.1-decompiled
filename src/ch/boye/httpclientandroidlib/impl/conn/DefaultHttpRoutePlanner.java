// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn;

import ch.boye.httpclientandroidlib.HttpException;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.conn.params.ConnRouteParams;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoutePlanner;
import ch.boye.httpclientandroidlib.conn.scheme.Scheme;
import ch.boye.httpclientandroidlib.conn.scheme.SchemeRegistry;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public class DefaultHttpRoutePlanner
    implements HttpRoutePlanner
{

    protected final SchemeRegistry schemeRegistry;

    public DefaultHttpRoutePlanner(SchemeRegistry schemeregistry)
    {
        if (schemeregistry == null)
        {
            throw new IllegalArgumentException("SchemeRegistry must not be null.");
        } else
        {
            schemeRegistry = schemeregistry;
            return;
        }
    }

    public HttpRoute determineRoute(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
    {
        if (httprequest == null)
        {
            throw new IllegalStateException("Request must not be null.");
        }
        HttpRoute httproute = ConnRouteParams.getForcedRoute(httprequest.getParams());
        if (httproute != null)
        {
            return httproute;
        }
        if (httphost == null)
        {
            throw new IllegalStateException("Target host must not be null.");
        }
        java.net.InetAddress inetaddress = ConnRouteParams.getLocalAddress(httprequest.getParams());
        HttpHost httphost1 = ConnRouteParams.getDefaultProxy(httprequest.getParams());
        Scheme scheme;
        boolean flag;
        try
        {
            scheme = schemeRegistry.getScheme(httphost.getSchemeName());
        }
        catch (IllegalStateException illegalstateexception)
        {
            throw new HttpException(illegalstateexception.getMessage());
        }
        flag = scheme.isLayered();
        if (httphost1 == null)
        {
            return new HttpRoute(httphost, inetaddress, flag);
        } else
        {
            return new HttpRoute(httphost, inetaddress, httphost1, flag);
        }
    }
}
