// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.protocol;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpException;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import ch.boye.httpclientandroidlib.client.entity.DeflateDecompressingEntity;
import ch.boye.httpclientandroidlib.client.entity.GzipDecompressingEntity;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.util.Locale;

public class ResponseContentEncoding
    implements HttpResponseInterceptor
{

    public ResponseContentEncoding()
    {
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity != null)
        {
            Header header = httpentity.getContentEncoding();
            if (header != null)
            {
                HeaderElement aheaderelement[] = header.getElements();
                if (aheaderelement.length > 0)
                {
                    HeaderElement headerelement = aheaderelement[0];
                    String s = headerelement.getName().toLowerCase(Locale.US);
                    if ("gzip".equals(s) || "x-gzip".equals(s))
                    {
                        httpresponse.setEntity(new GzipDecompressingEntity(httpresponse.getEntity()));
                    } else
                    {
                        if ("deflate".equals(s))
                        {
                            httpresponse.setEntity(new DeflateDecompressingEntity(httpresponse.getEntity()));
                            return;
                        }
                        if (!"identity".equals(s))
                        {
                            throw new HttpException((new StringBuilder("Unsupported Content-Coding: ")).append(headerelement.getName()).toString());
                        }
                    }
                }
            }
        }
    }
}
