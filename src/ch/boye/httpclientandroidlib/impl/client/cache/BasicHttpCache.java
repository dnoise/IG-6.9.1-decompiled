// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheStorage;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheUpdateException;
import ch.boye.httpclientandroidlib.client.cache.Resource;
import ch.boye.httpclientandroidlib.client.cache.ResourceFactory;
import ch.boye.httpclientandroidlib.entity.ByteArrayEntity;
import ch.boye.httpclientandroidlib.message.BasicHttpResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            HttpCache, CacheConfig, CacheKeyGenerator, CacheEntryUpdater, 
//            CachedHttpResponseGenerator, CacheInvalidator, HeapResourceFactory, BasicHttpCacheStorage, 
//            Variant, SizeLimitedResponseReader

class BasicHttpCache
    implements HttpCache
{

    private final CacheEntryUpdater cacheEntryUpdater;
    private final CacheInvalidator cacheInvalidator;
    public HttpClientAndroidLog log;
    private final int maxObjectSizeBytes;
    private final ResourceFactory resourceFactory;
    private final CachedHttpResponseGenerator responseGenerator;
    private final HttpCacheStorage storage;
    private final CacheKeyGenerator uriExtractor;

    public BasicHttpCache()
    {
        this(new CacheConfig());
    }

    public BasicHttpCache(ResourceFactory resourcefactory, HttpCacheStorage httpcachestorage, CacheConfig cacheconfig)
    {
        log = new HttpClientAndroidLog(getClass());
        resourceFactory = resourcefactory;
        uriExtractor = new CacheKeyGenerator();
        cacheEntryUpdater = new CacheEntryUpdater(resourcefactory);
        maxObjectSizeBytes = cacheconfig.getMaxObjectSizeBytes();
        responseGenerator = new CachedHttpResponseGenerator();
        storage = httpcachestorage;
        cacheInvalidator = new CacheInvalidator(uriExtractor, storage);
    }

    public BasicHttpCache(CacheConfig cacheconfig)
    {
        this(((ResourceFactory) (new HeapResourceFactory())), ((HttpCacheStorage) (new BasicHttpCacheStorage(cacheconfig))), cacheconfig);
    }

    private void addVariantWithEtag(String s, String s1, Map map)
    {
        HttpCacheEntry httpcacheentry = storage.getEntry(s1);
        Header header;
        if (httpcacheentry != null)
        {
            if ((header = httpcacheentry.getFirstHeader("ETag")) != null)
            {
                map.put(header.getValue(), new Variant(s, s1, httpcacheentry));
                return;
            }
        }
    }

    public HttpResponse cacheAndReturnResponse(HttpHost httphost, HttpRequest httprequest, HttpResponse httpresponse, Date date, Date date1)
    {
        SizeLimitedResponseReader sizelimitedresponsereader = getResponseReader(httprequest, httpresponse);
        sizelimitedresponsereader.readResponse();
        if (sizelimitedresponsereader.isLimitReached())
        {
            return sizelimitedresponsereader.getReconstructedResponse();
        }
        Resource resource = sizelimitedresponsereader.getResource();
        if (isIncompleteResponse(httpresponse, resource))
        {
            return generateIncompleteResponseError(httpresponse, resource);
        } else
        {
            HttpCacheEntry httpcacheentry = new HttpCacheEntry(date, date1, httpresponse.getStatusLine(), httpresponse.getAllHeaders(), resource);
            storeInCache(httphost, httprequest, httpcacheentry);
            return responseGenerator.generateResponse(httpcacheentry);
        }
    }

    HttpCacheEntry doGetUpdatedParentEntry(String s, HttpCacheEntry httpcacheentry, HttpCacheEntry httpcacheentry1, String s1, String s2)
    {
        Resource resource;
        HashMap hashmap;
        if (httpcacheentry != null)
        {
            httpcacheentry1 = httpcacheentry;
        }
        resource = resourceFactory.copy(s, httpcacheentry1.getResource());
        hashmap = new HashMap(httpcacheentry1.getVariantMap());
        hashmap.put(s1, s2);
        return new HttpCacheEntry(httpcacheentry1.getRequestDate(), httpcacheentry1.getResponseDate(), httpcacheentry1.getStatusLine(), httpcacheentry1.getAllHeaders(), resource, hashmap);
    }

    public void flushCacheEntriesFor(HttpHost httphost, HttpRequest httprequest)
    {
        String s = uriExtractor.getURI(httphost, httprequest);
        storage.removeEntry(s);
    }

    public void flushInvalidatedCacheEntriesFor(HttpHost httphost, HttpRequest httprequest)
    {
        cacheInvalidator.flushInvalidatedCacheEntries(httphost, httprequest);
    }

    public void flushInvalidatedCacheEntriesFor(HttpHost httphost, HttpRequest httprequest, HttpResponse httpresponse)
    {
        cacheInvalidator.flushInvalidatedCacheEntries(httphost, httprequest, httpresponse);
    }

    HttpResponse generateIncompleteResponseError(HttpResponse httpresponse, Resource resource)
    {
        int i = Integer.parseInt(httpresponse.getFirstHeader("Content-Length").getValue());
        BasicHttpResponse basichttpresponse = new BasicHttpResponse(HttpVersion.HTTP_1_1, 502, "Bad Gateway");
        basichttpresponse.setHeader("Content-Type", "text/plain;charset=UTF-8");
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i);
        aobj[1] = Long.valueOf(resource.length());
        byte abyte0[] = String.format("Received incomplete response with Content-Length %d but actual body length %d", aobj).getBytes();
        basichttpresponse.setHeader("Content-Length", Integer.toString(abyte0.length));
        basichttpresponse.setEntity(new ByteArrayEntity(abyte0));
        return basichttpresponse;
    }

    public HttpCacheEntry getCacheEntry(HttpHost httphost, HttpRequest httprequest)
    {
        HttpCacheEntry httpcacheentry = storage.getEntry(uriExtractor.getURI(httphost, httprequest));
        if (httpcacheentry == null)
        {
            httpcacheentry = null;
        } else
        if (httpcacheentry.hasVariants())
        {
            String s = (String)httpcacheentry.getVariantMap().get(uriExtractor.getVariantKey(httprequest, httpcacheentry));
            if (s == null)
            {
                return null;
            } else
            {
                return storage.getEntry(s);
            }
        }
        return httpcacheentry;
    }

    SizeLimitedResponseReader getResponseReader(HttpRequest httprequest, HttpResponse httpresponse)
    {
        return new SizeLimitedResponseReader(resourceFactory, maxObjectSizeBytes, httprequest, httpresponse);
    }

    public Map getVariantCacheEntriesWithEtags(HttpHost httphost, HttpRequest httprequest)
    {
        HashMap hashmap = new HashMap();
        HttpCacheEntry httpcacheentry = storage.getEntry(uriExtractor.getURI(httphost, httprequest));
        if (httpcacheentry == null || !httpcacheentry.hasVariants())
        {
            return hashmap;
        }
        java.util.Map.Entry entry;
        for (Iterator iterator = httpcacheentry.getVariantMap().entrySet().iterator(); iterator.hasNext(); addVariantWithEtag((String)entry.getKey(), (String)entry.getValue(), hashmap))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return hashmap;
    }

    boolean isIncompleteResponse(HttpResponse httpresponse, Resource resource)
    {
        int i = httpresponse.getStatusLine().getStatusCode();
        Header header;
        if (i == 200 || i == 206)
        {
            if ((header = httpresponse.getFirstHeader("Content-Length")) != null)
            {
                int j;
                try
                {
                    j = Integer.parseInt(header.getValue());
                }
                catch (NumberFormatException numberformatexception)
                {
                    return false;
                }
                if (resource.length() < (long)j)
                {
                    return true;
                }
            }
        }
        return false;
    }

    public void reuseVariantEntryFor(HttpHost httphost, final HttpRequest req, Variant variant)
    {
        String s = uriExtractor.getURI(httphost, req);
        final HttpCacheEntry entry = variant.getEntry();
        _cls2 _lcls2 = new _cls2();
        try
        {
            storage.updateEntry(s, _lcls2);
            return;
        }
        catch (HttpCacheUpdateException httpcacheupdateexception)
        {
            log.warn((new StringBuilder("Could not update key [")).append(s).append("]").toString(), httpcacheupdateexception);
        }
    }

    void storeInCache(HttpHost httphost, HttpRequest httprequest, HttpCacheEntry httpcacheentry)
    {
        if (httpcacheentry.hasVariants())
        {
            storeVariantEntry(httphost, httprequest, httpcacheentry);
            return;
        } else
        {
            storeNonVariantEntry(httphost, httprequest, httpcacheentry);
            return;
        }
    }

    void storeNonVariantEntry(HttpHost httphost, HttpRequest httprequest, HttpCacheEntry httpcacheentry)
    {
        String s = uriExtractor.getURI(httphost, httprequest);
        storage.putEntry(s, httpcacheentry);
    }

    void storeVariantEntry(HttpHost httphost, final HttpRequest req, final HttpCacheEntry entry)
    {
        String s = uriExtractor.getURI(httphost, req);
        final String variantURI = uriExtractor.getVariantURI(httphost, req, entry);
        storage.putEntry(variantURI, entry);
        _cls1 _lcls1 = new _cls1();
        try
        {
            storage.updateEntry(s, _lcls1);
            return;
        }
        catch (HttpCacheUpdateException httpcacheupdateexception)
        {
            log.warn((new StringBuilder("Could not update key [")).append(s).append("]").toString(), httpcacheupdateexception);
        }
    }

    public HttpCacheEntry updateCacheEntry(HttpHost httphost, HttpRequest httprequest, HttpCacheEntry httpcacheentry, HttpResponse httpresponse, Date date, Date date1)
    {
        HttpCacheEntry httpcacheentry1 = cacheEntryUpdater.updateCacheEntry(httprequest.getRequestLine().getUri(), httpcacheentry, date, date1, httpresponse);
        storeInCache(httphost, httprequest, httpcacheentry1);
        return httpcacheentry1;
    }

    public HttpCacheEntry updateVariantCacheEntry(HttpHost httphost, HttpRequest httprequest, HttpCacheEntry httpcacheentry, HttpResponse httpresponse, Date date, Date date1, String s)
    {
        HttpCacheEntry httpcacheentry1 = cacheEntryUpdater.updateCacheEntry(httprequest.getRequestLine().getUri(), httpcacheentry, date, date1, httpresponse);
        storage.putEntry(s, httpcacheentry1);
        return httpcacheentry1;
    }


    private class _cls2
        implements HttpCacheUpdateCallback
    {

        final BasicHttpCache this$0;
        final HttpCacheEntry val$entry;
        final HttpRequest val$req;
        final String val$variantCacheKey;
        final String val$variantKey;

        public HttpCacheEntry update(HttpCacheEntry httpcacheentry)
        {
            return doGetUpdatedParentEntry(req.getRequestLine().getUri(), httpcacheentry, entry, variantKey, variantCacheKey);
        }

        _cls2()
        {
            this$0 = BasicHttpCache.this;
            req = httprequest;
            entry = httpcacheentry;
            variantKey = s;
            variantCacheKey = s1;
            super();
        }
    }


    private class _cls1
        implements HttpCacheUpdateCallback
    {

        final BasicHttpCache this$0;
        final HttpCacheEntry val$entry;
        final HttpRequest val$req;
        final String val$variantURI;

        public HttpCacheEntry update(HttpCacheEntry httpcacheentry)
        {
            return doGetUpdatedParentEntry(req.getRequestLine().getUri(), httpcacheentry, entry, uriExtractor.getVariantKey(req, entry), variantURI);
        }

        _cls1()
        {
            this$0 = BasicHttpCache.this;
            req = httprequest;
            entry = httpcacheentry;
            variantURI = s;
            super();
        }
    }

}
