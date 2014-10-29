// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.io;

import ch.boye.httpclientandroidlib.io.BufferInfo;
import ch.boye.httpclientandroidlib.io.HttpTransportMetrics;
import ch.boye.httpclientandroidlib.io.SessionInputBuffer;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.params.HttpProtocolParams;
import ch.boye.httpclientandroidlib.util.ByteArrayBuffer;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.io:
//            HttpTransportMetricsImpl

public abstract class AbstractSessionInputBuffer
    implements BufferInfo, SessionInputBuffer
{

    private boolean ascii;
    private byte buffer[];
    private int bufferlen;
    private int bufferpos;
    private String charset;
    private InputStream instream;
    private ByteArrayBuffer linebuffer;
    private int maxLineLen;
    private HttpTransportMetricsImpl metrics;
    private int minChunkLimit;

    public AbstractSessionInputBuffer()
    {
        linebuffer = null;
        charset = "US-ASCII";
        ascii = true;
        maxLineLen = -1;
        minChunkLimit = 512;
    }

    private int lineFromLineBuffer(CharArrayBuffer chararraybuffer)
    {
        int i = linebuffer.length();
        if (i > 0)
        {
            if (linebuffer.byteAt(i - 1) == 10)
            {
                i--;
                linebuffer.setLength(i);
            }
            if (i > 0 && linebuffer.byteAt(i - 1) == 13)
            {
                int k = i - 1;
                linebuffer.setLength(k);
            }
        }
        int j = linebuffer.length();
        if (ascii)
        {
            chararraybuffer.append(linebuffer, 0, j);
        } else
        {
            String s = new String(linebuffer.buffer(), 0, j, charset);
            j = s.length();
            chararraybuffer.append(s);
        }
        linebuffer.clear();
        return j;
    }

    private int lineFromReadBuffer(CharArrayBuffer chararraybuffer, int i)
    {
        int j = bufferpos;
        bufferpos = i + 1;
        if (i > 0 && buffer[i - 1] == 13)
        {
            i--;
        }
        int k = i - j;
        if (ascii)
        {
            chararraybuffer.append(buffer, j, k);
            return k;
        } else
        {
            String s = new String(buffer, j, k, charset);
            chararraybuffer.append(s);
            return s.length();
        }
    }

    private int locateLF()
    {
        for (int i = bufferpos; i < bufferlen; i++)
        {
            if (buffer[i] == 10)
            {
                return i;
            }
        }

        return -1;
    }

    public int available()
    {
        return capacity() - length();
    }

    public int capacity()
    {
        return buffer.length;
    }

    protected HttpTransportMetricsImpl createTransportMetrics()
    {
        return new HttpTransportMetricsImpl();
    }

    protected int fillBuffer()
    {
        if (bufferpos > 0)
        {
            int l = bufferlen - bufferpos;
            if (l > 0)
            {
                System.arraycopy(buffer, bufferpos, buffer, 0, l);
            }
            bufferpos = 0;
            bufferlen = l;
        }
        int i = bufferlen;
        int j = buffer.length - i;
        int k = instream.read(buffer, i, j);
        if (k == -1)
        {
            return -1;
        } else
        {
            bufferlen = i + k;
            metrics.incrementBytesTransferred(k);
            return k;
        }
    }

    public HttpTransportMetrics getMetrics()
    {
        return metrics;
    }

    protected boolean hasBufferedData()
    {
        return bufferpos < bufferlen;
    }

    protected void init(InputStream inputstream, int i, HttpParams httpparams)
    {
        boolean flag;
label0:
        {
            if (inputstream == null)
            {
                throw new IllegalArgumentException("Input stream may not be null");
            }
            if (i <= 0)
            {
                throw new IllegalArgumentException("Buffer size may not be negative or zero");
            }
            if (httpparams == null)
            {
                throw new IllegalArgumentException("HTTP parameters may not be null");
            }
            instream = inputstream;
            buffer = new byte[i];
            bufferpos = 0;
            bufferlen = 0;
            linebuffer = new ByteArrayBuffer(i);
            charset = HttpProtocolParams.getHttpElementCharset(httpparams);
            if (!charset.equalsIgnoreCase("US-ASCII"))
            {
                boolean flag1 = charset.equalsIgnoreCase("ASCII");
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag = true;
        }
        ascii = flag;
        maxLineLen = httpparams.getIntParameter("http.connection.max-line-length", -1);
        minChunkLimit = httpparams.getIntParameter("http.connection.min-chunk-limit", 512);
        metrics = createTransportMetrics();
    }

    public int length()
    {
        return bufferlen - bufferpos;
    }

    public int read()
    {
        while (!hasBufferedData()) 
        {
            if (fillBuffer() == -1)
            {
                return -1;
            }
        }
        byte abyte0[] = buffer;
        int i = bufferpos;
        bufferpos = i + 1;
        return 0xff & abyte0[i];
    }

    public int read(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return 0;
        } else
        {
            return read(abyte0, 0, abyte0.length);
        }
    }

    public int read(byte abyte0[], int i, int j)
    {
        int l;
        if (abyte0 == null)
        {
            l = 0;
        } else
        {
            if (hasBufferedData())
            {
                int i1 = Math.min(j, bufferlen - bufferpos);
                System.arraycopy(buffer, bufferpos, abyte0, i, i1);
                bufferpos = i1 + bufferpos;
                return i1;
            }
            if (j > minChunkLimit)
            {
                l = instream.read(abyte0, i, j);
                if (l > 0)
                {
                    metrics.incrementBytesTransferred(l);
                    return l;
                }
            } else
            {
                while (!hasBufferedData()) 
                {
                    if (fillBuffer() == -1)
                    {
                        return -1;
                    }
                }
                int k = Math.min(j, bufferlen - bufferpos);
                System.arraycopy(buffer, bufferpos, abyte0, i, k);
                bufferpos = k + bufferpos;
                return k;
            }
        }
        return l;
    }

    public int readLine(CharArrayBuffer chararraybuffer)
    {
        if (chararraybuffer == null)
        {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        boolean flag = true;
        int i = 0;
        while (flag) 
        {
            int j = locateLF();
            if (j != -1)
            {
                if (linebuffer.isEmpty())
                {
                    return lineFromReadBuffer(chararraybuffer, j);
                }
                int l = (j + 1) - bufferpos;
                linebuffer.append(buffer, bufferpos, l);
                bufferpos = j + 1;
                flag = false;
            } else
            {
                if (hasBufferedData())
                {
                    int k = bufferlen - bufferpos;
                    linebuffer.append(buffer, bufferpos, k);
                    bufferpos = bufferlen;
                }
                i = fillBuffer();
                if (i == -1)
                {
                    flag = false;
                }
            }
            if (maxLineLen > 0 && linebuffer.length() >= maxLineLen)
            {
                throw new IOException("Maximum line length limit exceeded");
            }
        }
        if (i == -1 && linebuffer.isEmpty())
        {
            return -1;
        } else
        {
            return lineFromLineBuffer(chararraybuffer);
        }
    }

    public String readLine()
    {
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(64);
        if (readLine(chararraybuffer) != -1)
        {
            return chararraybuffer.toString();
        } else
        {
            return null;
        }
    }
}
