// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;

import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.SocketFactory;

// Referenced classes of package com.a.a:
//            e

public class a
    implements e
{

    private SocketFactory mSocketFactory;

    public a()
    {
        mSocketFactory = SocketFactory.getDefault();
    }

    public void connectSocket(Socket socket, String s, int i)
    {
        socket.connect(new InetSocketAddress(s, i));
    }

    public Socket createSocket(boolean flag)
    {
        if (!flag)
        {
            mSocketFactory.createSocket();
        }
        throw new UnsupportedOperationException();
    }
}
