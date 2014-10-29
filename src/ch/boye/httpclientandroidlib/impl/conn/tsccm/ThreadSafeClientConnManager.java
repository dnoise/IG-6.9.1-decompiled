// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn.tsccm;

import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.conn.ClientConnectionOperator;
import ch.boye.httpclientandroidlib.conn.ClientConnectionRequest;
import ch.boye.httpclientandroidlib.conn.ManagedClientConnection;
import ch.boye.httpclientandroidlib.conn.params.ConnPerRouteBean;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.conn.scheme.SchemeRegistry;
import ch.boye.httpclientandroidlib.impl.conn.DefaultClientConnectionOperator;
import ch.boye.httpclientandroidlib.impl.conn.SchemeRegistryFactory;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn.tsccm:
//            ConnPoolByRoute, BasicPooledConnAdapter, BasicPoolEntry, AbstractConnPool

public class ThreadSafeClientConnManager
    implements ClientConnectionManager
{

    protected final ClientConnectionOperator connOperator;
    protected final ConnPerRouteBean connPerRoute;
    protected final AbstractConnPool connectionPool;
    public HttpClientAndroidLog log;
    protected final ConnPoolByRoute pool;
    protected final SchemeRegistry schemeRegistry;

    public ThreadSafeClientConnManager()
    {
        this(SchemeRegistryFactory.createDefault());
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeregistry)
    {
        this(schemeregistry, -1L, TimeUnit.MILLISECONDS);
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeregistry, long l, TimeUnit timeunit)
    {
        if (schemeregistry == null)
        {
            throw new IllegalArgumentException("Scheme registry may not be null");
        } else
        {
            log = new HttpClientAndroidLog(getClass());
            schemeRegistry = schemeregistry;
            connPerRoute = new ConnPerRouteBean();
            connOperator = createConnectionOperator(schemeregistry);
            pool = createConnectionPool(l, timeunit);
            connectionPool = pool;
            return;
        }
    }

    public ThreadSafeClientConnManager(HttpParams httpparams, SchemeRegistry schemeregistry)
    {
        if (schemeregistry == null)
        {
            throw new IllegalArgumentException("Scheme registry may not be null");
        } else
        {
            log = new HttpClientAndroidLog(getClass());
            schemeRegistry = schemeregistry;
            connPerRoute = new ConnPerRouteBean();
            connOperator = createConnectionOperator(schemeregistry);
            pool = (ConnPoolByRoute)createConnectionPool(httpparams);
            connectionPool = pool;
            return;
        }
    }

    public void closeExpiredConnections()
    {
        log.debug("Closing expired connections");
        pool.closeExpiredConnections();
    }

    public void closeIdleConnections(long l, TimeUnit timeunit)
    {
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Closing connections idle longer than ")).append(l).append(" ").append(timeunit).toString());
        }
        pool.closeIdleConnections(l, timeunit);
    }

    protected ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeregistry)
    {
        return new DefaultClientConnectionOperator(schemeregistry);
    }

    protected AbstractConnPool createConnectionPool(HttpParams httpparams)
    {
        return new ConnPoolByRoute(connOperator, httpparams);
    }

    protected ConnPoolByRoute createConnectionPool(long l, TimeUnit timeunit)
    {
        return new ConnPoolByRoute(connOperator, connPerRoute, 20, l, timeunit);
    }

    protected void finalize()
    {
        shutdown();
        super.finalize();
        return;
        Exception exception;
        exception;
        super.finalize();
        throw exception;
    }

    public int getConnectionsInPool()
    {
        return pool.getConnectionsInPool();
    }

    public int getConnectionsInPool(HttpRoute httproute)
    {
        return pool.getConnectionsInPool(httproute);
    }

    public int getDefaultMaxPerRoute()
    {
        return connPerRoute.getDefaultMaxPerRoute();
    }

    public int getMaxForRoute(HttpRoute httproute)
    {
        return connPerRoute.getMaxForRoute(httproute);
    }

    public int getMaxTotal()
    {
        return pool.getMaxTotalConnections();
    }

    public SchemeRegistry getSchemeRegistry()
    {
        return schemeRegistry;
    }

    public void releaseConnection(ManagedClientConnection managedclientconnection, long l, TimeUnit timeunit)
    {
        BasicPooledConnAdapter basicpooledconnadapter;
        if (!(managedclientconnection instanceof BasicPooledConnAdapter))
        {
            throw new IllegalArgumentException("Connection class mismatch, connection not obtained from this manager.");
        }
        basicpooledconnadapter = (BasicPooledConnAdapter)managedclientconnection;
        if (basicpooledconnadapter.getPoolEntry() != null && basicpooledconnadapter.getManager() != this)
        {
            throw new IllegalArgumentException("Connection not obtained from this manager.");
        }
        basicpooledconnadapter;
        JVM INSTR monitorenter ;
        BasicPoolEntry basicpoolentry = (BasicPoolEntry)basicpooledconnadapter.getPoolEntry();
        if (basicpoolentry != null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        basicpooledconnadapter;
        JVM INSTR monitorexit ;
        return;
        if (basicpooledconnadapter.isOpen() && !basicpooledconnadapter.isMarkedReusable())
        {
            basicpooledconnadapter.shutdown();
        }
        boolean flag2 = basicpooledconnadapter.isMarkedReusable();
        if (!log.isDebugEnabled()) goto _L2; else goto _L1
_L1:
        if (!flag2) goto _L4; else goto _L3
_L3:
        log.debug("Released connection is reusable.");
_L2:
        basicpooledconnadapter.detach();
        pool.freeEntry(basicpoolentry, flag2, l, timeunit);
_L5:
        basicpooledconnadapter;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        basicpooledconnadapter;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        log.debug("Released connection is not reusable.");
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        if (log.isDebugEnabled())
        {
            log.debug("Exception shutting down released connection.", ioexception);
        }
        boolean flag1;
        flag1 = basicpooledconnadapter.isMarkedReusable();
        if (!log.isDebugEnabled())
        {
            break MISSING_BLOCK_LABEL_221;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_243;
        }
        log.debug("Released connection is reusable.");
_L6:
        basicpooledconnadapter.detach();
        pool.freeEntry(basicpoolentry, flag1, l, timeunit);
          goto _L5
        log.debug("Released connection is not reusable.");
          goto _L6
        Exception exception1;
        exception1;
        boolean flag = basicpooledconnadapter.isMarkedReusable();
        if (!log.isDebugEnabled()) goto _L8; else goto _L7
_L7:
        if (!flag) goto _L10; else goto _L9
_L9:
        log.debug("Released connection is reusable.");
_L8:
        basicpooledconnadapter.detach();
        pool.freeEntry(basicpoolentry, flag, l, timeunit);
        throw exception1;
_L10:
        log.debug("Released connection is not reusable.");
        if (true) goto _L8; else goto _L11
_L11:
        if (true) goto _L2; else goto _L12
_L12:
    }

    public ClientConnectionRequest requestConnection(HttpRoute httproute, Object obj)
    {
        return new _cls1();
    }

    public void setDefaultMaxPerRoute(int i)
    {
        connPerRoute.setDefaultMaxPerRoute(i);
    }

    public void setMaxForRoute(HttpRoute httproute, int i)
    {
        connPerRoute.setMaxForRoute(httproute, i);
    }

    public void setMaxTotal(int i)
    {
        pool.setMaxTotalConnections(i);
    }

    public void shutdown()
    {
        log.debug("Shutting down");
        pool.shutdown();
    }

    private class _cls1
        implements ClientConnectionRequest
    {

        final ThreadSafeClientConnManager this$0;
        final PoolEntryRequest val$poolRequest;
        final HttpRoute val$route;

        public void abortRequest()
        {
            poolRequest.abortRequest();
        }

        public ManagedClientConnection getConnection(long l, TimeUnit timeunit)
        {
            if (route == null)
            {
                throw new IllegalArgumentException("Route may not be null.");
            }
            if (log.isDebugEnabled())
            {
                log.debug((new StringBuilder("Get connection: ")).append(route).append(", timeout = ").append(l).toString());
            }
            BasicPoolEntry basicpoolentry = poolRequest.getPoolEntry(l, timeunit);
            return new BasicPooledConnAdapter(ThreadSafeClientConnManager.this, basicpoolentry);
        }

        _cls1()
        {
            this$0 = ThreadSafeClientConnManager.this;
            poolRequest = poolentryrequest;
            route = httproute;
            super();
        }
    }

}
