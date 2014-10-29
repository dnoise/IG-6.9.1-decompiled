// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.ssl;

import ch.boye.httpclientandroidlib.conn.ConnectTimeoutException;
import ch.boye.httpclientandroidlib.conn.scheme.HostNameResolver;
import ch.boye.httpclientandroidlib.conn.scheme.LayeredSchemeSocketFactory;
import ch.boye.httpclientandroidlib.conn.scheme.LayeredSocketFactory;
import ch.boye.httpclientandroidlib.params.HttpConnectionParams;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.security.KeyStore;
import java.security.SecureRandom;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.ssl:
//            AllowAllHostnameVerifier, BrowserCompatHostnameVerifier, StrictHostnameVerifier, TrustManagerDecorator, 
//            X509HostnameVerifier, TrustStrategy

public class SSLSocketFactory
    implements LayeredSchemeSocketFactory, LayeredSocketFactory
{

    public static final X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER = new AllowAllHostnameVerifier();
    public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new BrowserCompatHostnameVerifier();
    public static final String SSL = "SSL";
    public static final String SSLV2 = "SSLv2";
    public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = new StrictHostnameVerifier();
    public static final String TLS = "TLS";
    private volatile X509HostnameVerifier hostnameVerifier;
    private final HostNameResolver nameResolver;
    private final javax.net.ssl.SSLSocketFactory socketfactory;

    private SSLSocketFactory()
    {
        this(createDefaultSSLContext());
    }

    public SSLSocketFactory(TrustStrategy truststrategy)
    {
        this("TLS", null, null, null, null, truststrategy, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(TrustStrategy truststrategy, X509HostnameVerifier x509hostnameverifier)
    {
        this("TLS", null, null, null, null, truststrategy, x509hostnameverifier);
    }

    public SSLSocketFactory(String s, KeyStore keystore, String s1, KeyStore keystore1, SecureRandom securerandom, HostNameResolver hostnameresolver)
    {
        this(createSSLContext(s, keystore, s1, keystore1, securerandom, null), hostnameresolver);
    }

    public SSLSocketFactory(String s, KeyStore keystore, String s1, KeyStore keystore1, SecureRandom securerandom, TrustStrategy truststrategy, X509HostnameVerifier x509hostnameverifier)
    {
        this(createSSLContext(s, keystore, s1, keystore1, securerandom, truststrategy), x509hostnameverifier);
    }

    public SSLSocketFactory(String s, KeyStore keystore, String s1, KeyStore keystore1, SecureRandom securerandom, X509HostnameVerifier x509hostnameverifier)
    {
        this(createSSLContext(s, keystore, s1, keystore1, securerandom, null), x509hostnameverifier);
    }

    public SSLSocketFactory(KeyStore keystore)
    {
        this("TLS", null, null, keystore, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(KeyStore keystore, String s)
    {
        this("TLS", keystore, s, null, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(KeyStore keystore, String s, KeyStore keystore1)
    {
        this("TLS", keystore, s, keystore1, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(SSLContext sslcontext)
    {
        this(sslcontext, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(SSLContext sslcontext, HostNameResolver hostnameresolver)
    {
        socketfactory = sslcontext.getSocketFactory();
        hostnameVerifier = BROWSER_COMPATIBLE_HOSTNAME_VERIFIER;
        nameResolver = hostnameresolver;
    }

    public SSLSocketFactory(SSLContext sslcontext, X509HostnameVerifier x509hostnameverifier)
    {
        socketfactory = sslcontext.getSocketFactory();
        hostnameVerifier = x509hostnameverifier;
        nameResolver = null;
    }

    private static SSLContext createDefaultSSLContext()
    {
        SSLContext sslcontext;
        try
        {
            sslcontext = createSSLContext("TLS", null, null, null, null, null);
        }
        catch (Exception exception)
        {
            throw new IllegalStateException("Failure initializing default SSL context", exception);
        }
        return sslcontext;
    }

    private static SSLContext createSSLContext(String s, KeyStore keystore, String s1, KeyStore keystore1, SecureRandom securerandom, TrustStrategy truststrategy)
    {
        if (s == null)
        {
            s = "TLS";
        }
        KeyManagerFactory keymanagerfactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        char ac[];
        javax.net.ssl.KeyManager akeymanager[];
        TrustManagerFactory trustmanagerfactory;
        javax.net.ssl.TrustManager atrustmanager[];
        if (s1 != null)
        {
            ac = s1.toCharArray();
        } else
        {
            ac = null;
        }
        keymanagerfactory.init(keystore, ac);
        akeymanager = keymanagerfactory.getKeyManagers();
        trustmanagerfactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustmanagerfactory.init(keystore1);
        atrustmanager = trustmanagerfactory.getTrustManagers();
        if (atrustmanager != null && truststrategy != null)
        {
            for (int i = 0; i < atrustmanager.length; i++)
            {
                javax.net.ssl.TrustManager trustmanager = atrustmanager[i];
                if (trustmanager instanceof X509TrustManager)
                {
                    atrustmanager[i] = new TrustManagerDecorator((X509TrustManager)trustmanager, truststrategy);
                }
            }

        }
        SSLContext sslcontext = SSLContext.getInstance(s);
        sslcontext.init(akeymanager, atrustmanager, securerandom);
        return sslcontext;
    }

    public static SSLSocketFactory getSocketFactory()
    {
        return new SSLSocketFactory();
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
        Socket socket1;
        int i;
        int j;
        String s;
        int k;
        String s1;
        SSLSocket sslsocket;
        if (socket != null)
        {
            socket1 = socket;
        } else
        {
            socket1 = new Socket();
        }
        if (inetsocketaddress1 != null)
        {
            socket1.setReuseAddress(HttpConnectionParams.getSoReuseaddr(httpparams));
            socket1.bind(inetsocketaddress1);
        }
        i = HttpConnectionParams.getConnectionTimeout(httpparams);
        j = HttpConnectionParams.getSoTimeout(httpparams);
        try
        {
            socket1.setSoTimeout(j);
            socket1.connect(inetsocketaddress, i);
        }
        catch (SocketTimeoutException sockettimeoutexception)
        {
            throw new ConnectTimeoutException((new StringBuilder("Connect to ")).append(inetsocketaddress).append(" timed out").toString());
        }
        s = inetsocketaddress.toString();
        k = inetsocketaddress.getPort();
        s1 = (new StringBuilder(":")).append(k).toString();
        if (s.endsWith(s1))
        {
            s = s.substring(0, s.length() - s1.length());
        }
        if (socket1 instanceof SSLSocket)
        {
            sslsocket = (SSLSocket)socket1;
        } else
        {
            sslsocket = (SSLSocket)socketfactory.createSocket(socket1, s, k, true);
        }
        if (hostnameVerifier != null)
        {
            try
            {
                hostnameVerifier.verify(s, sslsocket);
            }
            catch (IOException ioexception)
            {
                try
                {
                    sslsocket.close();
                }
                catch (Exception exception) { }
                throw ioexception;
            }
        }
        return sslsocket;
    }

    public Socket createLayeredSocket(Socket socket, String s, int i, boolean flag)
    {
        SSLSocket sslsocket = (SSLSocket)socketfactory.createSocket(socket, s, i, flag);
        if (hostnameVerifier != null)
        {
            hostnameVerifier.verify(s, sslsocket);
        }
        return sslsocket;
    }

    public Socket createSocket()
    {
        return socketfactory.createSocket();
    }

    public Socket createSocket(HttpParams httpparams)
    {
        return socketfactory.createSocket();
    }

    public Socket createSocket(Socket socket, String s, int i, boolean flag)
    {
        return createLayeredSocket(socket, s, i, flag);
    }

    public X509HostnameVerifier getHostnameVerifier()
    {
        return hostnameVerifier;
    }

    public boolean isSecure(Socket socket)
    {
        if (socket == null)
        {
            throw new IllegalArgumentException("Socket may not be null");
        }
        if (!(socket instanceof SSLSocket))
        {
            throw new IllegalArgumentException("Socket not created by this factory");
        }
        if (socket.isClosed())
        {
            throw new IllegalArgumentException("Socket is closed");
        } else
        {
            return true;
        }
    }

    public void setHostnameVerifier(X509HostnameVerifier x509hostnameverifier)
    {
        if (x509hostnameverifier == null)
        {
            throw new IllegalArgumentException("Hostname verifier may not be null");
        } else
        {
            hostnameVerifier = x509hostnameverifier;
            return;
        }
    }

}
