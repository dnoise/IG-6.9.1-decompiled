// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.scheme;

import ch.boye.httpclientandroidlib.conn.ConnectTimeoutException;
import ch.boye.httpclientandroidlib.params.HttpConnectionParams;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.scheme:
//            SchemeSocketFactory, SocketFactory, HostNameResolver

public class PlainSocketFactory
    implements SchemeSocketFactory, SocketFactory
{

    private final HostNameResolver nameResolver;

    public PlainSocketFactory()
    {
        nameResolver = null;
    }

    public PlainSocketFactory(HostNameResolver hostnameresolver)
    {
        nameResolver = hostnameresolver;
    }

    public static PlainSocketFactory getSocketFactory()
    {
        return new PlainSocketFactory();
    }

    public Socket connectSocket(Socket socket, String s, int i, InetAddress inetaddress, int j, HttpParams httpparams)
    {
        InetSocketAddress inetsocketaddress;
label0:
        {
            if (inetaddress == null)
            {
                inetsocketaddress = null;
                if (j <= 0)
                {
                    break label0;
                }
            }
            if (j < 0)
            {
                j = 0;
            }
            inetsocketaddress = new InetSocketAddress(inetaddress, j);
        }
        InetAddress inetaddress1;
        if (nameResolver != null)
        {
            inetaddress1 = nameResolver.resolve(s);
        } else
        {
            inetaddress1 = InetAddress.getByName(s);
        }
        return connectSocket(socket, new InetSocketAddress(inetaddress1, i), inetsocketaddress, httpparams);
    }

    public Socket connectSocket(Socket socket, InetSocketAddress inetsocketaddress, InetSocketAddress inetsocketaddress1, HttpParams httpparams)
    {
        if (inetsocketaddress == null)
        {
            throw new IllegalArgumentException("Remote address may not be null");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        if (socket == null)
        {
            socket = createSocket();
        }
        if (inetsocketaddress1 != null)
        {
            socket.setReuseAddress(HttpConnectionParams.getSoReuseaddr(httpparams));
            socket.bind(inetsocketaddress1);
        }
        int i = HttpConnectionParams.getConnectionTimeout(httpparams);
        int j = HttpConnectionParams.getSoTimeout(httpparams);
        try
        {
            socket.setSoTimeout(j);
            socket.connect(inetsocketaddress, i);
        }
        catch (SocketTimeoutException sockettimeoutexception)
        {
            throw new ConnectTimeoutException((new StringBuilder("Connect to ")).append(inetsocketaddress).append(" timed out").toString());
        }
        return socket;
    }

    public Socket createSocket()
    {
        return new Socket();
    }

    public Socket createSocket(HttpParams httpparams)
    {
        return new Socket();
    }

    public final boolean isSecure(Socket socket)
    {
        if (socket == null)
        {
            throw new IllegalArgumentException("Socket may not be null.");
        }
        if (socket.isClosed())
        {
            throw new IllegalArgumentException("Socket is closed.");
        } else
        {
            return false;
        }
    }
}
