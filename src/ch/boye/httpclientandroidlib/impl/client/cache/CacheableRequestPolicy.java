// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;

class CacheableRequestPolicy
{

    public HttpClientAndroidLog log;

    CacheableRequestPolicy()
    {
        log = new HttpClientAndroidLog(getClass());
    }

    public boolean isServableFromCache(HttpRequest httprequest)
    {
        String s = httprequest.getRequestLine().getMethod();
        ch.boye.httpclientandroidlib.ProtocolVersion protocolversion = httprequest.getRequestLine().getProtocolVersion();
        if (HttpVersion.HTTP_1_1.compareToVersion(protocolversion) != 0)
        {
            log.trace("non-HTTP/1.1 request was not serveable from cache");
            return false;
        }
        if (!s.equals("GET"))
        {
            log.trace("non-GET request was not serveable from cache");
            return false;
        }
        if (httprequest.getHeaders("Pragma").length > 0)
        {
            log.trace("request with Pragma header was not serveable from cache");
            return false;
        }
        Header aheader[] = httprequest.getHeaders("Cache-Control");
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            HeaderElement aheaderelement[] = aheader[j].getElements();
            int k = aheaderelement.length;
            for (int l = 0; l < k; l++)
            {
                HeaderElement headerelement = aheaderelement[l];
                if ("no-store".equalsIgnoreCase(headerelement.getName()))
                {
                    log.trace("Request with no-store was not serveable from cache");
                    return false;
                }
                if ("no-cache".equalsIgnoreCase(headerelement.getName()))
                {
                    log.trace("Request with no-cache was not serveable from cache");
                    return false;
                }
            }

        }

        log.trace("Request was serveable from cache");
        return true;
    }
}
