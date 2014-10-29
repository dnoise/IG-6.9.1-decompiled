// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.routing;

import ch.boye.httpclientandroidlib.HttpHost;
import java.net.InetAddress;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.routing:
//            HttpRouteDirector, RouteInfo

public class BasicRouteDirector
    implements HttpRouteDirector
{

    public BasicRouteDirector()
    {
    }

    protected int directStep(RouteInfo routeinfo, RouteInfo routeinfo1)
    {
        while (routeinfo1.getHopCount() > 1 || !routeinfo.getTargetHost().equals(routeinfo1.getTargetHost()) || routeinfo.isSecure() != routeinfo1.isSecure() || routeinfo.getLocalAddress() != null && !routeinfo.getLocalAddress().equals(routeinfo1.getLocalAddress())) 
        {
            return -1;
        }
        return 0;
    }

    protected int firstStep(RouteInfo routeinfo)
    {
        int i = 1;
        if (routeinfo.getHopCount() > i)
        {
            i = 2;
        }
        return i;
    }

    public int nextStep(RouteInfo routeinfo, RouteInfo routeinfo1)
    {
        if (routeinfo == null)
        {
            throw new IllegalArgumentException("Planned route may not be null.");
        }
        if (routeinfo1 == null || routeinfo1.getHopCount() <= 0)
        {
            return firstStep(routeinfo);
        }
        if (routeinfo.getHopCount() > 1)
        {
            return proxiedStep(routeinfo, routeinfo1);
        } else
        {
            return directStep(routeinfo, routeinfo1);
        }
    }

    protected int proxiedStep(RouteInfo routeinfo, RouteInfo routeinfo1)
    {
_L2:
        return -1;
        if (routeinfo1.getHopCount() <= 1 || !routeinfo.getTargetHost().equals(routeinfo1.getTargetHost())) goto _L2; else goto _L1
_L1:
        int i = routeinfo.getHopCount();
        int j = routeinfo1.getHopCount();
        if (i < j)
        {
            continue; /* Loop/switch isn't completed */
        }
        for (int k = 0; k < j - 1; k++)
        {
            if (!routeinfo.getHopTarget(k).equals(routeinfo1.getHopTarget(k)))
            {
                continue; /* Loop/switch isn't completed */
            }
        }

        if (i > j)
        {
            return 4;
        }
        if ((!routeinfo1.isTunnelled() || routeinfo.isTunnelled()) && (!routeinfo1.isLayered() || routeinfo.isLayered()))
        {
            if (routeinfo.isTunnelled() && !routeinfo1.isTunnelled())
            {
                return 3;
            }
            if (routeinfo.isLayered() && !routeinfo1.isLayered())
            {
                return 5;
            }
            if (routeinfo.isSecure() == routeinfo1.isSecure())
            {
                return 0;
            }
        }
        if (true) goto _L2; else goto _L3
_L3:
    }
}
