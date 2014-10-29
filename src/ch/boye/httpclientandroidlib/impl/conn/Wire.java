// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.conn;

import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class Wire
{

    public HttpClientAndroidLog log;

    public Wire(HttpClientAndroidLog httpclientandroidlog)
    {
        log = httpclientandroidlog;
    }

    private void wire(String s, InputStream inputstream)
    {
        StringBuilder stringbuilder = new StringBuilder();
        do
        {
            int i = inputstream.read();
            if (i == -1)
            {
                break;
            }
            if (i == 13)
            {
                stringbuilder.append("[\\r]");
            } else
            if (i == 10)
            {
                stringbuilder.append("[\\n]\"");
                stringbuilder.insert(0, "\"");
                stringbuilder.insert(0, s);
                log.debug(stringbuilder.toString());
                stringbuilder.setLength(0);
            } else
            if (i < 32 || i > 127)
            {
                stringbuilder.append("[0x");
                stringbuilder.append(Integer.toHexString(i));
                stringbuilder.append("]");
            } else
            {
                stringbuilder.append((char)i);
            }
        } while (true);
        if (stringbuilder.length() > 0)
        {
            stringbuilder.append('"');
            stringbuilder.insert(0, '"');
            stringbuilder.insert(0, s);
            log.debug(stringbuilder.toString());
        }
    }

    public boolean enabled()
    {
        return log.isDebugEnabled();
    }

    public void input(int i)
    {
        byte abyte0[] = new byte[1];
        abyte0[0] = (byte)i;
        input(abyte0);
    }

    public void input(InputStream inputstream)
    {
        if (inputstream == null)
        {
            throw new IllegalArgumentException("Input may not be null");
        } else
        {
            wire("<< ", inputstream);
            return;
        }
    }

    public void input(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Input may not be null");
        } else
        {
            input(s.getBytes());
            return;
        }
    }

    public void input(byte abyte0[])
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Input may not be null");
        } else
        {
            wire("<< ", new ByteArrayInputStream(abyte0));
            return;
        }
    }

    public void input(byte abyte0[], int i, int j)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Input may not be null");
        } else
        {
            wire("<< ", new ByteArrayInputStream(abyte0, i, j));
            return;
        }
    }

    public void output(int i)
    {
        byte abyte0[] = new byte[1];
        abyte0[0] = (byte)i;
        output(abyte0);
    }

    public void output(InputStream inputstream)
    {
        if (inputstream == null)
        {
            throw new IllegalArgumentException("Output may not be null");
        } else
        {
            wire(">> ", inputstream);
            return;
        }
    }

    public void output(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Output may not be null");
        } else
        {
            output(s.getBytes());
            return;
        }
    }

    public void output(byte abyte0[])
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Output may not be null");
        } else
        {
            wire(">> ", new ByteArrayInputStream(abyte0));
            return;
        }
    }

    public void output(byte abyte0[], int i, int j)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Output may not be null");
        } else
        {
            wire(">> ", new ByteArrayInputStream(abyte0, i, j));
            return;
        }
    }
}
