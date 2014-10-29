// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.StatusLine;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpContext

public class ResponseConnControl
    implements HttpResponseInterceptor
{

    public ResponseConnControl()
    {
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i == 400 || i == 408 || i == 411 || i == 413 || i == 414 || i == 503 || i == 501)
        {
            httpresponse.setHeader("Connection", "Close");
        } else
        {
            HttpEntity httpentity = httpresponse.getEntity();
            if (httpentity != null)
            {
                ProtocolVersion protocolversion = httpresponse.getStatusLine().getProtocolVersion();
                if (httpentity.getContentLength() < 0L && (!httpentity.isChunked() || protocolversion.lessEquals(HttpVersion.HTTP_1_0)))
                {
                    httpresponse.setHeader("Connection", "Close");
                    return;
                }
            }
            HttpRequest httprequest = (HttpRequest)httpcontext.getAttribute("http.request");
            if (httprequest != null)
            {
                Header header = httprequest.getFirstHeader("Connection");
                if (header != null)
                {
                    httpresponse.setHeader("Connection", header.getValue());
                    return;
                }
                if (httprequest.getProtocolVersion().lessEquals(HttpVersion.HTTP_1_0))
                {
                    httpresponse.setHeader("Connection", "Close");
                    return;
                }
            }
        }
    }
}
