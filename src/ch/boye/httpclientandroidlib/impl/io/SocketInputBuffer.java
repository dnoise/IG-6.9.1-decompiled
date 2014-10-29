// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.io;

import ch.boye.httpclientandroidlib.io.EofSensor;
import ch.boye.httpclientandroidlib.params.HttpParams;
import java.io.InterruptedIOException;
import java.net.Socket;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.io:
//            AbstractSessionInputBuffer

public class SocketInputBuffer extends AbstractSessionInputBuffer
    implements EofSensor
{

    private static final Class SOCKET_TIMEOUT_CLASS = SocketTimeoutExceptionClass();
    private boolean eof;
    private final Socket socket;

    public SocketInputBuffer(Socket socket1, int i, HttpParams httpparams)
    {
        if (socket1 == null)
        {
            throw new IllegalArgumentException("Socket may not be null");
        }
        socket = socket1;
        eof = false;
        if (i < 0)
        {
            i = socket1.getReceiveBufferSize();
        }
        if (i < 1024)
        {
            i = 1024;
        }
        init(socket1.getInputStream(), i, httpparams);
    }

    private static Class SocketTimeoutExceptionClass()
    {
        Class class1;
        try
        {
            class1 = Class.forName("java.net.SocketTimeoutException");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return null;
        }
        return class1;
    }

    private static boolean isSocketTimeoutException(InterruptedIOException interruptedioexception)
    {
        if (SOCKET_TIMEOUT_CLASS != null)
        {
            return SOCKET_TIMEOUT_CLASS.isInstance(interruptedioexception);
        } else
        {
            return true;
        }
    }

    protected int fillBuffer()
    {
        int i = super.fillBuffer();
        boolean flag;
        if (i == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        eof = flag;
        return i;
    }

    public boolean isDataAvailable(int i)
    {
        boolean flag;
        int j;
        flag = hasBufferedData();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        j = socket.getSoTimeout();
        boolean flag1;
        socket.setSoTimeout(i);
        fillBuffer();
        flag1 = hasBufferedData();
        flag = flag1;
        socket.setSoTimeout(j);
        return flag;
        InterruptedIOException interruptedioexception;
        interruptedioexception;
        if (!isSocketTimeoutException(interruptedioexception))
        {
            throw interruptedioexception;
        }
        break MISSING_BLOCK_LABEL_75;
        Exception exception;
        exception;
        socket.setSoTimeout(j);
        throw exception;
        socket.setSoTimeout(j);
        return flag;
    }

    public boolean isEof()
    {
        return eof;
    }

}
