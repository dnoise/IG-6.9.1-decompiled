// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.routing;

import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.util.LangUtils;
import java.net.InetAddress;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.routing:
//            RouteInfo

public final class HttpRoute
    implements RouteInfo, Cloneable
{

    private static final HttpHost EMPTY_HTTP_HOST_ARRAY[] = new HttpHost[0];
    private final RouteInfo.LayerType layered;
    private final InetAddress localAddress;
    private final HttpHost proxyChain[];
    private final boolean secure;
    private final HttpHost targetHost;
    private final RouteInfo.TunnelType tunnelled;

    public HttpRoute(HttpHost httphost)
    {
        this(((InetAddress) (null)), httphost, EMPTY_HTTP_HOST_ARRAY, false, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
    }

    public HttpRoute(HttpHost httphost, InetAddress inetaddress, HttpHost httphost1, boolean flag)
    {
        HttpHost ahttphost[] = toChain(httphost1);
        RouteInfo.TunnelType tunneltype;
        RouteInfo.LayerType layertype;
        if (flag)
        {
            tunneltype = RouteInfo.TunnelType.TUNNELLED;
        } else
        {
            tunneltype = RouteInfo.TunnelType.PLAIN;
        }
        if (flag)
        {
            layertype = RouteInfo.LayerType.LAYERED;
        } else
        {
            layertype = RouteInfo.LayerType.PLAIN;
        }
        this(inetaddress, httphost, ahttphost, flag, tunneltype, layertype);
        if (httphost1 == null)
        {
            throw new IllegalArgumentException("Proxy host may not be null.");
        } else
        {
            return;
        }
    }

    public HttpRoute(HttpHost httphost, InetAddress inetaddress, HttpHost httphost1, boolean flag, RouteInfo.TunnelType tunneltype, RouteInfo.LayerType layertype)
    {
        this(inetaddress, httphost, toChain(httphost1), flag, tunneltype, layertype);
    }

    public HttpRoute(HttpHost httphost, InetAddress inetaddress, boolean flag)
    {
        this(inetaddress, httphost, EMPTY_HTTP_HOST_ARRAY, flag, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
    }

    public HttpRoute(HttpHost httphost, InetAddress inetaddress, HttpHost ahttphost[], boolean flag, RouteInfo.TunnelType tunneltype, RouteInfo.LayerType layertype)
    {
        this(inetaddress, httphost, toChain(ahttphost), flag, tunneltype, layertype);
    }

    private HttpRoute(InetAddress inetaddress, HttpHost httphost, HttpHost ahttphost[], boolean flag, RouteInfo.TunnelType tunneltype, RouteInfo.LayerType layertype)
    {
        if (httphost == null)
        {
            throw new IllegalArgumentException("Target host may not be null.");
        }
        if (ahttphost == null)
        {
            throw new IllegalArgumentException("Proxies may not be null.");
        }
        if (tunneltype == RouteInfo.TunnelType.TUNNELLED && ahttphost.length == 0)
        {
            throw new IllegalArgumentException("Proxy required if tunnelled.");
        }
        if (tunneltype == null)
        {
            tunneltype = RouteInfo.TunnelType.PLAIN;
        }
        if (layertype == null)
        {
            layertype = RouteInfo.LayerType.PLAIN;
        }
        targetHost = httphost;
        localAddress = inetaddress;
        proxyChain = ahttphost;
        secure = flag;
        tunnelled = tunneltype;
        layered = layertype;
    }

    private static HttpHost[] toChain(HttpHost httphost)
    {
        if (httphost == null)
        {
            return EMPTY_HTTP_HOST_ARRAY;
        } else
        {
            return (new HttpHost[] {
                httphost
            });
        }
    }

    private static HttpHost[] toChain(HttpHost ahttphost[])
    {
        if (ahttphost == null || ahttphost.length <= 0)
        {
            return EMPTY_HTTP_HOST_ARRAY;
        }
        int i = ahttphost.length;
        for (int j = 0; j < i; j++)
        {
            if (ahttphost[j] == null)
            {
                throw new IllegalArgumentException("Proxy chain may not contain null elements.");
            }
        }

        HttpHost ahttphost1[] = new HttpHost[ahttphost.length];
        System.arraycopy(ahttphost, 0, ahttphost1, 0, ahttphost.length);
        return ahttphost1;
    }

    public final Object clone()
    {
        return super.clone();
    }

    public final boolean equals(Object obj)
    {
        HttpRoute httproute;
        if (this != obj)
        {
            if (obj instanceof HttpRoute)
            {
                if (secure != (httproute = (HttpRoute)obj).secure || tunnelled != httproute.tunnelled || layered != httproute.layered || !LangUtils.equals(targetHost, httproute.targetHost) || !LangUtils.equals(localAddress, httproute.localAddress) || !LangUtils.equals(proxyChain, httproute.proxyChain))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public final int getHopCount()
    {
        return 1 + proxyChain.length;
    }

    public final HttpHost getHopTarget(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Hop index must not be negative: ")).append(i).toString());
        }
        int j = getHopCount();
        if (i >= j)
        {
            throw new IllegalArgumentException((new StringBuilder("Hop index ")).append(i).append(" exceeds route length ").append(j).toString());
        }
        if (i < j - 1)
        {
            return proxyChain[i];
        } else
        {
            return targetHost;
        }
    }

    public final RouteInfo.LayerType getLayerType()
    {
        return layered;
    }

    public final InetAddress getLocalAddress()
    {
        return localAddress;
    }

    public final HttpHost getProxyHost()
    {
        if (proxyChain.length == 0)
        {
            return null;
        } else
        {
            return proxyChain[0];
        }
    }

    public final HttpHost getTargetHost()
    {
        return targetHost;
    }

    public final RouteInfo.TunnelType getTunnelType()
    {
        return tunnelled;
    }

    public final int hashCode()
    {
        int i = LangUtils.hashCode(LangUtils.hashCode(17, targetHost), localAddress);
        for (int j = 0; j < proxyChain.length; j++)
        {
            i = LangUtils.hashCode(i, proxyChain[j]);
        }

        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(i, secure), tunnelled), layered);
    }

    public final boolean isLayered()
    {
        return layered == RouteInfo.LayerType.LAYERED;
    }

    public final boolean isSecure()
    {
        return secure;
    }

    public final boolean isTunnelled()
    {
        return tunnelled == RouteInfo.TunnelType.TUNNELLED;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(50 + 30 * getHopCount());
        stringbuilder.append("HttpRoute[");
        if (localAddress != null)
        {
            stringbuilder.append(localAddress);
            stringbuilder.append("->");
        }
        stringbuilder.append('{');
        if (tunnelled == RouteInfo.TunnelType.TUNNELLED)
        {
            stringbuilder.append('t');
        }
        if (layered == RouteInfo.LayerType.LAYERED)
        {
            stringbuilder.append('l');
        }
        if (secure)
        {
            stringbuilder.append('s');
        }
        stringbuilder.append("}->");
        HttpHost ahttphost[] = proxyChain;
        int i = ahttphost.length;
        for (int j = 0; j < i; j++)
        {
            stringbuilder.append(ahttphost[j]);
            stringbuilder.append("->");
        }

        stringbuilder.append(targetHost);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

}
