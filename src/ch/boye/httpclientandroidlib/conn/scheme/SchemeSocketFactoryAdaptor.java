// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.scheme;

import ch.boye.httpclientandroidlib.params.HttpParams;
import java.net.InetSocketAddress;
import java.net.Socket;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.scheme:
//            SchemeSocketFactory, SocketFactory

class SchemeSocketFactoryAdaptor
    implements SchemeSocketFactory
{

    private final SocketFactory factory;

    SchemeSocketFactoryAdaptor(SocketFactory socketfactory)
    {
        factory = socketfactory;
    }

    public Socket connectSocket(Socket socket, InetSocketAddress inetsocketaddress, InetSocketAddress inetsocketaddress1, HttpParams httpparams)
    {
        String s = inetsocketaddress.getHostName();
        int i = inetsocketaddress.getPort();
        java.net.InetAddress inetaddress = null;
        int j = 0;
        if (inetsocketaddress1 != null)
        {
            inetaddress = inetsocketaddress1.getAddress();
            j = inetsocketaddress1.getPort();
        }
        return factory.connectSocket(socket, s, i, inetaddress, j, httpparams);
    }

    public Socket createSocket(HttpParams httpparams)
    {
        return factory.createSocket();
    }

    public boolean equals(Object obj)
    {
        if (obj == null)
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        if (obj instanceof SchemeSocketFactoryAdaptor)
        {
            return factory.equals(((SchemeSocketFactoryAdaptor)obj).factory);
        } else
        {
            return factory.equals(obj);
        }
    }

    public SocketFactory getFactory()
    {
        return factory;
    }

    public int hashCode()
    {
        return factory.hashCode();
    }

    public boolean isSecure(Socket socket)
    {
        return factory.isSecure(socket);
    }
}
