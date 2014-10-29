// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn;

import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseFactory;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.conn.OperatedClientConnection;
import ch.boye.httpclientandroidlib.impl.SocketHttpClientConnection;
import ch.boye.httpclientandroidlib.io.HttpMessageParser;
import ch.boye.httpclientandroidlib.io.SessionInputBuffer;
import ch.boye.httpclientandroidlib.io.SessionOutputBuffer;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.params.HttpProtocolParams;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.io.IOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn:
//            DefaultResponseParser, LoggingSessionInputBuffer, Wire, LoggingSessionOutputBuffer

public class DefaultClientConnection extends SocketHttpClientConnection
    implements OperatedClientConnection, HttpContext
{

    private final Map attributes = new HashMap();
    private boolean connSecure;
    public HttpClientAndroidLog headerLog;
    public HttpClientAndroidLog log;
    private volatile boolean shutdown;
    private volatile Socket socket;
    private HttpHost targetHost;
    public HttpClientAndroidLog wireLog;

    public DefaultClientConnection()
    {
        log = new HttpClientAndroidLog(getClass());
        headerLog = new HttpClientAndroidLog("ch.boye.httpclientandroidlib.headers");
        wireLog = new HttpClientAndroidLog("ch.boye.httpclientandroidlib.wire");
    }

    public void close()
    {
        try
        {
            super.close();
            log.debug("Connection closed");
            return;
        }
        catch (IOException ioexception)
        {
            log.debug("I/O error closing connection", ioexception);
        }
    }

    protected HttpMessageParser createResponseParser(SessionInputBuffer sessioninputbuffer, HttpResponseFactory httpresponsefactory, HttpParams httpparams)
    {
        return new DefaultResponseParser(sessioninputbuffer, null, httpresponsefactory, httpparams);
    }

    protected SessionInputBuffer createSessionInputBuffer(Socket socket1, int i, HttpParams httpparams)
    {
        if (i == -1)
        {
            i = 8192;
        }
        SessionInputBuffer sessioninputbuffer = super.createSessionInputBuffer(socket1, i, httpparams);
        if (wireLog.isDebugEnabled())
        {
            return new LoggingSessionInputBuffer(sessioninputbuffer, new Wire(wireLog), HttpProtocolParams.getHttpElementCharset(httpparams));
        } else
        {
            return sessioninputbuffer;
        }
    }

    protected SessionOutputBuffer createSessionOutputBuffer(Socket socket1, int i, HttpParams httpparams)
    {
        if (i == -1)
        {
            i = 8192;
        }
        SessionOutputBuffer sessionoutputbuffer = super.createSessionOutputBuffer(socket1, i, httpparams);
        if (wireLog.isDebugEnabled())
        {
            return new LoggingSessionOutputBuffer(sessionoutputbuffer, new Wire(wireLog), HttpProtocolParams.getHttpElementCharset(httpparams));
        } else
        {
            return sessionoutputbuffer;
        }
    }

    public Object getAttribute(String s)
    {
        return attributes.get(s);
    }

    public final Socket getSocket()
    {
        return socket;
    }

    public final HttpHost getTargetHost()
    {
        return targetHost;
    }

    public final boolean isSecure()
    {
        return connSecure;
    }

    public void openCompleted(boolean flag, HttpParams httpparams)
    {
        assertNotOpen();
        if (httpparams == null)
        {
            throw new IllegalArgumentException("Parameters must not be null.");
        } else
        {
            connSecure = flag;
            bind(socket, httpparams);
            return;
        }
    }

    public void opening(Socket socket1, HttpHost httphost)
    {
        assertNotOpen();
        socket = socket1;
        targetHost = httphost;
        if (shutdown)
        {
            socket1.close();
            throw new IOException("Connection already shutdown");
        } else
        {
            return;
        }
    }

    public HttpResponse receiveResponseHeader()
    {
        HttpResponse httpresponse = super.receiveResponseHeader();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Receiving response: ")).append(httpresponse.getStatusLine()).toString());
        }
        if (headerLog.isDebugEnabled())
        {
            headerLog.debug((new StringBuilder("<< ")).append(httpresponse.getStatusLine().toString()).toString());
            ch.boye.httpclientandroidlib.Header aheader[] = httpresponse.getAllHeaders();
            int i = aheader.length;
            for (int j = 0; j < i; j++)
            {
                ch.boye.httpclientandroidlib.Header header = aheader[j];
                headerLog.debug((new StringBuilder("<< ")).append(header.toString()).toString());
            }

        }
        return httpresponse;
    }

    public Object removeAttribute(String s)
    {
        return attributes.remove(s);
    }

    public void sendRequestHeader(HttpRequest httprequest)
    {
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Sending request: ")).append(httprequest.getRequestLine()).toString());
        }
        super.sendRequestHeader(httprequest);
        if (headerLog.isDebugEnabled())
        {
            headerLog.debug((new StringBuilder(">> ")).append(httprequest.getRequestLine().toString()).toString());
            ch.boye.httpclientandroidlib.Header aheader[] = httprequest.getAllHeaders();
            int i = aheader.length;
            for (int j = 0; j < i; j++)
            {
                ch.boye.httpclientandroidlib.Header header = aheader[j];
                headerLog.debug((new StringBuilder(">> ")).append(header.toString()).toString());
            }

        }
    }

    public void setAttribute(String s, Object obj)
    {
        attributes.put(s, obj);
    }

    public void shutdown()
    {
        shutdown = true;
        Socket socket1;
        try
        {
            super.shutdown();
            log.debug("Connection shut down");
            socket1 = socket;
        }
        catch (IOException ioexception)
        {
            log.debug("I/O error shutting down connection", ioexception);
            return;
        }
        if (socket1 == null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        socket1.close();
    }

    public void update(Socket socket1, HttpHost httphost, boolean flag, HttpParams httpparams)
    {
        assertOpen();
        if (httphost == null)
        {
            throw new IllegalArgumentException("Target host must not be null.");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("Parameters must not be null.");
        }
        if (socket1 != null)
        {
            socket = socket1;
            bind(socket1, httpparams);
        }
        targetHost = httphost;
        connSecure = flag;
    }
}
