// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.entity;

import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package ch.boye.httpclientandroidlib.entity:
//            AbstractHttpEntity, ContentProducer

public class EntityTemplate extends AbstractHttpEntity
{

    private final ContentProducer contentproducer;

    public EntityTemplate(ContentProducer contentproducer1)
    {
        if (contentproducer1 == null)
        {
            throw new IllegalArgumentException("Content producer may not be null");
        } else
        {
            contentproducer = contentproducer1;
            return;
        }
    }

    public InputStream getContent()
    {
        throw new UnsupportedOperationException("Entity template does not implement getContent()");
    }

    public long getContentLength()
    {
        return -1L;
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
            contentproducer.writeTo(outputstream);
            return;
        }
    }
}
