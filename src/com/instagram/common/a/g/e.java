// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.g;

import ch.boye.httpclientandroidlib.conn.scheme.LayeredSchemeSocketFactory;
import ch.boye.httpclientandroidlib.conn.ssl.SSLSocketFactory;
import ch.boye.httpclientandroidlib.params.HttpParams;
import com.instagram.common.y.h.a;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.TrustManagerFactory;

// Referenced classes of package com.instagram.common.a.g:
//            f, d

final class e
    implements LayeredSchemeSocketFactory
{

    private LayeredSchemeSocketFactory a;

    private e()
    {
    }

    e(byte byte0)
    {
        this();
    }

    private LayeredSchemeSocketFactory a()
    {
        this;
        JVM INSTR monitorenter ;
        LayeredSchemeSocketFactory layeredschemesocketfactory;
        if (a == null)
        {
            SSLContext sslcontext = b();
            sslcontext.getClientSessionContext().setSessionCacheSize(0);
            a = new SSLSocketFactory(sslcontext, new f());
            d.b();
        }
        layeredschemesocketfactory = a;
        this;
        JVM INSTR monitorexit ;
        return layeredschemesocketfactory;
        Exception exception;
        exception;
        throw exception;
    }

    private static SSLContext b()
    {
        SSLContext sslcontext;
        try
        {
            KeyManagerFactory keymanagerfactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
            keymanagerfactory.init(null, null);
            javax.net.ssl.KeyManager akeymanager[] = keymanagerfactory.getKeyManagers();
            TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustmanagerfactory.init(null);
            javax.net.ssl.TrustManager atrustmanager[] = trustmanagerfactory.getTrustManagers();
            sslcontext = SSLContext.getInstance("TLS");
            sslcontext.init(akeymanager, atrustmanager, null);
        }
        catch (Exception exception)
        {
            throw new IllegalStateException("Failure initializing default SSL context", exception);
        }
        return sslcontext;
    }

    public final Socket connectSocket(Socket socket, InetSocketAddress inetsocketaddress, InetSocketAddress inetsocketaddress1, HttpParams httpparams)
    {
        com.instagram.common.y.h.a.a().a(socket, inetsocketaddress.getHostName());
        return a().connectSocket(socket, inetsocketaddress, inetsocketaddress1, httpparams);
    }

    public final Socket createLayeredSocket(Socket socket, String s, int i, boolean flag)
    {
        return a().createLayeredSocket(socket, s, i, flag);
    }

    public final Socket createSocket(HttpParams httpparams)
    {
        return a().createSocket(httpparams);
    }

    public final boolean isSecure(Socket socket)
    {
        return a().isSecure(socket);
    }
}
