// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn.tsccm;

import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.conn.ClientConnectionOperator;
import ch.boye.httpclientandroidlib.conn.ConnectionPoolTimeoutException;
import ch.boye.httpclientandroidlib.conn.OperatedClientConnection;
import ch.boye.httpclientandroidlib.conn.params.ConnManagerParams;
import ch.boye.httpclientandroidlib.conn.params.ConnPerRoute;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn.tsccm:
//            AbstractConnPool, BasicPoolEntry, RouteSpecificPool, WaitingThreadAborter, 
//            WaitingThread, PoolEntryRequest

public class ConnPoolByRoute extends AbstractConnPool
{

    protected final ConnPerRoute connPerRoute;
    private final long connTTL;
    private final TimeUnit connTTLTimeUnit;
    protected final Queue freeConnections;
    protected final Set leasedConnections;
    public HttpClientAndroidLog log;
    protected volatile int maxTotalConnections;
    protected volatile int numConnections;
    protected final ClientConnectionOperator operator;
    private final Lock poolLock;
    protected final Map routeToPool;
    protected volatile boolean shutdown;
    protected final Queue waitingThreads;

    public ConnPoolByRoute(ClientConnectionOperator clientconnectionoperator, ConnPerRoute connperroute, int i)
    {
        this(clientconnectionoperator, connperroute, i, -1L, TimeUnit.MILLISECONDS);
    }

    public ConnPoolByRoute(ClientConnectionOperator clientconnectionoperator, ConnPerRoute connperroute, int i, long l, TimeUnit timeunit)
    {
        log = new HttpClientAndroidLog(getClass());
        if (clientconnectionoperator == null)
        {
            throw new IllegalArgumentException("Connection operator may not be null");
        }
        if (connperroute == null)
        {
            throw new IllegalArgumentException("Connections per route may not be null");
        } else
        {
            poolLock = super.poolLock;
            leasedConnections = super.leasedConnections;
            operator = clientconnectionoperator;
            connPerRoute = connperroute;
            maxTotalConnections = i;
            freeConnections = createFreeConnQueue();
            waitingThreads = createWaitingThreadQueue();
            routeToPool = createRouteToPoolMap();
            connTTL = l;
            connTTLTimeUnit = timeunit;
            return;
        }
    }

    public ConnPoolByRoute(ClientConnectionOperator clientconnectionoperator, HttpParams httpparams)
    {
        this(clientconnectionoperator, ConnManagerParams.getMaxConnectionsPerRoute(httpparams), ConnManagerParams.getMaxTotalConnections(httpparams));
    }

    private void closeConnection(BasicPoolEntry basicpoolentry)
    {
        OperatedClientConnection operatedclientconnection;
        operatedclientconnection = basicpoolentry.getConnection();
        if (operatedclientconnection == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        operatedclientconnection.close();
        return;
        IOException ioexception;
        ioexception;
        log.debug("I/O error closing connection", ioexception);
        return;
    }

    public void closeExpiredConnections()
    {
        long l;
        log.debug("Closing expired connections");
        l = System.currentTimeMillis();
        poolLock.lock();
        Iterator iterator = freeConnections.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BasicPoolEntry basicpoolentry = (BasicPoolEntry)iterator.next();
            if (basicpoolentry.isExpired(l))
            {
                if (log.isDebugEnabled())
                {
                    log.debug((new StringBuilder("Closing connection expired @ ")).append(new Date(basicpoolentry.getExpiry())).toString());
                }
                iterator.remove();
                deleteEntry(basicpoolentry);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_136;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
        poolLock.unlock();
        return;
    }

    public void closeIdleConnections(long l, TimeUnit timeunit)
    {
        long l1;
        if (timeunit == null)
        {
            throw new IllegalArgumentException("Time unit must not be null.");
        }
        if (l < 0L)
        {
            l = 0L;
        }
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Closing connections idle longer than ")).append(l).append(" ").append(timeunit).toString());
        }
        l1 = System.currentTimeMillis() - timeunit.toMillis(l);
        poolLock.lock();
        Iterator iterator = freeConnections.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BasicPoolEntry basicpoolentry = (BasicPoolEntry)iterator.next();
            if (basicpoolentry.getUpdated() <= l1)
            {
                if (log.isDebugEnabled())
                {
                    log.debug((new StringBuilder("Closing connection last used @ ")).append(new Date(basicpoolentry.getUpdated())).toString());
                }
                iterator.remove();
                deleteEntry(basicpoolentry);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_202;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
        poolLock.unlock();
        return;
    }

    protected BasicPoolEntry createEntry(RouteSpecificPool routespecificpool, ClientConnectionOperator clientconnectionoperator)
    {
        BasicPoolEntry basicpoolentry;
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Creating new connection [")).append(routespecificpool.getRoute()).append("]").toString());
        }
        basicpoolentry = new BasicPoolEntry(clientconnectionoperator, routespecificpool.getRoute(), connTTL, connTTLTimeUnit);
        poolLock.lock();
        routespecificpool.createdEntry(basicpoolentry);
        numConnections = 1 + numConnections;
        leasedConnections.add(basicpoolentry);
        poolLock.unlock();
        return basicpoolentry;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    protected Queue createFreeConnQueue()
    {
        return new LinkedList();
    }

    protected Map createRouteToPoolMap()
    {
        return new HashMap();
    }

    protected Queue createWaitingThreadQueue()
    {
        return new LinkedList();
    }

    public void deleteClosedConnections()
    {
        poolLock.lock();
        Iterator iterator = freeConnections.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BasicPoolEntry basicpoolentry = (BasicPoolEntry)iterator.next();
            if (!basicpoolentry.getConnection().isOpen())
            {
                iterator.remove();
                deleteEntry(basicpoolentry);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_76;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
        poolLock.unlock();
        return;
    }

    protected void deleteEntry(BasicPoolEntry basicpoolentry)
    {
        HttpRoute httproute;
        httproute = basicpoolentry.getPlannedRoute();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Deleting connection [")).append(httproute).append("][").append(basicpoolentry.getState()).append("]").toString());
        }
        poolLock.lock();
        closeConnection(basicpoolentry);
        RouteSpecificPool routespecificpool = getRoutePool(httproute, true);
        routespecificpool.deleteEntry(basicpoolentry);
        numConnections = -1 + numConnections;
        if (routespecificpool.isUnused())
        {
            routeToPool.remove(httproute);
        }
        poolLock.unlock();
        return;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    protected void deleteLeastUsedEntry()
    {
        poolLock.lock();
        BasicPoolEntry basicpoolentry = (BasicPoolEntry)freeConnections.remove();
        if (basicpoolentry == null) goto _L2; else goto _L1
_L1:
        deleteEntry(basicpoolentry);
_L4:
        poolLock.unlock();
        return;
_L2:
        if (!log.isDebugEnabled()) goto _L4; else goto _L3
_L3:
        log.debug("No free connection to delete");
          goto _L4
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    public void freeEntry(BasicPoolEntry basicpoolentry, boolean flag, long l, TimeUnit timeunit)
    {
        HttpRoute httproute;
        httproute = basicpoolentry.getPlannedRoute();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Releasing connection [")).append(httproute).append("][").append(basicpoolentry.getState()).append("]").toString());
        }
        poolLock.lock();
        if (!shutdown)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        closeConnection(basicpoolentry);
        poolLock.unlock();
        return;
        RouteSpecificPool routespecificpool;
        leasedConnections.remove(basicpoolentry);
        routespecificpool = getRoutePool(httproute, true);
        if (!flag) goto _L2; else goto _L1
_L1:
        if (!log.isDebugEnabled()) goto _L4; else goto _L3
_L3:
        if (l <= 0L) goto _L6; else goto _L5
_L5:
        String s = (new StringBuilder("for ")).append(l).append(" ").append(timeunit).toString();
_L7:
        log.debug((new StringBuilder("Pooling connection [")).append(httproute).append("][").append(basicpoolentry.getState()).append("]; keep alive ").append(s).toString());
_L4:
        routespecificpool.freeEntry(basicpoolentry);
        basicpoolentry.updateExpiry(l, timeunit);
        freeConnections.add(basicpoolentry);
_L8:
        notifyWaitingThread(routespecificpool);
        poolLock.unlock();
        return;
_L6:
        s = "indefinitely";
          goto _L7
_L2:
        routespecificpool.dropEntry();
        numConnections = -1 + numConnections;
          goto _L8
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
          goto _L7
    }

    public int getConnectionsInPool()
    {
        poolLock.lock();
        int i = numConnections;
        poolLock.unlock();
        return i;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    public int getConnectionsInPool(HttpRoute httproute)
    {
        poolLock.lock();
        RouteSpecificPool routespecificpool = getRoutePool(httproute, false);
        int i;
        i = 0;
        if (routespecificpool == null)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        int j = routespecificpool.getEntryCount();
        i = j;
        poolLock.unlock();
        return i;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    protected BasicPoolEntry getEntryBlocking(HttpRoute httproute, Object obj, long l, TimeUnit timeunit, WaitingThreadAborter waitingthreadaborter)
    {
        Date date;
        int i = l != 0L;
        date = null;
        if (i > 0)
        {
            date = new Date(System.currentTimeMillis() + timeunit.toMillis(l));
        }
        poolLock.lock();
        RouteSpecificPool routespecificpool = getRoutePool(httproute, true);
        BasicPoolEntry basicpoolentry;
        WaitingThread waitingthread;
        basicpoolentry = null;
        waitingthread = null;
_L4:
        if (basicpoolentry != null) goto _L2; else goto _L1
_L1:
        if (shutdown)
        {
            throw new IllegalStateException("Connection pool shut down");
        }
        break MISSING_BLOCK_LABEL_92;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("[")).append(httproute).append("] total kept alive: ").append(freeConnections.size()).append(", total issued: ").append(leasedConnections.size()).append(", total allocated: ").append(numConnections).append(" out of ").append(maxTotalConnections).toString());
        }
        basicpoolentry = getFreeEntry(routespecificpool, obj);
        if (basicpoolentry != null) goto _L2; else goto _L3
_L3:
        boolean flag;
        WaitingThread waitingthread1;
        Exception exception1;
        boolean flag1;
        RouteSpecificPool routespecificpool1;
        BasicPoolEntry basicpoolentry1;
        if (routespecificpool.getCapacity() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Available capacity: ")).append(routespecificpool.getCapacity()).append(" out of ").append(routespecificpool.getMaxEntries()).append(" [").append(httproute).append("][").append(obj).append("]").toString());
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_321;
        }
        if (numConnections >= maxTotalConnections)
        {
            break MISSING_BLOCK_LABEL_321;
        }
        basicpoolentry = createEntry(routespecificpool, operator);
          goto _L4
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_373;
        }
        if (freeConnections.isEmpty())
        {
            break MISSING_BLOCK_LABEL_373;
        }
        deleteLeastUsedEntry();
        routespecificpool1 = getRoutePool(httproute, true);
        basicpoolentry1 = createEntry(routespecificpool1, operator);
        routespecificpool = routespecificpool1;
        basicpoolentry = basicpoolentry1;
          goto _L4
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Need to wait for connection [")).append(httproute).append("][").append(obj).append("]").toString());
        }
        if (waitingthread != null)
        {
            break MISSING_BLOCK_LABEL_578;
        }
        waitingthread1 = newWaitingThread(poolLock.newCondition(), routespecificpool);
        waitingthreadaborter.setWaitingThread(waitingthread1);
_L5:
        routespecificpool.queueThread(waitingthread1);
        waitingThreads.add(waitingthread1);
        flag1 = waitingthread1.await(date);
        routespecificpool.removeThread(waitingthread1);
        waitingThreads.remove(waitingthread1);
        if (flag1 || date == null)
        {
            break MISSING_BLOCK_LABEL_555;
        }
        if (date.getTime() <= System.currentTimeMillis())
        {
            throw new ConnectionPoolTimeoutException("Timeout waiting for connection");
        }
        break MISSING_BLOCK_LABEL_555;
        exception1;
        routespecificpool.removeThread(waitingthread1);
        waitingThreads.remove(waitingthread1);
        throw exception1;
        waitingthread = waitingthread1;
          goto _L4
_L2:
        BasicPoolEntry basicpoolentry2 = basicpoolentry;
        poolLock.unlock();
        return basicpoolentry2;
        waitingthread1 = waitingthread;
          goto _L5
    }

    protected BasicPoolEntry getFreeEntry(RouteSpecificPool routespecificpool, Object obj)
    {
        BasicPoolEntry basicpoolentry;
        boolean flag;
        basicpoolentry = null;
        poolLock.lock();
        flag = false;
_L2:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_265;
        }
        basicpoolentry = routespecificpool.allocEntry(obj);
        if (basicpoolentry == null)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Getting free connection [")).append(routespecificpool.getRoute()).append("][").append(obj).append("]").toString());
        }
        freeConnections.remove(basicpoolentry);
        if (basicpoolentry.isExpired(System.currentTimeMillis()))
        {
            if (log.isDebugEnabled())
            {
                log.debug((new StringBuilder("Closing expired free connection [")).append(routespecificpool.getRoute()).append("][").append(obj).append("]").toString());
            }
            closeConnection(basicpoolentry);
            routespecificpool.dropEntry();
            numConnections = -1 + numConnections;
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_190;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
        leasedConnections.add(basicpoolentry);
        flag = true;
        continue; /* Loop/switch isn't completed */
        if (!log.isDebugEnabled())
        {
            break MISSING_BLOCK_LABEL_276;
        }
        log.debug((new StringBuilder("No free connections [")).append(routespecificpool.getRoute()).append("][").append(obj).append("]").toString());
        flag = true;
        continue; /* Loop/switch isn't completed */
        poolLock.unlock();
        return basicpoolentry;
        flag = true;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected Lock getLock()
    {
        return poolLock;
    }

    public int getMaxTotalConnections()
    {
        return maxTotalConnections;
    }

    protected RouteSpecificPool getRoutePool(HttpRoute httproute, boolean flag)
    {
        poolLock.lock();
        RouteSpecificPool routespecificpool = (RouteSpecificPool)routeToPool.get(httproute);
        if (routespecificpool != null || !flag)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        routespecificpool = newRouteSpecificPool(httproute);
        routeToPool.put(httproute, routespecificpool);
        poolLock.unlock();
        return routespecificpool;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    protected void handleLostEntry(HttpRoute httproute)
    {
        poolLock.lock();
        RouteSpecificPool routespecificpool = getRoutePool(httproute, true);
        routespecificpool.dropEntry();
        if (routespecificpool.isUnused())
        {
            routeToPool.remove(httproute);
        }
        numConnections = -1 + numConnections;
        notifyWaitingThread(routespecificpool);
        poolLock.unlock();
        return;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    protected RouteSpecificPool newRouteSpecificPool(HttpRoute httproute)
    {
        return new RouteSpecificPool(httproute, connPerRoute);
    }

    protected WaitingThread newWaitingThread(Condition condition, RouteSpecificPool routespecificpool)
    {
        return new WaitingThread(condition, routespecificpool);
    }

    protected void notifyWaitingThread(RouteSpecificPool routespecificpool)
    {
        poolLock.lock();
        if (routespecificpool == null) goto _L2; else goto _L1
_L1:
        if (!routespecificpool.hasThread()) goto _L2; else goto _L3
_L3:
        WaitingThread waitingthread;
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Notifying thread waiting on pool [")).append(routespecificpool.getRoute()).append("]").toString());
        }
        waitingthread = routespecificpool.nextThread();
_L4:
        if (waitingthread == null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        waitingthread.wakeup();
        poolLock.unlock();
        return;
_L2:
label0:
        {
            if (waitingThreads.isEmpty())
            {
                break label0;
            }
            if (log.isDebugEnabled())
            {
                log.debug("Notifying thread waiting on any pool");
            }
            waitingthread = (WaitingThread)waitingThreads.remove();
        }
          goto _L4
        boolean flag = log.isDebugEnabled();
        waitingthread = null;
        if (!flag) goto _L4; else goto _L5
_L5:
        log.debug("Notifying no-one, there are no waiting threads");
        waitingthread = null;
          goto _L4
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    public PoolEntryRequest requestPoolEntry(HttpRoute httproute, Object obj)
    {
        return new _cls1();
    }

    public void setMaxTotalConnections(int i)
    {
        poolLock.lock();
        maxTotalConnections = i;
        poolLock.unlock();
        return;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
    }

    public void shutdown()
    {
        poolLock.lock();
        boolean flag = shutdown;
        if (flag)
        {
            poolLock.unlock();
            return;
        }
        shutdown = true;
        BasicPoolEntry basicpoolentry1;
        for (Iterator iterator = leasedConnections.iterator(); iterator.hasNext(); closeConnection(basicpoolentry1))
        {
            basicpoolentry1 = (BasicPoolEntry)iterator.next();
            iterator.remove();
        }

        break MISSING_BLOCK_LABEL_90;
        Exception exception;
        exception;
        poolLock.unlock();
        throw exception;
        BasicPoolEntry basicpoolentry;
        for (Iterator iterator1 = freeConnections.iterator(); iterator1.hasNext(); closeConnection(basicpoolentry))
        {
            basicpoolentry = (BasicPoolEntry)iterator1.next();
            iterator1.remove();
            if (log.isDebugEnabled())
            {
                log.debug((new StringBuilder("Closing connection [")).append(basicpoolentry.getPlannedRoute()).append("][").append(basicpoolentry.getState()).append("]").toString());
            }
        }

        WaitingThread waitingthread;
        for (Iterator iterator2 = waitingThreads.iterator(); iterator2.hasNext(); waitingthread.wakeup())
        {
            waitingthread = (WaitingThread)iterator2.next();
            iterator2.remove();
        }

        routeToPool.clear();
        poolLock.unlock();
        return;
    }


    private class _cls1
        implements PoolEntryRequest
    {

        final ConnPoolByRoute this$0;
        final WaitingThreadAborter val$aborter;
        final HttpRoute val$route;
        final Object val$state;

        public void abortRequest()
        {
            poolLock.lock();
            aborter.abort();
            poolLock.unlock();
            return;
            Exception exception;
            exception;
            poolLock.unlock();
            throw exception;
        }

        public BasicPoolEntry getPoolEntry(long l, TimeUnit timeunit)
        {
            return getEntryBlocking(route, state, l, timeunit, aborter);
        }

        _cls1()
        {
            this$0 = ConnPoolByRoute.this;
            aborter = waitingthreadaborter;
            route = httproute;
            state = obj;
            super();
        }
    }

}
