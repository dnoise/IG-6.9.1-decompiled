// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.ssl;

import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocket;

public interface X509HostnameVerifier
    extends HostnameVerifier
{

    public abstract void verify(String s, X509Certificate x509certificate);

    public abstract void verify(String s, SSLSocket sslsocket);

    public abstract void verify(String s, String as[], String as1[]);
}
