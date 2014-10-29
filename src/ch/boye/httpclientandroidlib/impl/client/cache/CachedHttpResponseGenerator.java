// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.impl.cookie.DateUtils;
import ch.boye.httpclientandroidlib.message.BasicHeader;
import ch.boye.httpclientandroidlib.message.BasicHttpResponse;
import java.util.Date;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            CacheValidityPolicy, CacheEntity

class CachedHttpResponseGenerator
{

    private final CacheValidityPolicy validityStrategy;

    CachedHttpResponseGenerator()
    {
        this(new CacheValidityPolicy());
    }

    CachedHttpResponseGenerator(CacheValidityPolicy cachevaliditypolicy)
    {
        validityStrategy = cachevaliditypolicy;
    }

    private void addMissingContentLengthHeader(HttpResponse httpresponse, HttpEntity httpentity)
    {
        while (transferEncodingIsPresent(httpresponse) || httpresponse.getFirstHeader("Content-Length") != null) 
        {
            return;
        }
        httpresponse.setHeader(new BasicHeader("Content-Length", Long.toString(httpentity.getContentLength())));
    }

    private boolean transferEncodingIsPresent(HttpResponse httpresponse)
    {
        return httpresponse.getFirstHeader("Transfer-Encoding") != null;
    }

    HttpResponse generateNotModifiedResponse(HttpCacheEntry httpcacheentry)
    {
        BasicHttpResponse basichttpresponse = new BasicHttpResponse(HttpVersion.HTTP_1_1, 304, "Not Modified");
        Object obj = httpcacheentry.getFirstHeader("Date");
        if (obj == null)
        {
            obj = new BasicHeader("Date", DateUtils.formatDate(new Date()));
        }
        basichttpresponse.addHeader(((ch.boye.httpclientandroidlib.Header) (obj)));
        ch.boye.httpclientandroidlib.Header header = httpcacheentry.getFirstHeader("ETag");
        if (header != null)
        {
            basichttpresponse.addHeader(header);
        }
        ch.boye.httpclientandroidlib.Header header1 = httpcacheentry.getFirstHeader("Content-Location");
        if (header1 != null)
        {
            basichttpresponse.addHeader(header1);
        }
        ch.boye.httpclientandroidlib.Header header2 = httpcacheentry.getFirstHeader("Expires");
        if (header2 != null)
        {
            basichttpresponse.addHeader(header2);
        }
        ch.boye.httpclientandroidlib.Header header3 = httpcacheentry.getFirstHeader("Cache-Control");
        if (header3 != null)
        {
            basichttpresponse.addHeader(header3);
        }
        ch.boye.httpclientandroidlib.Header header4 = httpcacheentry.getFirstHeader("Vary");
        if (header4 != null)
        {
            basichttpresponse.addHeader(header4);
        }
        return basichttpresponse;
    }

    HttpResponse generateResponse(HttpCacheEntry httpcacheentry)
    {
        BasicHttpResponse basichttpresponse;
        long l;
label0:
        {
            Date date = new Date();
            basichttpresponse = new BasicHttpResponse(HttpVersion.HTTP_1_1, httpcacheentry.getStatusCode(), httpcacheentry.getReasonPhrase());
            CacheEntity cacheentity = new CacheEntity(httpcacheentry);
            basichttpresponse.setHeaders(httpcacheentry.getAllHeaders());
            addMissingContentLengthHeader(basichttpresponse, cacheentity);
            basichttpresponse.setEntity(cacheentity);
            l = validityStrategy.getCurrentAgeSecs(httpcacheentry, date);
            if (l > 0L)
            {
                if (l < 0x7fffffffL)
                {
                    break label0;
                }
                basichttpresponse.setHeader("Age", "2147483648");
            }
            return basichttpresponse;
        }
        basichttpresponse.setHeader("Age", (new StringBuilder()).append((int)l).toString());
        return basichttpresponse;
    }
}
