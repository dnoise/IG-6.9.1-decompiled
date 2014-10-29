// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.entity;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.entity.BasicHttpEntity;
import ch.boye.httpclientandroidlib.entity.ContentLengthStrategy;
import ch.boye.httpclientandroidlib.impl.io.ChunkedInputStream;
import ch.boye.httpclientandroidlib.impl.io.ContentLengthInputStream;
import ch.boye.httpclientandroidlib.impl.io.IdentityInputStream;
import ch.boye.httpclientandroidlib.io.SessionInputBuffer;

public class EntityDeserializer
{

    private final ContentLengthStrategy lenStrategy;

    public EntityDeserializer(ContentLengthStrategy contentlengthstrategy)
    {
        if (contentlengthstrategy == null)
        {
            throw new IllegalArgumentException("Content length strategy may not be null");
        } else
        {
            lenStrategy = contentlengthstrategy;
            return;
        }
    }

    public HttpEntity deserialize(SessionInputBuffer sessioninputbuffer, HttpMessage httpmessage)
    {
        if (sessioninputbuffer == null)
        {
            throw new IllegalArgumentException("Session input buffer may not be null");
        }
        if (httpmessage == null)
        {
            throw new IllegalArgumentException("HTTP message may not be null");
        } else
        {
            return doDeserialize(sessioninputbuffer, httpmessage);
        }
    }

    protected BasicHttpEntity doDeserialize(SessionInputBuffer sessioninputbuffer, HttpMessage httpmessage)
    {
        BasicHttpEntity basichttpentity = new BasicHttpEntity();
        long l = lenStrategy.determineLength(httpmessage);
        ch.boye.httpclientandroidlib.Header header;
        ch.boye.httpclientandroidlib.Header header1;
        if (l == -2L)
        {
            basichttpentity.setChunked(true);
            basichttpentity.setContentLength(-1L);
            basichttpentity.setContent(new ChunkedInputStream(sessioninputbuffer));
        } else
        if (l == -1L)
        {
            basichttpentity.setChunked(false);
            basichttpentity.setContentLength(-1L);
            basichttpentity.setContent(new IdentityInputStream(sessioninputbuffer));
        } else
        {
            basichttpentity.setChunked(false);
            basichttpentity.setContentLength(l);
            basichttpentity.setContent(new ContentLengthInputStream(sessioninputbuffer, l));
        }
        header = httpmessage.getFirstHeader("Content-Type");
        if (header != null)
        {
            basichttpentity.setContentType(header);
        }
        header1 = httpmessage.getFirstHeader("Content-Encoding");
        if (header1 != null)
        {
            basichttpentity.setContentEncoding(header1);
        }
        return basichttpentity;
    }
}
