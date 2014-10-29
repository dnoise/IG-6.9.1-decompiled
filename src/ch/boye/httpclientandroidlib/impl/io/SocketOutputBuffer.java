// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.io;

import ch.boye.httpclientandroidlib.params.HttpParams;
import java.net.Socket;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.io:
//            AbstractSessionOutputBuffer

public class SocketOutputBuffer extends AbstractSessionOutputBuffer
{

    public SocketOutputBuffer(Socket socket, int i, HttpParams httpparams)
    {
        if (socket == null)
        {
            throw new IllegalArgumentException("Socket may not be null");
        }
        if (i < 0)
        {
            i = socket.getSendBufferSize();
        }
        if (i < 1024)
        {
            i = 1024;
        }
        init(socket.getOutputStream(), i, httpparams);
    }
}
