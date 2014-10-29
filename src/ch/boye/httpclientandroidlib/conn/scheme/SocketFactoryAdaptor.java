// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.scheme;

import ch.boye.httpclientandroidlib.params.BasicHttpParams;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.scheme:
//            SocketFactory, SchemeSocketFactory

class SocketFactoryAdaptor
    implements SocketFactory
{

    private final SchemeSocketFactory factory;

    SocketFactoryAdaptor(SchemeSocketFactory schemesocketfactory)
    {
        factory = schemesocketfactory;
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
        InetSocketAddress inetsocketaddress1 = new InetSocketAddress(InetAddress.getByName(s), i);
        return factory.connectSocket(socket, inetsocketaddress1, inetsocketaddress, httpparams);
    }

    public Socket createSocket()
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        return factory.createSocket(basichttpparams);
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
        if (obj instanceof SocketFactoryAdaptor)
        {
            return factory.equals(((SocketFactoryAdaptor)obj).factory);
        } else
        {
            return factory.equals(obj);
        }
    }

    public SchemeSocketFactory getFactory()
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
