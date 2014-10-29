// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheStorage;
import ch.boye.httpclientandroidlib.impl.cookie.DateParseException;
import ch.boye.httpclientandroidlib.impl.cookie.DateUtils;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            CacheKeyGenerator

class CacheInvalidator
{

    private final CacheKeyGenerator cacheKeyGenerator;
    public HttpClientAndroidLog log;
    private final HttpCacheStorage storage;

    public CacheInvalidator(CacheKeyGenerator cachekeygenerator, HttpCacheStorage httpcachestorage)
    {
        log = new HttpClientAndroidLog(getClass());
        cacheKeyGenerator = cachekeygenerator;
        storage = httpcachestorage;
    }

    private void flushEntry(String s)
    {
        try
        {
            storage.removeEntry(s);
            return;
        }
        catch (IOException ioexception)
        {
            log.warn("unable to flush cache entry", ioexception);
        }
    }

    private URL getAbsoluteURL(String s)
    {
        URL url;
        try
        {
            url = new URL(s);
        }
        catch (MalformedURLException malformedurlexception)
        {
            return null;
        }
        return url;
    }

    private URL getContentLocationURL(URL url, HttpResponse httpresponse)
    {
        Header header = httpresponse.getFirstHeader("Content-Location");
        URL url1;
        if (header == null)
        {
            url1 = null;
        } else
        {
            String s = header.getValue();
            url1 = getAbsoluteURL(s);
            if (url1 == null)
            {
                return getRelativeURL(url, s);
            }
        }
        return url1;
    }

    private HttpCacheEntry getEntry(String s)
    {
        HttpCacheEntry httpcacheentry;
        try
        {
            httpcacheentry = storage.getEntry(s);
        }
        catch (IOException ioexception)
        {
            log.warn("could not retrieve entry from storage", ioexception);
            return null;
        }
        return httpcacheentry;
    }

    private URL getRelativeURL(URL url, String s)
    {
        URL url1;
        try
        {
            url1 = new URL(url, s);
        }
        catch (MalformedURLException malformedurlexception)
        {
            return null;
        }
        return url1;
    }

    private boolean notGetOrHeadRequest(String s)
    {
        return !"GET".equals(s) && !"HEAD".equals(s);
    }

    private boolean responseAndEntryEtagsDiffer(HttpResponse httpresponse, HttpCacheEntry httpcacheentry)
    {
        Header header = httpcacheentry.getFirstHeader("ETag");
        for (Header header1 = httpresponse.getFirstHeader("ETag"); header == null || header1 == null || header.getValue().equals(header1.getValue());)
        {
            return false;
        }

        return true;
    }

    private boolean responseDateNewerThanEntryDate(HttpResponse httpresponse, HttpCacheEntry httpcacheentry)
    {
        Header header = httpcacheentry.getFirstHeader("Date");
        Header header1 = httpresponse.getFirstHeader("Date");
        if (header == null || header1 == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            Date date = DateUtils.parseDate(header.getValue());
            flag = DateUtils.parseDate(header1.getValue()).after(date);
        }
        catch (DateParseException dateparseexception)
        {
            return false;
        }
        return flag;
    }

    protected boolean flushAbsoluteUriFromSameHost(URL url, String s)
    {
        URL url1 = getAbsoluteURL(s);
        if (url1 == null)
        {
            return false;
        } else
        {
            flushUriIfSameHost(url, url1);
            return true;
        }
    }

    public void flushInvalidatedCacheEntries(HttpHost httphost, HttpRequest httprequest)
    {
        if (requestShouldNotBeCached(httprequest))
        {
            log.debug("Request should not be cached");
            String s = cacheKeyGenerator.getURI(httphost, httprequest);
            HttpCacheEntry httpcacheentry = getEntry(s);
            log.debug((new StringBuilder("parent entry: ")).append(httpcacheentry).toString());
            if (httpcacheentry != null)
            {
                for (Iterator iterator = httpcacheentry.getVariantMap().values().iterator(); iterator.hasNext(); flushEntry((String)iterator.next())) { }
                flushEntry(s);
            }
            URL url = getAbsoluteURL(s);
            if (url == null)
            {
                log.error("Couldn't transform request into valid URL");
            } else
            {
                Header header = httprequest.getFirstHeader("Content-Location");
                if (header != null)
                {
                    String s1 = header.getValue();
                    if (!flushAbsoluteUriFromSameHost(url, s1))
                    {
                        flushRelativeUriFromSameHost(url, s1);
                    }
                }
                Header header1 = httprequest.getFirstHeader("Location");
                if (header1 != null)
                {
                    flushAbsoluteUriFromSameHost(url, header1.getValue());
                    return;
                }
            }
        }
    }

    public void flushInvalidatedCacheEntries(HttpHost httphost, HttpRequest httprequest, HttpResponse httpresponse)
    {
        int i = httpresponse.getStatusLine().getStatusCode();
        URL url;
        URL url1;
        HttpCacheEntry httpcacheentry;
        if (i >= 200 && i <= 299)
        {
            if ((url = getAbsoluteURL(cacheKeyGenerator.getURI(httphost, httprequest))) != null && (url1 = getContentLocationURL(url, httpresponse)) != null && ((httpcacheentry = getEntry(cacheKeyGenerator.canonicalizeUri(url1.toString()))) != null && responseDateNewerThanEntryDate(httpresponse, httpcacheentry) && responseAndEntryEtagsDiffer(httpresponse, httpcacheentry)))
            {
                flushUriIfSameHost(url, url1);
                return;
            }
        }
    }

    protected void flushRelativeUriFromSameHost(URL url, String s)
    {
        URL url1 = getRelativeURL(url, s);
        if (url1 == null)
        {
            return;
        } else
        {
            flushUriIfSameHost(url, url1);
            return;
        }
    }

    protected void flushUriIfSameHost(URL url, URL url1)
    {
        URL url2;
        for (url2 = getAbsoluteURL(cacheKeyGenerator.canonicalizeUri(url1.toString())); url2 == null || !url2.getAuthority().equalsIgnoreCase(url.getAuthority());)
        {
            return;
        }

        flushEntry(url2.toString());
    }

    protected boolean requestShouldNotBeCached(HttpRequest httprequest)
    {
        return notGetOrHeadRequest(httprequest.getRequestLine().getMethod());
    }
}
