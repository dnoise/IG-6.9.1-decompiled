// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn.tsccm;

import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.conn.OperatedClientConnection;
import ch.boye.httpclientandroidlib.conn.params.ConnPerRoute;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.util.LangUtils;
import java.io.IOException;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Queue;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn.tsccm:
//            BasicPoolEntry, WaitingThread

public class RouteSpecificPool
{

    protected final ConnPerRoute connPerRoute;
    protected final LinkedList freeEntries;
    public HttpClientAndroidLog log;
    protected final int maxEntries;
    protected int numEntries;
    protected final HttpRoute route;
    protected final Queue waitingThreads;

    public RouteSpecificPool(HttpRoute httproute, int i)
    {
        log = new HttpClientAndroidLog(getClass());
        route = httproute;
        maxEntries = i;
        connPerRoute = new _cls1();
        freeEntries = new LinkedList();
        waitingThreads = new LinkedList();
        numEntries = 0;
    }

    public RouteSpecificPool(HttpRoute httproute, ConnPerRoute connperroute)
    {
        log = new HttpClientAndroidLog(getClass());
        route = httproute;
        connPerRoute = connperroute;
        maxEntries = connperroute.getMaxForRoute(httproute);
        freeEntries = new LinkedList();
        waitingThreads = new LinkedList();
        numEntries = 0;
    }

    public BasicPoolEntry allocEntry(Object obj)
    {
label0:
        {
            if (freeEntries.isEmpty())
            {
                break label0;
            }
            ListIterator listiterator = freeEntries.listIterator(freeEntries.size());
            BasicPoolEntry basicpoolentry1;
            do
            {
                if (!listiterator.hasPrevious())
                {
                    break label0;
                }
                basicpoolentry1 = (BasicPoolEntry)listiterator.previous();
            } while (basicpoolentry1.getState() != null && !LangUtils.equals(obj, basicpoolentry1.getState()));
            listiterator.remove();
            return basicpoolentry1;
        }
        if (getCapacity() == 0 && !freeEntries.isEmpty())
        {
            BasicPoolEntry basicpoolentry = (BasicPoolEntry)freeEntries.remove();
            basicpoolentry.shutdownEntry();
            OperatedClientConnection operatedclientconnection = basicpoolentry.getConnection();
            try
            {
                operatedclientconnection.close();
            }
            catch (IOException ioexception)
            {
                log.debug("I/O error closing connection", ioexception);
                return basicpoolentry;
            }
            return basicpoolentry;
        } else
        {
            return null;
        }
    }

    public void createdEntry(BasicPoolEntry basicpoolentry)
    {
        if (!route.equals(basicpoolentry.getPlannedRoute()))
        {
            throw new IllegalArgumentException((new StringBuilder("Entry not planned for this pool.\npool: ")).append(route).append("\nplan: ").append(basicpoolentry.getPlannedRoute()).toString());
        } else
        {
            numEntries = 1 + numEntries;
            return;
        }
    }

    public boolean deleteEntry(BasicPoolEntry basicpoolentry)
    {
        boolean flag = freeEntries.remove(basicpoolentry);
        if (flag)
        {
            numEntries = -1 + numEntries;
        }
        return flag;
    }

    public void dropEntry()
    {
        if (numEntries <= 0)
        {
            throw new IllegalStateException("There is no entry that could be dropped.");
        } else
        {
            numEntries = -1 + numEntries;
            return;
        }
    }

    public void freeEntry(BasicPoolEntry basicpoolentry)
    {
        if (numEntries <= 0)
        {
            throw new IllegalStateException((new StringBuilder("No entry created for this pool. ")).append(route).toString());
        }
        if (numEntries <= freeEntries.size())
        {
            throw new IllegalStateException((new StringBuilder("No entry allocated from this pool. ")).append(route).toString());
        } else
        {
            freeEntries.add(basicpoolentry);
            return;
        }
    }

    public int getCapacity()
    {
        return connPerRoute.getMaxForRoute(route) - numEntries;
    }

    public final int getEntryCount()
    {
        return numEntries;
    }

    public final int getMaxEntries()
    {
        return maxEntries;
    }

    public final HttpRoute getRoute()
    {
        return route;
    }

    public boolean hasThread()
    {
        return !waitingThreads.isEmpty();
    }

    public boolean isUnused()
    {
        return numEntries <= 0 && waitingThreads.isEmpty();
    }

    public WaitingThread nextThread()
    {
        return (WaitingThread)waitingThreads.peek();
    }

    public void queueThread(WaitingThread waitingthread)
    {
        if (waitingthread == null)
        {
            throw new IllegalArgumentException("Waiting thread must not be null.");
        } else
        {
            waitingThreads.add(waitingthread);
            return;
        }
    }

    public void removeThread(WaitingThread waitingthread)
    {
        if (waitingthread == null)
        {
            return;
        } else
        {
            waitingThreads.remove(waitingthread);
            return;
        }
    }

    private class _cls1
        implements ConnPerRoute
    {

        final RouteSpecificPool this$0;

        public int getMaxForRoute(HttpRoute httproute)
        {
            return maxEntries;
        }

        _cls1()
        {
            this$0 = RouteSpecificPool.this;
            super();
        }
    }

}
