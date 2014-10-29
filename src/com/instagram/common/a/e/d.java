// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.e;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.client.entity.GzipDecompressingEntity;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public final class d
    implements HttpResponseInterceptor
{

    public d()
    {
    }

    public final void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        HttpEntity httpentity = httpresponse.getEntity();
        if (httpresponse.getStatusLine().getStatusCode() != 204) goto _L2; else goto _L1
_L1:
        Header header;
        return;
_L2:
        if ((header = httpentity.getContentEncoding()) != null)
        {
            HeaderElement aheaderelement[] = header.getElements();
            int i = aheaderelement.length;
            int j = 0;
            while (j < i) 
            {
                if (aheaderelement[j].getName().equalsIgnoreCase("gzip"))
                {
                    httpresponse.setEntity(new GzipDecompressingEntity(httpresponse.getEntity()));
                    return;
                }
                j++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
