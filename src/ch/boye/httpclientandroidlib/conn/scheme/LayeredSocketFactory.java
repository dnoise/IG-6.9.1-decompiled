// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.scheme;

import java.net.Socket;

// Referenced classes of package ch.boye.httpclientandroidlib.conn.scheme:
//            SocketFactory

public interface LayeredSocketFactory
    extends SocketFactory
{

    public abstract Socket createSocket(Socket socket, String s, int i, boolean flag);
}
