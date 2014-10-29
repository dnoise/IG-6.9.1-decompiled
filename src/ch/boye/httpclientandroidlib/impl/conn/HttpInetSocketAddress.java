// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn;

import ch.boye.httpclientandroidlib.HttpHost;
import java.net.InetAddress;
import java.net.InetSocketAddress;

class HttpInetSocketAddress extends InetSocketAddress
{

    private static final long serialVersionUID = 0xa3b3f5ec8d72910bL;
    private final HttpHost host;

    public HttpInetSocketAddress(HttpHost httphost, InetAddress inetaddress, int i)
    {
        super(inetaddress, i);
        if (httphost == null)
        {
            throw new IllegalArgumentException("HTTP host may not be null");
        } else
        {
            host = httphost;
            return;
        }
    }

    public HttpHost getHost()
    {
        return host;
    }

    public String toString()
    {
        return (new StringBuilder()).append(host.getHostName()).append(":").append(getPort()).toString();
    }
}
