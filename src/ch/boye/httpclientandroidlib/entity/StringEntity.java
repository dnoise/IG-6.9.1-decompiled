// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.entity;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.entity:
//            AbstractHttpEntity

public class StringEntity extends AbstractHttpEntity
    implements Cloneable
{

    protected final byte content[];

    public StringEntity(String s)
    {
        this(s, null);
    }

    public StringEntity(String s, String s1)
    {
        this(s, null, s1);
    }

    public StringEntity(String s, String s1, String s2)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Source string may not be null");
        }
        if (s1 == null)
        {
            s1 = "text/plain";
        }
        if (s2 == null)
        {
            s2 = "ISO-8859-1";
        }
        content = s.getBytes(s2);
        setContentType((new StringBuilder()).append(s1).append("; charset=").append(s2).toString());
    }

    public Object clone()
    {
        return super.clone();
    }

    public InputStream getContent()
    {
        return new ByteArrayInputStream(content);
    }

    public long getContentLength()
    {
        return (long)content.length;
    }

    public boolean isRepeatable()
    {
        return true;
    }

    public boolean isStreaming()
    {
        return false;
    }

    public void writeTo(OutputStream outputstream)
    {
        if (outputstream == null)
        {
            throw new IllegalArgumentException("Output stream may not be null");
        } else
        {
            outputstream.write(content);
            outputstream.flush();
            return;
        }
    }
}
