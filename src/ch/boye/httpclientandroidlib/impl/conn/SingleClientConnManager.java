// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn;

import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.conn.ClientConnectionOperator;
import ch.boye.httpclientandroidlib.conn.ClientConnectionRequest;
import ch.boye.httpclientandroidlib.conn.ManagedClientConnection;
import ch.boye.httpclientandroidlib.conn.OperatedClientConnection;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.conn.routing.RouteTracker;
import ch.boye.httpclientandroidlib.conn.scheme.SchemeRegistry;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn:
//            SchemeRegistryFactory, DefaultClientConnectionOperator

public class SingleClientConnManager
    implements ClientConnectionManager
{

    public static final String MISUSE_MESSAGE = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";
    protected final boolean alwaysShutDown;
    protected final ClientConnectionOperator connOperator;
    protected long connectionExpiresTime;
    protected volatile boolean isShutDown;
    protected long lastReleaseTime;
    public HttpClientAndroidLog log;
    protected ConnAdapter managedConn;
    protected final SchemeRegistry schemeRegistry;
    protected PoolEntry uniquePoolEntry;

    public SingleClientConnManager()
    {
        this(SchemeRegistryFactory.createDefault());
    }

    public SingleClientConnManager(SchemeRegistry schemeregistry)
    {
        log = new HttpClientAndroidLog(getClass());
        if (schemeregistry == null)
        {
            throw new IllegalArgumentException("Scheme registry must not be null.");
        } else
        {
            schemeRegistry = schemeregistry;
            connOperator = createConnectionOperator(schemeregistry);
            uniquePoolEntry = new PoolEntry();
            managedConn = null;
            lastReleaseTime = -1L;
            alwaysShutDown = false;
            isShutDown = false;
            return;
        }
    }

    public SingleClientConnManager(HttpParams httpparams, SchemeRegistry schemeregistry)
    {
        this(schemeregistry);
    }

    protected final void assertStillUp()
    {
        if (isShutDown)
        {
            throw new IllegalStateException("Manager is shut down.");
        } else
        {
            return;
        }
    }

    public void closeExpiredConnections()
    {
        this;
        JVM INSTR monitorenter ;
        if (System.currentTimeMillis() >= connectionExpiresTime)
        {
            closeIdleConnections(0L, TimeUnit.MILLISECONDS);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void closeIdleConnections(long l, TimeUnit timeunit)
    {
        this;
        JVM INSTR monitorenter ;
        assertStillUp();
        if (timeunit != null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        throw new IllegalArgumentException("Time unit must not be null.");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        long l1;
        long l2;
        if (managedConn != null || !uniquePoolEntry.connection.isOpen())
        {
            break MISSING_BLOCK_LABEL_81;
        }
        l1 = System.currentTimeMillis() - timeunit.toMillis(l);
        l2 = lastReleaseTime;
        if (l2 > l1)
        {
            break MISSING_BLOCK_LABEL_81;
        }
        uniquePoolEntry.close();
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        log.debug("Problem closing idle connection.", ioexception);
          goto _L1
    }

    protected ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeregistry)
    {
        return new DefaultClientConnectionOperator(schemeregistry);
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

    public ManagedClientConnection getConnection(HttpRoute httproute, Object obj)
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        if (httproute != null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        throw new IllegalArgumentException("Route may not be null.");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        assertStillUp();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Get connection for route ")).append(httproute).toString());
        }
        if (managedConn != null)
        {
            throw new IllegalStateException("Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.");
        }
        closeExpiredConnections();
        if (!uniquePoolEntry.connection.isOpen()) goto _L2; else goto _L1
_L1:
        RouteTracker routetracker = uniquePoolEntry.tracker;
        if (routetracker == null) goto _L4; else goto _L3
_L3:
        boolean flag3 = routetracker.toRoute().equals(httproute);
        if (flag3) goto _L5; else goto _L4
_L4:
        boolean flag4 = flag;
_L6:
        boolean flag1;
        boolean flag2;
        boolean flag5 = flag4;
        flag1 = false;
        flag2 = flag5;
_L7:
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        uniquePoolEntry.shutdown();
_L8:
        ConnAdapter connadapter;
        IOException ioexception;
        for (; !flag; flag = flag1)
        {
            break MISSING_BLOCK_LABEL_170;
        }

        uniquePoolEntry = new PoolEntry();
        managedConn = new ConnAdapter(uniquePoolEntry, httproute);
        connadapter = managedConn;
        this;
        JVM INSTR monitorexit ;
        return connadapter;
_L5:
        flag4 = false;
          goto _L6
_L2:
        flag1 = flag;
        flag2 = false;
          goto _L7
        ioexception;
        log.debug("Problem shutting down connection.", ioexception);
          goto _L8
    }

    public SchemeRegistry getSchemeRegistry()
    {
        return schemeRegistry;
    }

    public void releaseConnection(ManagedClientConnection managedclientconnection, long l, TimeUnit timeunit)
    {
        this;
        JVM INSTR monitorenter ;
        assertStillUp();
        if (!(managedclientconnection instanceof ConnAdapter))
        {
            throw new IllegalArgumentException("Connection class mismatch, connection not obtained from this manager.");
        }
        break MISSING_BLOCK_LABEL_30;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ConnAdapter connadapter;
        AbstractPoolEntry abstractpoolentry;
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Releasing connection ")).append(managedclientconnection).toString());
        }
        connadapter = (ConnAdapter)managedclientconnection;
        abstractpoolentry = connadapter.poolEntry;
        if (abstractpoolentry != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        ClientConnectionManager clientconnectionmanager = connadapter.getManager();
        if (clientconnectionmanager == null || clientconnectionmanager == this)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        throw new IllegalArgumentException("Connection not obtained from this manager.");
        if (connadapter.isOpen() && (alwaysShutDown || !connadapter.isMarkedReusable()))
        {
            if (log.isDebugEnabled())
            {
                log.debug("Released connection open but not reusable.");
            }
            connadapter.shutdown();
        }
        connadapter.detach();
        managedConn = null;
        lastReleaseTime = System.currentTimeMillis();
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_200;
        }
        connectionExpiresTime = timeunit.toMillis(l) + lastReleaseTime;
        continue; /* Loop/switch isn't completed */
        connectionExpiresTime = 0x7fffffffffffffffL;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        if (log.isDebugEnabled())
        {
            log.debug("Exception shutting down released connection.", ioexception);
        }
        connadapter.detach();
        managedConn = null;
        lastReleaseTime = System.currentTimeMillis();
        if (l <= 0L)
        {
            break MISSING_BLOCK_LABEL_274;
        }
        connectionExpiresTime = timeunit.toMillis(l) + lastReleaseTime;
        continue; /* Loop/switch isn't completed */
        connectionExpiresTime = 0x7fffffffffffffffL;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception1;
        exception1;
        connadapter.detach();
        managedConn = null;
        lastReleaseTime = System.currentTimeMillis();
        if (l <= 0L) goto _L5; else goto _L4
_L4:
        connectionExpiresTime = timeunit.toMillis(l) + lastReleaseTime;
_L7:
        throw exception1;
_L5:
        connectionExpiresTime = 0x7fffffffffffffffL;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final ClientConnectionRequest requestConnection(final HttpRoute route, final Object state)
    {
        return new _cls1();
    }

    protected void revokeConnection()
    {
        this;
        JVM INSTR monitorenter ;
        ConnAdapter connadapter = managedConn;
        if (connadapter != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        managedConn.detach();
        uniquePoolEntry.shutdown();
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        log.debug("Problem while shutting down connection.", ioexception);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void shutdown()
    {
        this;
        JVM INSTR monitorenter ;
        isShutDown = true;
        if (managedConn != null)
        {
            managedConn.detach();
        }
        if (uniquePoolEntry != null)
        {
            uniquePoolEntry.shutdown();
        }
        uniquePoolEntry = null;
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        log.debug("Problem while shutting down manager.", ioexception);
        uniquePoolEntry = null;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        uniquePoolEntry = null;
        throw exception1;
    }

    private class PoolEntry extends AbstractPoolEntry
    {

        final SingleClientConnManager this$0;

        protected void close()
        {
            shutdownEntry();
            if (connection.isOpen())
            {
                connection.close();
            }
        }

        protected void shutdown()
        {
            shutdownEntry();
            if (connection.isOpen())
            {
                connection.shutdown();
            }
        }

        protected PoolEntry()
        {
            this$0 = SingleClientConnManager.this;
            super(connOperator, null);
        }
    }


    private class ConnAdapter extends AbstractPooledConnAdapter
    {

        final SingleClientConnManager this$0;

        protected ConnAdapter(PoolEntry poolentry, HttpRoute httproute)
        {
            this$0 = SingleClientConnManager.this;
            super(SingleClientConnManager.this, poolentry);
            markReusable();
            poolentry.route = httproute;
        }
    }


    private class _cls1
        implements ClientConnectionRequest
    {

        final SingleClientConnManager this$0;
        final HttpRoute val$route;
        final Object val$state;

        public void abortRequest()
        {
        }

        public ManagedClientConnection getConnection(long l, TimeUnit timeunit)
        {
            return SingleClientConnManager.this.getConnection(route, state);
        }

        _cls1()
        {
            this$0 = SingleClientConnManager.this;
            route = httproute;
            state = obj;
            super();
        }
    }

}
