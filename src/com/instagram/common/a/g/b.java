// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.g;

import com.facebook.l.a.d;
import java.net.InetAddress;
import java.net.Socket;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.instagram.common.a.g:
//            c, a

final class b
    implements LayeredSocketFactory
{

    private SSLSocketFactory a;

    private b()
    {
    }

    b(byte byte0)
    {
        this();
    }

    private LayeredSocketFactory a()
    {
        this;
        JVM INSTR monitorenter ;
        SSLSocketFactory sslsocketfactory;
        if (a == null)
        {
            SSLSocketFactory sslsocketfactory1 = SSLSocketFactory.getSocketFactory();
            a = sslsocketfactory1;
            sslsocketfactory1.setHostnameVerifier(new d(new c(this)));
            com.instagram.common.a.g.a.b();
        }
        sslsocketfactory = a;
        this;
        JVM INSTR monitorexit ;
        return sslsocketfactory;
        Exception exception;
        exception;
        throw exception;
    }

    public final Socket connectSocket(Socket socket, String s, int i, InetAddress inetaddress, int j, HttpParams httpparams)
    {
        return a().connectSocket(socket, s, i, inetaddress, j, httpparams);
    }

    public final Socket createSocket()
    {
        return a().createSocket();
    }

    public final Socket createSocket(Socket socket, String s, int i, boolean flag)
    {
        return a().createSocket(socket, s, i, flag);
    }

    public final boolean isSecure(Socket socket)
    {
        return a().isSecure(socket);
    }
}
