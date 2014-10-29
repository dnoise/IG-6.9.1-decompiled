// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.params;

import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.params:
//            ConnPerRoute

public final class ConnPerRouteBean
    implements ConnPerRoute
{

    public static final int DEFAULT_MAX_CONNECTIONS_PER_ROUTE = 2;
    private volatile int defaultMax;
    private final ConcurrentHashMap maxPerHostMap;

    public ConnPerRouteBean()
    {
        this(2);
    }

    public ConnPerRouteBean(int i)
    {
        maxPerHostMap = new ConcurrentHashMap();
        setDefaultMaxPerRoute(i);
    }

    public final int getDefaultMax()
    {
        return defaultMax;
    }

    public final int getDefaultMaxPerRoute()
    {
        return defaultMax;
    }

    public final int getMaxForRoute(HttpRoute httproute)
    {
        if (httproute == null)
        {
            throw new IllegalArgumentException("HTTP route may not be null.");
        }
        Integer integer = (Integer)maxPerHostMap.get(httproute);
        if (integer != null)
        {
            return integer.intValue();
        } else
        {
            return defaultMax;
        }
    }

    public final void setDefaultMaxPerRoute(int i)
    {
        if (i <= 0)
        {
            throw new IllegalArgumentException("The maximum must be greater than 0.");
        } else
        {
            defaultMax = i;
            return;
        }
    }

    public final void setMaxForRoute(HttpRoute httproute, int i)
    {
        if (httproute == null)
        {
            throw new IllegalArgumentException("HTTP route may not be null.");
        }
        if (i <= 0)
        {
            throw new IllegalArgumentException("The maximum must be greater than 0.");
        } else
        {
            maxPerHostMap.put(httproute, Integer.valueOf(i));
            return;
        }
    }

    public final void setMaxForRoutes(Map map)
    {
        if (map == null)
        {
            return;
        } else
        {
            maxPerHostMap.clear();
            maxPerHostMap.putAll(map);
            return;
        }
    }

    public final String toString()
    {
        return maxPerHostMap.toString();
    }
}
