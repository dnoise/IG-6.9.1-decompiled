// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.io;

import ch.boye.httpclientandroidlib.io.SessionOutputBuffer;
import java.io.IOException;
import java.io.OutputStream;

public class ContentLengthOutputStream extends OutputStream
{

    private boolean closed;
    private final long contentLength;
    private final SessionOutputBuffer out;
    private long total;

    public ContentLengthOutputStream(SessionOutputBuffer sessionoutputbuffer, long l)
    {
        total = 0L;
        closed = false;
        if (sessionoutputbuffer == null)
        {
            throw new IllegalArgumentException("Session output buffer may not be null");
        }
        if (l < 0L)
        {
            throw new IllegalArgumentException("Content length may not be negative");
        } else
        {
            out = sessionoutputbuffer;
            contentLength = l;
            return;
        }
    }

    public void close()
    {
        if (!closed)
        {
            closed = true;
            out.flush();
        }
    }

    public void flush()
    {
        out.flush();
    }

    public void write(int i)
    {
        if (closed)
        {
            throw new IOException("Attempted write to closed stream.");
        }
        if (total < contentLength)
        {
            out.write(i);
            total = 1L + total;
        }
    }

    public void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public void write(byte abyte0[], int i, int j)
    {
        if (closed)
        {
            throw new IOException("Attempted write to closed stream.");
        }
        if (total < contentLength)
        {
            long l = contentLength - total;
            if ((long)j > l)
            {
                j = (int)l;
            }
            out.write(abyte0, i, j);
            total = total + (long)j;
        }
    }
}
