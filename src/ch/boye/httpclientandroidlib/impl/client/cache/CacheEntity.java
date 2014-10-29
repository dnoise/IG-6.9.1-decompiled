// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.client.cache.Resource;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            IOUtils

class CacheEntity
    implements HttpEntity, Serializable
{

    private static final long serialVersionUID = 0xcfe273082febf0d7L;
    private final HttpCacheEntry cacheEntry;

    public CacheEntity(HttpCacheEntry httpcacheentry)
    {
        cacheEntry = httpcacheentry;
    }

    public Object clone()
    {
        return super.clone();
    }

    public void consumeContent()
    {
    }

    public InputStream getContent()
    {
        return cacheEntry.getResource().getInputStream();
    }

    public Header getContentEncoding()
    {
        return cacheEntry.getFirstHeader("Content-Encoding");
    }

    public long getContentLength()
    {
        return cacheEntry.getResource().length();
    }

    public Header getContentType()
    {
        return cacheEntry.getFirstHeader("Content-Type");
    }

    public boolean isChunked()
    {
        return false;
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
        InputStream inputstream;
        if (outputstream == null)
        {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        inputstream = cacheEntry.getResource().getInputStream();
        IOUtils.copy(inputstream, outputstream);
        inputstream.close();
        return;
        Exception exception;
        exception;
        inputstream.close();
        throw exception;
    }
}
