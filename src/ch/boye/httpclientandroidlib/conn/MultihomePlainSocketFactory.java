// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn;

import ch.boye.httpclientandroidlib.conn.scheme.SocketFactory;
import ch.boye.httpclientandroidlib.params.HttpConnectionParams;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package ch.boye.httpclientandroidlib.conn:
//            ConnectTimeoutException

public final class MultihomePlainSocketFactory
    implements SocketFactory
{

    private static final MultihomePlainSocketFactory DEFAULT_FACTORY = new MultihomePlainSocketFactory();

    private MultihomePlainSocketFactory()
    {
    }

    public static MultihomePlainSocketFactory getSocketFactory()
    {
        return DEFAULT_FACTORY;
    }

    public final Socket connectSocket(Socket socket, String s, int i, InetAddress inetaddress, int j, HttpParams httpparams)
    {
        int k;
        Iterator iterator;
        IOException ioexception;
        if (s == null)
        {
            throw new IllegalArgumentException("Target host may not be null.");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("Parameters may not be null.");
        }
        if (socket == null)
        {
            socket = createSocket();
        }
        if (inetaddress != null || j > 0)
        {
            if (j < 0)
            {
                j = 0;
            }
            socket.bind(new InetSocketAddress(inetaddress, j));
        }
        k = HttpConnectionParams.getConnectionTimeout(httpparams);
        InetAddress ainetaddress[] = InetAddress.getAllByName(s);
        ArrayList arraylist = new ArrayList(ainetaddress.length);
        arraylist.addAll(Arrays.asList(ainetaddress));
        Collections.shuffle(arraylist);
        iterator = arraylist.iterator();
        ioexception = null;
_L2:
        InetAddress inetaddress1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_164;
        }
        inetaddress1 = (InetAddress)iterator.next();
        socket.connect(new InetSocketAddress(inetaddress1, i), k);
        IOException ioexception1;
        SocketTimeoutException sockettimeoutexception;
        if (ioexception != null)
        {
            throw ioexception;
        } else
        {
            return socket;
        }
        sockettimeoutexception;
        throw new ConnectTimeoutException((new StringBuilder("Connect to ")).append(inetaddress1).append(" timed out").toString());
        ioexception1;
        socket = new Socket();
        ioexception = ioexception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final Socket createSocket()
    {
        return new Socket();
    }

    public final boolean isSecure(Socket socket)
    {
        if (socket == null)
        {
            throw new IllegalArgumentException("Socket may not be null.");
        }
        if (socket.getClass() != java/net/Socket)
        {
            throw new IllegalArgumentException("Socket not created by this factory.");
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
