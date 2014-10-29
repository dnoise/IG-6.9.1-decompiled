// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.params.HttpProtocolParams;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpContext

public class RequestExpectContinue
    implements HttpRequestInterceptor
{

    public RequestExpectContinue()
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
            HttpEntity httpentity = ((HttpEntityEnclosingRequest)httprequest).getEntity();
            if (httpentity != null && httpentity.getContentLength() != 0L)
            {
                ProtocolVersion protocolversion = httprequest.getRequestLine().getProtocolVersion();
                if (HttpProtocolParams.useExpectContinue(httprequest.getParams()) && !protocolversion.lessEquals(HttpVersion.HTTP_1_0))
                {
                    httprequest.addHeader("Expect", "100-continue");
                }
            }
        }
    }
}
