// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.scheme;

import ch.boye.httpclientandroidlib.params.HttpParams;
import java.net.InetSocketAddress;
import java.net.Socket;

public interface SchemeSocketFactory
{

    public abstract Socket connectSocket(Socket socket, InetSocketAddress inetsocketaddress, InetSocketAddress inetsocketaddress1, HttpParams httpparams);

    public abstract Socket createSocket(HttpParams httpparams);

    public abstract boolean isSecure(Socket socket);
}
