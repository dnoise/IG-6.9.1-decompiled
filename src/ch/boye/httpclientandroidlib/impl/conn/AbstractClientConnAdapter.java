// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn;

import ch.boye.httpclientandroidlib.HttpConnectionMetrics;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.conn.ManagedClientConnection;
import ch.boye.httpclientandroidlib.conn.OperatedClientConnection;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn:
//            ConnectionShutdownException

public abstract class AbstractClientConnAdapter
    implements ManagedClientConnection, HttpContext
{

    private volatile ClientConnectionManager connManager;
    private volatile long duration;
    private volatile boolean markedReusable;
    private volatile boolean released;
    private volatile OperatedClientConnection wrappedConnection;

    protected AbstractClientConnAdapter(ClientConnectionManager clientconnectionmanager, OperatedClientConnection operatedclientconnection)
    {
        connManager = clientconnectionmanager;
        wrappedConnection = operatedclientconnection;
        markedReusable = false;
        released = false;
        duration = 0x7fffffffffffffffL;
    }

    public void abortConnection()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = released;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        released = true;
        unmarkReusable();
        Exception exception;
        try
        {
            shutdown();
        }
        catch (IOException ioexception) { }
        if (connManager != null)
        {
            connManager.releaseConnection(this, duration, TimeUnit.MILLISECONDS);
        }
        if (true) goto _L1; else goto _L3
_L3:
        exception;
        throw exception;
    }

    protected final void assertNotAborted()
    {
        if (isReleased())
        {
            throw new InterruptedIOException("Connection has been shut down");
        } else
        {
            return;
        }
    }

    protected final void assertValid(OperatedClientConnection operatedclientconnection)
    {
        if (isReleased() || operatedclientconnection == null)
        {
            throw new ConnectionShutdownException();
        } else
        {
            return;
        }
    }

    protected void detach()
    {
        this;
        JVM INSTR monitorenter ;
        wrappedConnection = null;
        connManager = null;
        duration = 0x7fffffffffffffffL;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void flush()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        operatedclientconnection.flush();
    }

    public Object getAttribute(String s)
    {
        this;
        JVM INSTR monitorenter ;
        OperatedClientConnection operatedclientconnection;
        operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        if (!(operatedclientconnection instanceof HttpContext)) goto _L2; else goto _L1
_L1:
        Object obj1 = ((HttpContext)operatedclientconnection).getAttribute(s);
        Object obj = obj1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return obj;
_L2:
        obj = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public InetAddress getLocalAddress()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getLocalAddress();
    }

    public int getLocalPort()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getLocalPort();
    }

    protected ClientConnectionManager getManager()
    {
        return connManager;
    }

    public HttpConnectionMetrics getMetrics()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getMetrics();
    }

    public InetAddress getRemoteAddress()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getRemoteAddress();
    }

    public int getRemotePort()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getRemotePort();
    }

    public SSLSession getSSLSession()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        if (!isOpen())
        {
            return null;
        }
        java.net.Socket socket = operatedclientconnection.getSocket();
        SSLSession sslsession;
        if (socket instanceof SSLSocket)
        {
            sslsession = ((SSLSocket)socket).getSession();
        } else
        {
            sslsession = null;
        }
        return sslsession;
    }

    public int getSocketTimeout()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.getSocketTimeout();
    }

    protected OperatedClientConnection getWrappedConnection()
    {
        return wrappedConnection;
    }

    public boolean isMarkedReusable()
    {
        return markedReusable;
    }

    public boolean isOpen()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        if (operatedclientconnection == null)
        {
            return false;
        } else
        {
            return operatedclientconnection.isOpen();
        }
    }

    protected boolean isReleased()
    {
        return released;
    }

    public boolean isResponseAvailable(int i)
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.isResponseAvailable(i);
    }

    public boolean isSecure()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        return operatedclientconnection.isSecure();
    }

    public boolean isStale()
    {
        OperatedClientConnection operatedclientconnection;
        if (!isReleased())
        {
            if ((operatedclientconnection = getWrappedConnection()) != null)
            {
                return operatedclientconnection.isStale();
            }
        }
        return true;
    }

    public void markReusable()
    {
        markedReusable = true;
    }

    public void receiveResponseEntity(HttpResponse httpresponse)
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        unmarkReusable();
        operatedclientconnection.receiveResponseEntity(httpresponse);
    }

    public HttpResponse receiveResponseHeader()
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        unmarkReusable();
        return operatedclientconnection.receiveResponseHeader();
    }

    public void releaseConnection()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = released;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        released = true;
        if (connManager != null)
        {
            connManager.releaseConnection(this, duration, TimeUnit.MILLISECONDS);
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public Object removeAttribute(String s)
    {
        this;
        JVM INSTR monitorenter ;
        OperatedClientConnection operatedclientconnection;
        operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        if (!(operatedclientconnection instanceof HttpContext)) goto _L2; else goto _L1
_L1:
        Object obj1 = ((HttpContext)operatedclientconnection).removeAttribute(s);
        Object obj = obj1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return obj;
_L2:
        obj = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpentityenclosingrequest)
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        unmarkReusable();
        operatedclientconnection.sendRequestEntity(httpentityenclosingrequest);
    }

    public void sendRequestHeader(HttpRequest httprequest)
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        unmarkReusable();
        operatedclientconnection.sendRequestHeader(httprequest);
    }

    public void setAttribute(String s, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        if (operatedclientconnection instanceof HttpContext)
        {
            ((HttpContext)operatedclientconnection).setAttribute(s, obj);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setIdleDuration(long l, TimeUnit timeunit)
    {
        if (l > 0L)
        {
            duration = timeunit.toMillis(l);
            return;
        } else
        {
            duration = -1L;
            return;
        }
    }

    public void setSocketTimeout(int i)
    {
        OperatedClientConnection operatedclientconnection = getWrappedConnection();
        assertValid(operatedclientconnection);
        operatedclientconnection.setSocketTimeout(i);
    }

    public void unmarkReusable()
    {
        markedReusable = false;
    }
}
