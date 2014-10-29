// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpContext

public class RequestContent
    implements HttpRequestInterceptor
{

    public RequestContent()
    {
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httprequest instanceof HttpEntityEnclosingRequest)
        {
            if (httprequest.containsHeader("Transfer-Encoding"))
            {
                throw new ProtocolException("Transfer-encoding header already present");
            }
            if (httprequest.containsHeader("Content-Length"))
            {
                throw new ProtocolException("Content-Length header already present");
            }
            ProtocolVersion protocolversion = httprequest.getRequestLine().getProtocolVersion();
            HttpEntity httpentity = ((HttpEntityEnclosingRequest)httprequest).getEntity();
            if (httpentity == null)
            {
                httprequest.addHeader("Content-Length", "0");
            } else
            {
                if (httpentity.isChunked() || httpentity.getContentLength() < 0L)
                {
                    if (protocolversion.lessEquals(HttpVersion.HTTP_1_0))
                    {
                        throw new ProtocolException((new StringBuilder("Chunked transfer encoding not allowed for ")).append(protocolversion).toString());
                    }
                    httprequest.addHeader("Transfer-Encoding", "chunked");
                } else
                {
                    httprequest.addHeader("Content-Length", Long.toString(httpentity.getContentLength()));
                }
                if (httpentity.getContentType() != null && !httprequest.containsHeader("Content-Type"))
                {
                    httprequest.addHeader(httpentity.getContentType());
                }
                if (httpentity.getContentEncoding() != null && !httprequest.containsHeader("Content-Encoding"))
                {
                    httprequest.addHeader(httpentity.getContentEncoding());
                    return;
                }
            }
        }
    }
}
