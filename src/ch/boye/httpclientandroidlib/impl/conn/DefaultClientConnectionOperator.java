// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn;

import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.conn.ClientConnectionOperator;
import ch.boye.httpclientandroidlib.conn.ConnectTimeoutException;
import ch.boye.httpclientandroidlib.conn.HttpHostConnectException;
import ch.boye.httpclientandroidlib.conn.OperatedClientConnection;
import ch.boye.httpclientandroidlib.conn.scheme.LayeredSchemeSocketFactory;
import ch.boye.httpclientandroidlib.conn.scheme.Scheme;
import ch.boye.httpclientandroidlib.conn.scheme.SchemeRegistry;
import ch.boye.httpclientandroidlib.conn.scheme.SchemeSocketFactory;
import ch.boye.httpclientandroidlib.params.HttpConnectionParams;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.conn:
//            DefaultClientConnection, HttpInetSocketAddress

public class DefaultClientConnectionOperator
    implements ClientConnectionOperator
{

    public HttpClientAndroidLog log;
    protected final SchemeRegistry schemeRegistry;

    public DefaultClientConnectionOperator(SchemeRegistry schemeregistry)
    {
        log = new HttpClientAndroidLog(getClass());
        if (schemeregistry == null)
        {
            throw new IllegalArgumentException("Scheme registry amy not be null");
        } else
        {
            schemeRegistry = schemeregistry;
            return;
        }
    }

    public OperatedClientConnection createConnection()
    {
        return new DefaultClientConnection();
    }

    public void openConnection(OperatedClientConnection operatedclientconnection, HttpHost httphost, InetAddress inetaddress, HttpContext httpcontext, HttpParams httpparams)
    {
        SchemeSocketFactory schemesocketfactory;
        InetAddress ainetaddress[];
        int i;
        int j;
        if (operatedclientconnection == null)
        {
            throw new IllegalArgumentException("Connection may not be null");
        }
        if (httphost == null)
        {
            throw new IllegalArgumentException("Target host may not be null");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        if (operatedclientconnection.isOpen())
        {
            throw new IllegalStateException("Connection must not be open");
        }
        Scheme scheme = schemeRegistry.getScheme(httphost.getSchemeName());
        schemesocketfactory = scheme.getSchemeSocketFactory();
        ainetaddress = resolveHostname(httphost.getHostName());
        i = scheme.resolvePort(httphost.getPort());
        j = 0;
_L3:
        if (j >= ainetaddress.length) goto _L2; else goto _L1
_L1:
        boolean flag;
        Socket socket;
        HttpInetSocketAddress httpinetsocketaddress;
        Socket socket1;
        InetAddress inetaddress1 = ainetaddress[j];
        InetSocketAddress inetsocketaddress;
        if (j == -1 + ainetaddress.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        socket = schemesocketfactory.createSocket(httpparams);
        operatedclientconnection.opening(socket, httphost);
        httpinetsocketaddress = new HttpInetSocketAddress(httphost, inetaddress1, i);
        inetsocketaddress = null;
        if (inetaddress != null)
        {
            inetsocketaddress = new InetSocketAddress(inetaddress, 0);
        }
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Connecting to ")).append(httpinetsocketaddress).toString());
        }
        socket1 = schemesocketfactory.connectSocket(socket, httpinetsocketaddress, inetsocketaddress, httpparams);
        if (socket == socket1)
        {
            break MISSING_BLOCK_LABEL_360;
        }
        operatedclientconnection.opening(socket1, httphost);
_L4:
        prepareSocket(socket1, httpcontext, httpparams);
        operatedclientconnection.openCompleted(schemesocketfactory.isSecure(socket1), httpparams);
_L2:
        return;
        ConnectException connectexception;
        connectexception;
        if (flag)
        {
            throw new HttpHostConnectException(httphost, connectexception);
        }
        break MISSING_BLOCK_LABEL_315;
        ConnectTimeoutException connecttimeoutexception;
        connecttimeoutexception;
        if (flag)
        {
            throw connecttimeoutexception;
        }
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Connect to ")).append(httpinetsocketaddress).append(" timed out. Connection will be retried using another IP address").toString());
        }
        j++;
          goto _L3
        socket1 = socket;
          goto _L4
    }

    protected void prepareSocket(Socket socket, HttpContext httpcontext, HttpParams httpparams)
    {
        socket.setTcpNoDelay(HttpConnectionParams.getTcpNoDelay(httpparams));
        socket.setSoTimeout(HttpConnectionParams.getSoTimeout(httpparams));
        int i = HttpConnectionParams.getLinger(httpparams);
        if (i >= 0)
        {
            boolean flag;
            if (i > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            socket.setSoLinger(flag, i);
        }
    }

    protected InetAddress[] resolveHostname(String s)
    {
        return InetAddress.getAllByName(s);
    }

    public void updateSecureConnection(OperatedClientConnection operatedclientconnection, HttpHost httphost, HttpContext httpcontext, HttpParams httpparams)
    {
        if (operatedclientconnection == null)
        {
            throw new IllegalArgumentException("Connection may not be null");
        }
        if (httphost == null)
        {
            throw new IllegalArgumentException("Target host may not be null");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("Parameters may not be null");
        }
        if (!operatedclientconnection.isOpen())
        {
            throw new IllegalStateException("Connection must be open");
        }
        Scheme scheme = schemeRegistry.getScheme(httphost.getSchemeName());
        if (!(scheme.getSchemeSocketFactory() instanceof LayeredSchemeSocketFactory))
        {
            throw new IllegalArgumentException((new StringBuilder("Target scheme (")).append(scheme.getName()).append(") must have layered socket factory.").toString());
        }
        LayeredSchemeSocketFactory layeredschemesocketfactory = (LayeredSchemeSocketFactory)scheme.getSchemeSocketFactory();
        Socket socket;
        try
        {
            socket = layeredschemesocketfactory.createLayeredSocket(operatedclientconnection.getSocket(), httphost.getHostName(), scheme.resolvePort(httphost.getPort()), true);
        }
        catch (ConnectException connectexception)
        {
            throw new HttpHostConnectException(httphost, connectexception);
        }
        prepareSocket(socket, httpcontext, httpparams);
        operatedclientconnection.update(socket, httphost, layeredschemesocketfactory.isSecure(socket), httpparams);
    }
}
