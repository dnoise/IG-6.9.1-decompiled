// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.conn:
//            ConnectionReleaseTrigger, EofSensorWatcher

public class EofSensorInputStream extends InputStream
    implements ConnectionReleaseTrigger
{

    private final EofSensorWatcher eofWatcher;
    private boolean selfClosed;
    protected InputStream wrappedStream;

    public EofSensorInputStream(InputStream inputstream, EofSensorWatcher eofsensorwatcher)
    {
        if (inputstream == null)
        {
            throw new IllegalArgumentException("Wrapped stream may not be null.");
        } else
        {
            wrappedStream = inputstream;
            selfClosed = false;
            eofWatcher = eofsensorwatcher;
            return;
        }
    }

    public void abortConnection()
    {
        selfClosed = true;
        checkAbort();
    }

    public int available()
    {
        boolean flag = isReadAllowed();
        int i = 0;
        if (flag)
        {
            int j;
            try
            {
                j = wrappedStream.available();
            }
            catch (IOException ioexception)
            {
                checkAbort();
                throw ioexception;
            }
            i = j;
        }
        return i;
    }

    protected void checkAbort()
    {
        boolean flag;
        if (wrappedStream == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        flag = true;
        if (eofWatcher != null)
        {
            flag = eofWatcher.streamAbort(wrappedStream);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        wrappedStream.close();
        wrappedStream = null;
        return;
        Exception exception;
        exception;
        wrappedStream = null;
        throw exception;
    }

    protected void checkClose()
    {
        boolean flag;
        if (wrappedStream == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        flag = true;
        if (eofWatcher != null)
        {
            flag = eofWatcher.streamClosed(wrappedStream);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        wrappedStream.close();
        wrappedStream = null;
        return;
        Exception exception;
        exception;
        wrappedStream = null;
        throw exception;
    }

    protected void checkEOF(int i)
    {
        boolean flag;
        if (wrappedStream == null || i >= 0)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        flag = true;
        if (eofWatcher != null)
        {
            flag = eofWatcher.eofDetected(wrappedStream);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        wrappedStream.close();
        wrappedStream = null;
        return;
        Exception exception;
        exception;
        wrappedStream = null;
        throw exception;
    }

    public void close()
    {
        selfClosed = true;
        checkClose();
    }

    protected boolean isReadAllowed()
    {
        if (selfClosed)
        {
            throw new IOException("Attempted read on closed stream.");
        }
        return wrappedStream != null;
    }

    public int read()
    {
        int i = -1;
        if (isReadAllowed())
        {
            try
            {
                i = wrappedStream.read();
                checkEOF(i);
            }
            catch (IOException ioexception)
            {
                checkAbort();
                throw ioexception;
            }
        }
        return i;
    }

    public int read(byte abyte0[])
    {
        int i = -1;
        if (isReadAllowed())
        {
            try
            {
                i = wrappedStream.read(abyte0);
                checkEOF(i);
            }
            catch (IOException ioexception)
            {
                checkAbort();
                throw ioexception;
            }
        }
        return i;
    }

    public int read(byte abyte0[], int i, int j)
    {
        int k = -1;
        if (isReadAllowed())
        {
            try
            {
                k = wrappedStream.read(abyte0, i, j);
                checkEOF(k);
            }
            catch (IOException ioexception)
            {
                checkAbort();
                throw ioexception;
            }
        }
        return k;
    }

    public void releaseConnection()
    {
        close();
    }
}
