// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.params;

import ch.boye.httpclientandroidlib.params.HttpParams;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.params:
//            ConnManagerPNames, ConnPerRoute

public final class ConnManagerParams
    implements ConnManagerPNames
{

    private static final ConnPerRoute DEFAULT_CONN_PER_ROUTE = new _cls1();
    public static final int DEFAULT_MAX_TOTAL_CONNECTIONS = 20;

    public ConnManagerParams()
    {
    }

    public static ConnPerRoute getMaxConnectionsPerRoute(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters must not be null.");
        }
        ConnPerRoute connperroute = (ConnPerRoute)httpparams.getParameter("http.conn-manager.max-per-route");
        if (connperroute == null)
        {
            connperroute = DEFAULT_CONN_PER_ROUTE;
        }
        return connperroute;
    }

    public static int getMaxTotalConnections(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters must not be null.");
        } else
        {
            return httpparams.getIntParameter("http.conn-manager.max-total", 20);
        }
    }

    public static long getTimeout(HttpParams httpparams)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        Long long1 = (Long)httpparams.getParameter("http.conn-manager.timeout");
        if (long1 != null)
        {
            return long1.longValue();
        } else
        {
            return (long)httpparams.getIntParameter("http.connection.timeout", 0);
        }
    }

    public static void setMaxConnectionsPerRoute(HttpParams httpparams, ConnPerRoute connperroute)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters must not be null.");
        } else
        {
            httpparams.setParameter("http.conn-manager.max-per-route", connperroute);
            return;
        }
    }

    public static void setMaxTotalConnections(HttpParams httpparams, int i)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters must not be null.");
        } else
        {
            httpparams.setIntParameter("http.conn-manager.max-total", i);
            return;
        }
    }

    public static void setTimeout(HttpParams httpparams, long l)
    {
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else
        {
            httpparams.setLongParameter("http.conn-manager.timeout", l);
            return;
        }
    }


    private class _cls1
        implements ConnPerRoute
    {

        public final int getMaxForRoute(HttpRoute httproute)
        {
            return 2;
        }

        _cls1()
        {
        }
    }

}
