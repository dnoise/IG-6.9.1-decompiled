// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.StatusLine;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpContext

public class ResponseContent
    implements HttpResponseInterceptor
{

    public ResponseContent()
    {
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        ProtocolVersion protocolversion;
        HttpEntity httpentity;
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        if (httpresponse.containsHeader("Transfer-Encoding"))
        {
            throw new ProtocolException("Transfer-encoding header already present");
        }
        if (httpresponse.containsHeader("Content-Length"))
        {
            throw new ProtocolException("Content-Length header already present");
        }
        protocolversion = httpresponse.getStatusLine().getProtocolVersion();
        httpentity = httpresponse.getEntity();
        if (httpentity == null) goto _L2; else goto _L1
_L1:
        long l = httpentity.getContentLength();
        if (!httpentity.isChunked() || protocolversion.lessEquals(HttpVersion.HTTP_1_0)) goto _L4; else goto _L3
_L3:
        httpresponse.addHeader("Transfer-Encoding", "chunked");
_L8:
        if (httpentity.getContentType() != null && !httpresponse.containsHeader("Content-Type"))
        {
            httpresponse.addHeader(httpentity.getContentType());
        }
        if (httpentity.getContentEncoding() != null && !httpresponse.containsHeader("Content-Encoding"))
        {
            httpresponse.addHeader(httpentity.getContentEncoding());
        }
_L6:
        return;
_L4:
        if (l >= 0L)
        {
            httpresponse.addHeader("Content-Length", Long.toString(httpentity.getContentLength()));
        }
        continue; /* Loop/switch isn't completed */
_L2:
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i == 204 || i == 304 || i == 205) goto _L6; else goto _L5
_L5:
        httpresponse.addHeader("Content-Length", "0");
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
