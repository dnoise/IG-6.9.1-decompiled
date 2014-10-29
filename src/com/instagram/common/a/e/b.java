// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.e;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.client.methods.HttpUriRequest;
import ch.boye.httpclientandroidlib.impl.client.RequestWrapper;
import ch.boye.httpclientandroidlib.message.BasicHttpRequest;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.io.ByteArrayOutputStream;

public final class b
    implements HttpRequestInterceptor
{

    public b()
    {
    }

    private static String a(HttpUriRequest httpurirequest)
    {
        StringBuilder stringbuilder;
        java.net.URI uri;
        stringbuilder = new StringBuilder();
        stringbuilder.append("curl ");
        stringbuilder.append("-X ").append(httpurirequest.getMethod()).append(" ");
        ch.boye.httpclientandroidlib.Header aheader[] = httpurirequest.getAllHeaders();
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            ch.boye.httpclientandroidlib.Header header = aheader[j];
            stringbuilder.append("--header \"");
            stringbuilder.append(header.toString().replace("\"", "\\\"").trim());
            stringbuilder.append("\" ");
        }

        uri = httpurirequest.getURI();
        if (!(httpurirequest instanceof RequestWrapper)) goto _L2; else goto _L1
_L1:
        HttpRequest httprequest = ((RequestWrapper)httpurirequest).getOriginal();
        if (!(httprequest instanceof HttpUriRequest)) goto _L2; else goto _L3
_L3:
        java.net.URI uri1 = ((HttpUriRequest)httprequest).getURI();
_L5:
        stringbuilder.append("\"");
        stringbuilder.append(uri1);
        stringbuilder.append("\"");
        if (httpurirequest instanceof HttpEntityEnclosingRequest)
        {
            HttpEntity httpentity = ((HttpEntityEnclosingRequest)httpurirequest).getEntity();
            if (httpentity != null && httpentity.isRepeatable())
            {
                if (httpentity.getContentLength() < 1024L)
                {
                    ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                    httpentity.writeTo(bytearrayoutputstream);
                    String s = bytearrayoutputstream.toString();
                    stringbuilder.append(" --data-ascii \"").append(s).append("\"");
                } else
                {
                    stringbuilder.append(" [TOO MUCH DATA TO INCLUDE]");
                }
            }
        }
        return stringbuilder.toString();
_L2:
        uri1 = uri;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (!(httprequest instanceof BasicHttpRequest))
        {
            a((HttpUriRequest)httprequest);
        }
    }
}
