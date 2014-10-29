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
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

public class ProxySelectorRoutePlanner
    implements HttpRoutePlanner
{

    protected ProxySelector proxySelector;
    protected final SchemeRegistry schemeRegistry;

    public ProxySelectorRoutePlanner(SchemeRegistry schemeregistry, ProxySelector proxyselector)
    {
        if (schemeregistry == null)
        {
            throw new IllegalArgumentException("SchemeRegistry must not be null.");
        } else
        {
            schemeRegistry = schemeregistry;
            proxySelector = proxyselector;
            return;
        }
    }

    protected Proxy chooseProxy(List list, HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
    {
        if (list == null || list.isEmpty())
        {
            throw new IllegalArgumentException("Proxy list must not be empty.");
        }
        Proxy proxy = null;
        Proxy proxy1;
        for (int i = 0; proxy == null && i < list.size(); proxy = proxy1)
        {
            proxy1 = (Proxy)list.get(i);
            switch (_cls1..SwitchMap.java.net.Proxy.Type[proxy1.type().ordinal()])
            {
            default:
                proxy1 = proxy;
                // fall through

            case 1: // '\001'
            case 2: // '\002'
                i++;
                break;
            }
        }

        if (proxy == null)
        {
            proxy = Proxy.NO_PROXY;
        }
        return proxy;
    }

    protected HttpHost determineProxy(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
    {
        ProxySelector proxyselector = proxySelector;
        if (proxyselector == null)
        {
            proxyselector = ProxySelector.getDefault();
        }
        if (proxyselector != null)
        {
            URI uri;
            Proxy proxy;
            try
            {
                uri = new URI(httphost.toURI());
            }
            catch (URISyntaxException urisyntaxexception)
            {
                throw new HttpException((new StringBuilder("Cannot convert host to URI: ")).append(httphost).toString(), urisyntaxexception);
            }
            proxy = chooseProxy(proxyselector.select(uri), httphost, httprequest, httpcontext);
            if (proxy.type() == java.net.Proxy.Type.HTTP)
            {
                if (!(proxy.address() instanceof InetSocketAddress))
                {
                    throw new HttpException((new StringBuilder("Unable to handle non-Inet proxy address: ")).append(proxy.address()).toString());
                } else
                {
                    InetSocketAddress inetsocketaddress = (InetSocketAddress)proxy.address();
                    return new HttpHost(getHost(inetsocketaddress), inetsocketaddress.getPort());
                }
            }
        }
        return null;
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
        InetAddress inetaddress = ConnRouteParams.getLocalAddress(httprequest.getParams());
        HttpHost httphost1 = determineProxy(httphost, httprequest, httpcontext);
        boolean flag = schemeRegistry.getScheme(httphost.getSchemeName()).isLayered();
        if (httphost1 == null)
        {
            return new HttpRoute(httphost, inetaddress, flag);
        } else
        {
            return new HttpRoute(httphost, inetaddress, httphost1, flag);
        }
    }

    protected String getHost(InetSocketAddress inetsocketaddress)
    {
        if (inetsocketaddress.isUnresolved())
        {
            return inetsocketaddress.getHostName();
        } else
        {
            return inetsocketaddress.getAddress().getHostAddress();
        }
    }

    public ProxySelector getProxySelector()
    {
        return proxySelector;
    }

    public void setProxySelector(ProxySelector proxyselector)
    {
        proxySelector = proxyselector;
    }

    private class _cls1
    {

        static final int $SwitchMap$java$net$Proxy$Type[];

        static 
        {
            $SwitchMap$java$net$Proxy$Type = new int[java.net.Proxy.Type.values().length];
            try
            {
                $SwitchMap$java$net$Proxy$Type[java.net.Proxy.Type.DIRECT.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$java$net$Proxy$Type[java.net.Proxy.Type.HTTP.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$java$net$Proxy$Type[java.net.Proxy.Type.SOCKS.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2)
            {
                return;
            }
        }
    }

}
