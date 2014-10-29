// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.ClientProtocolException;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.ResponseHandler;
import ch.boye.httpclientandroidlib.client.cache.CacheResponseStatus;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheStorage;
import ch.boye.httpclientandroidlib.client.cache.ResourceFactory;
import ch.boye.httpclientandroidlib.client.methods.HttpUriRequest;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.impl.client.DefaultHttpClient;
import ch.boye.httpclientandroidlib.impl.cookie.DateParseException;
import ch.boye.httpclientandroidlib.impl.cookie.DateUtils;
import ch.boye.httpclientandroidlib.message.BasicHttpResponse;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import ch.boye.httpclientandroidlib.util.VersionInfo;
import java.io.IOException;
import java.net.URI;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            BasicHttpCache, CacheConfig, HeapResourceFactory, CacheValidityPolicy, 
//            ResponseCachingPolicy, CachedHttpResponseGenerator, CacheableRequestPolicy, CachedResponseSuitabilityChecker, 
//            ConditionalRequestBuilder, ResponseProtocolCompliance, RequestProtocolCompliance, HttpCache, 
//            RequestProtocolError, Variant, AsynchronousValidator, OptionsHttp11Response

public class CachingHttpClient
    implements HttpClient
{

    public static final String CACHE_RESPONSE_STATUS = "http.cache.response.status";
    private static final boolean SUPPORTS_RANGE_AND_CONTENT_RANGE_HEADERS;
    private final AsynchronousValidator asynchRevalidator;
    private final HttpClient backend;
    private final AtomicLong cacheHits;
    private final AtomicLong cacheMisses;
    private final AtomicLong cacheUpdates;
    private final CacheableRequestPolicy cacheableRequestPolicy;
    private final ConditionalRequestBuilder conditionalRequestBuilder;
    public HttpClientAndroidLog log;
    private final int maxObjectSizeBytes;
    private final RequestProtocolCompliance requestCompliance;
    private final HttpCache responseCache;
    private final ResponseCachingPolicy responseCachingPolicy;
    private final ResponseProtocolCompliance responseCompliance;
    private final CachedHttpResponseGenerator responseGenerator;
    private final boolean sharedCache;
    private final CachedResponseSuitabilityChecker suitabilityChecker;
    private final CacheValidityPolicy validityPolicy;

    public CachingHttpClient()
    {
        this(((HttpClient) (new DefaultHttpClient())), ((HttpCache) (new BasicHttpCache())), new CacheConfig());
    }

    public CachingHttpClient(HttpClient httpclient)
    {
        this(httpclient, ((HttpCache) (new BasicHttpCache())), new CacheConfig());
    }

    public CachingHttpClient(HttpClient httpclient, HttpCacheStorage httpcachestorage, CacheConfig cacheconfig)
    {
        this(httpclient, ((HttpCache) (new BasicHttpCache(new HeapResourceFactory(), httpcachestorage, cacheconfig))), cacheconfig);
    }

    public CachingHttpClient(HttpClient httpclient, ResourceFactory resourcefactory, HttpCacheStorage httpcachestorage, CacheConfig cacheconfig)
    {
        this(httpclient, ((HttpCache) (new BasicHttpCache(resourcefactory, httpcachestorage, cacheconfig))), cacheconfig);
    }

    public CachingHttpClient(HttpClient httpclient, CacheConfig cacheconfig)
    {
        this(httpclient, ((HttpCache) (new BasicHttpCache(cacheconfig))), cacheconfig);
    }

    CachingHttpClient(HttpClient httpclient, CacheValidityPolicy cachevaliditypolicy, ResponseCachingPolicy responsecachingpolicy, HttpCache httpcache, CachedHttpResponseGenerator cachedhttpresponsegenerator, CacheableRequestPolicy cacheablerequestpolicy, CachedResponseSuitabilityChecker cachedresponsesuitabilitychecker, 
            ConditionalRequestBuilder conditionalrequestbuilder, ResponseProtocolCompliance responseprotocolcompliance, RequestProtocolCompliance requestprotocolcompliance)
    {
        cacheHits = new AtomicLong();
        cacheMisses = new AtomicLong();
        cacheUpdates = new AtomicLong();
        log = new HttpClientAndroidLog(getClass());
        CacheConfig cacheconfig = new CacheConfig();
        maxObjectSizeBytes = cacheconfig.getMaxObjectSizeBytes();
        sharedCache = cacheconfig.isSharedCache();
        backend = httpclient;
        validityPolicy = cachevaliditypolicy;
        responseCachingPolicy = responsecachingpolicy;
        responseCache = httpcache;
        responseGenerator = cachedhttpresponsegenerator;
        cacheableRequestPolicy = cacheablerequestpolicy;
        suitabilityChecker = cachedresponsesuitabilitychecker;
        conditionalRequestBuilder = conditionalrequestbuilder;
        responseCompliance = responseprotocolcompliance;
        requestCompliance = requestprotocolcompliance;
        asynchRevalidator = makeAsynchronousValidator(cacheconfig);
    }

    CachingHttpClient(HttpClient httpclient, HttpCache httpcache, CacheConfig cacheconfig)
    {
        cacheHits = new AtomicLong();
        cacheMisses = new AtomicLong();
        cacheUpdates = new AtomicLong();
        log = new HttpClientAndroidLog(getClass());
        if (httpclient == null)
        {
            throw new IllegalArgumentException("HttpClient may not be null");
        }
        if (httpcache == null)
        {
            throw new IllegalArgumentException("HttpCache may not be null");
        }
        if (cacheconfig == null)
        {
            throw new IllegalArgumentException("CacheConfig may not be null");
        } else
        {
            maxObjectSizeBytes = cacheconfig.getMaxObjectSizeBytes();
            sharedCache = cacheconfig.isSharedCache();
            backend = httpclient;
            responseCache = httpcache;
            validityPolicy = new CacheValidityPolicy();
            responseCachingPolicy = new ResponseCachingPolicy(maxObjectSizeBytes, sharedCache);
            responseGenerator = new CachedHttpResponseGenerator(validityPolicy);
            cacheableRequestPolicy = new CacheableRequestPolicy();
            suitabilityChecker = new CachedResponseSuitabilityChecker(validityPolicy, cacheconfig);
            conditionalRequestBuilder = new ConditionalRequestBuilder();
            responseCompliance = new ResponseProtocolCompliance();
            requestCompliance = new RequestProtocolCompliance();
            asynchRevalidator = makeAsynchronousValidator(cacheconfig);
            return;
        }
    }

    public CachingHttpClient(CacheConfig cacheconfig)
    {
        this(((HttpClient) (new DefaultHttpClient())), ((HttpCache) (new BasicHttpCache(cacheconfig))), cacheconfig);
    }

    private boolean alreadyHaveNewerCacheEntry(HttpHost httphost, HttpRequest httprequest, HttpResponse httpresponse)
    {
        HttpCacheEntry httpcacheentry1 = responseCache.getCacheEntry(httphost, httprequest);
        HttpCacheEntry httpcacheentry = httpcacheentry1;
_L5:
        if (httpcacheentry != null) goto _L2; else goto _L1
_L1:
        Header header;
        return false;
_L2:
        Header header1;
        if ((header = httpcacheentry.getFirstHeader("Date")) == null || (header1 = httpresponse.getFirstHeader("Date")) == null) goto _L1; else goto _L3
_L3:
        boolean flag;
        try
        {
            Date date = DateUtils.parseDate(header.getValue());
            flag = DateUtils.parseDate(header1.getValue()).before(date);
        }
        catch (DateParseException dateparseexception)
        {
            return false;
        }
        return flag;
        IOException ioexception;
        ioexception;
        httpcacheentry = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean explicitFreshnessRequest(HttpRequest httprequest, HttpCacheEntry httpcacheentry, Date date)
    {
        Header aheader[] = httprequest.getHeaders("Cache-Control");
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            HeaderElement aheaderelement[] = aheader[j].getElements();
            int k = aheaderelement.length;
            for (int l = 0; l < k; l++)
            {
                HeaderElement headerelement = aheaderelement[l];
                if ("max-stale".equals(headerelement.getName()))
                {
                    int i1;
                    long l1;
                    long l2;
                    try
                    {
                        i1 = Integer.parseInt(headerelement.getValue());
                        l1 = validityPolicy.getCurrentAgeSecs(httpcacheentry, date);
                        l2 = validityPolicy.getFreshnessLifetimeSecs(httpcacheentry);
                    }
                    catch (NumberFormatException numberformatexception)
                    {
                        return true;
                    }
                    if (l1 - l2 > (long)i1)
                    {
                        return true;
                    }
                    continue;
                }
                if ("min-fresh".equals(headerelement.getName()) || "max-age".equals(headerelement.getName()))
                {
                    return true;
                }
            }

        }

        return false;
    }

    private void flushEntriesInvalidatedByRequest(HttpHost httphost, HttpRequest httprequest)
    {
        try
        {
            responseCache.flushInvalidatedCacheEntriesFor(httphost, httprequest);
            return;
        }
        catch (IOException ioexception)
        {
            log.warn("Unable to flush invalidated entries from cache", ioexception);
        }
    }

    private HttpResponse generateCachedResponse(HttpRequest httprequest, HttpContext httpcontext, HttpCacheEntry httpcacheentry, Date date)
    {
        HttpResponse httpresponse;
        if (httprequest.containsHeader("If-None-Match") || httprequest.containsHeader("If-Modified-Since"))
        {
            httpresponse = responseGenerator.generateNotModifiedResponse(httpcacheentry);
        } else
        {
            httpresponse = responseGenerator.generateResponse(httpcacheentry);
        }
        setResponseStatus(httpcontext, CacheResponseStatus.CACHE_HIT);
        if (validityPolicy.getStalenessSecs(httpcacheentry, date) > 0L)
        {
            httpresponse.addHeader("Warning", "110 localhost \"Response is stale\"");
        }
        return httpresponse;
    }

    private HttpResponse generateGatewayTimeout(HttpContext httpcontext)
    {
        setResponseStatus(httpcontext, CacheResponseStatus.CACHE_MODULE_RESPONSE);
        return new BasicHttpResponse(HttpVersion.HTTP_1_1, 504, "Gateway Timeout");
    }

    private String generateViaHeader(HttpMessage httpmessage)
    {
        VersionInfo versioninfo = VersionInfo.loadVersionInfo("ch.boye.httpclientandroidlib.client", getClass().getClassLoader());
        String s;
        ProtocolVersion protocolversion;
        if (versioninfo != null)
        {
            s = versioninfo.getRelease();
        } else
        {
            s = "UNAVAILABLE";
        }
        protocolversion = httpmessage.getProtocolVersion();
        if ("http".equalsIgnoreCase(protocolversion.getProtocol()))
        {
            Object aobj1[] = new Object[3];
            aobj1[0] = Integer.valueOf(protocolversion.getMajor());
            aobj1[1] = Integer.valueOf(protocolversion.getMinor());
            aobj1[2] = s;
            return String.format("%d.%d localhost (Apache-HttpClient/%s (cache))", aobj1);
        } else
        {
            Object aobj[] = new Object[4];
            aobj[0] = protocolversion.getProtocol();
            aobj[1] = Integer.valueOf(protocolversion.getMajor());
            aobj[2] = Integer.valueOf(protocolversion.getMinor());
            aobj[3] = s;
            return String.format("%s/%d.%d localhost (Apache-HttpClient/%s (cache))", aobj);
        }
    }

    private Map getExistingCacheVariants(HttpHost httphost, HttpRequest httprequest)
    {
        Map map;
        try
        {
            map = responseCache.getVariantCacheEntriesWithEtags(httphost, httprequest);
        }
        catch (IOException ioexception)
        {
            log.warn("Unable to retrieve variant entries from cache", ioexception);
            return null;
        }
        return map;
    }

    private HttpResponse getFatallyNoncompliantResponse(HttpRequest httprequest, HttpContext httpcontext)
    {
        HttpResponse httpresponse = null;
        for (Iterator iterator = requestCompliance.requestIsFatallyNonCompliant(httprequest).iterator(); iterator.hasNext();)
        {
            RequestProtocolError requestprotocolerror = (RequestProtocolError)iterator.next();
            setResponseStatus(httpcontext, CacheResponseStatus.CACHE_MODULE_RESPONSE);
            httpresponse = requestCompliance.getErrorForRequest(requestprotocolerror);
        }

        return httpresponse;
    }

    private HttpCacheEntry getUpdatedVariantEntry(HttpHost httphost, HttpRequest httprequest, Date date, Date date1, HttpResponse httpresponse, Variant variant, HttpCacheEntry httpcacheentry)
    {
        HttpCacheEntry httpcacheentry1;
        try
        {
            httpcacheentry1 = responseCache.updateVariantCacheEntry(httphost, httprequest, httpcacheentry, httpresponse, date, date1, variant.getCacheKey());
        }
        catch (IOException ioexception)
        {
            log.warn("Could not update cache entry", ioexception);
            return httpcacheentry;
        }
        return httpcacheentry1;
    }

    private HttpResponse handleCacheHit(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext, HttpCacheEntry httpcacheentry)
    {
        recordCacheHit(httphost, httprequest);
        Date date = getCurrentDate();
        if (suitabilityChecker.canCachedResponseBeUsed(httphost, httprequest, httpcacheentry, date))
        {
            return generateCachedResponse(httprequest, httpcontext, httpcacheentry, date);
        }
        if (!mayCallBackend(httprequest))
        {
            return generateGatewayTimeout(httpcontext);
        }
        if (validityPolicy.isRevalidatable(httpcacheentry))
        {
            return revalidateCacheEntry(httphost, httprequest, httpcontext, httpcacheentry, date);
        } else
        {
            return callBackend(httphost, httprequest, httpcontext);
        }
    }

    private HttpResponse handleCacheMiss(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
    {
        recordCacheMiss(httphost, httprequest);
        if (!mayCallBackend(httprequest))
        {
            return new BasicHttpResponse(HttpVersion.HTTP_1_1, 504, "Gateway Timeout");
        }
        Map map = getExistingCacheVariants(httphost, httprequest);
        if (map != null && map.size() > 0)
        {
            return negotiateResponseFromVariants(httphost, httprequest, httpcontext, map);
        } else
        {
            return callBackend(httphost, httprequest, httpcontext);
        }
    }

    private HttpResponse handleRevalidationFailure(HttpRequest httprequest, HttpContext httpcontext, HttpCacheEntry httpcacheentry, Date date)
    {
        if (staleResponseNotAllowed(httprequest, httpcacheentry, date))
        {
            return generateGatewayTimeout(httpcontext);
        } else
        {
            return unvalidatedCacheHit(httpcontext, httpcacheentry);
        }
    }

    private AsynchronousValidator makeAsynchronousValidator(CacheConfig cacheconfig)
    {
        if (cacheconfig.getAsynchronousWorkersMax() > 0)
        {
            return new AsynchronousValidator(this, cacheconfig);
        } else
        {
            return null;
        }
    }

    private boolean mayCallBackend(HttpRequest httprequest)
    {
        Header aheader[] = httprequest.getHeaders("Cache-Control");
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            HeaderElement aheaderelement[] = aheader[j].getElements();
            int k = aheaderelement.length;
            for (int l = 0; l < k; l++)
            {
                if ("only-if-cached".equals(aheaderelement[l].getName()))
                {
                    return false;
                }
            }

        }

        return true;
    }

    private void recordCacheHit(HttpHost httphost, HttpRequest httprequest)
    {
        cacheHits.getAndIncrement();
        if (log.isTraceEnabled())
        {
            RequestLine requestline = httprequest.getRequestLine();
            log.trace((new StringBuilder("Cache hit [host: ")).append(httphost).append("; uri: ").append(requestline.getUri()).append("]").toString());
        }
    }

    private void recordCacheMiss(HttpHost httphost, HttpRequest httprequest)
    {
        cacheMisses.getAndIncrement();
        if (log.isTraceEnabled())
        {
            RequestLine requestline = httprequest.getRequestLine();
            log.trace((new StringBuilder("Cache miss [host: ")).append(httphost).append("; uri: ").append(requestline.getUri()).append("]").toString());
        }
    }

    private void recordCacheUpdate(HttpContext httpcontext)
    {
        cacheUpdates.getAndIncrement();
        setResponseStatus(httpcontext, CacheResponseStatus.VALIDATED);
    }

    private HttpResponse retryRequestUnconditionally(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext, HttpCacheEntry httpcacheentry)
    {
        return callBackend(httphost, conditionalRequestBuilder.buildUnconditionalRequest(httprequest, httpcacheentry), httpcontext);
    }

    private HttpResponse revalidateCacheEntry(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext, HttpCacheEntry httpcacheentry, Date date)
    {
        log.trace("Revalidating the cache entry");
        HttpResponse httpresponse1;
        if (asynchRevalidator == null || staleResponseNotAllowed(httprequest, httpcacheentry, date) || !validityPolicy.mayReturnStaleWhileRevalidating(httpcacheentry, date))
        {
            break MISSING_BLOCK_LABEL_70;
        }
        httpresponse1 = generateCachedResponse(httprequest, httpcontext, httpcacheentry, date);
        asynchRevalidator.revalidateCacheEntry(httphost, httprequest, httpcontext, httpcacheentry);
        return httpresponse1;
        HttpResponse httpresponse;
        try
        {
            httpresponse = revalidateCacheEntry(httphost, httprequest, httpcontext, httpcacheentry);
        }
        catch (IOException ioexception)
        {
            return handleRevalidationFailure(httprequest, httpcontext, httpcacheentry, date);
        }
        catch (ProtocolException protocolexception)
        {
            throw new ClientProtocolException(protocolexception);
        }
        return httpresponse;
    }

    private boolean revalidationResponseIsTooOld(HttpResponse httpresponse, HttpCacheEntry httpcacheentry)
    {
        Header header;
        Header header1;
        header = httpcacheentry.getFirstHeader("Date");
        header1 = httpresponse.getFirstHeader("Date");
        if (header == null || header1 == null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        boolean flag;
        Date date = DateUtils.parseDate(header.getValue());
        flag = DateUtils.parseDate(header1.getValue()).before(date);
        if (flag)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_63;
        DateParseException dateparseexception;
        dateparseexception;
        return false;
    }

    private HttpCacheEntry satisfyFromCache(HttpHost httphost, HttpRequest httprequest)
    {
        HttpCacheEntry httpcacheentry;
        try
        {
            httpcacheentry = responseCache.getCacheEntry(httphost, httprequest);
        }
        catch (IOException ioexception)
        {
            log.warn("Unable to retrieve entries from cache", ioexception);
            return null;
        }
        return httpcacheentry;
    }

    private void setResponseStatus(HttpContext httpcontext, CacheResponseStatus cacheresponsestatus)
    {
        if (httpcontext != null)
        {
            httpcontext.setAttribute("http.cache.response.status", cacheresponsestatus);
        }
    }

    private boolean shouldSendNotModifiedResponse(HttpRequest httprequest, HttpCacheEntry httpcacheentry)
    {
        return suitabilityChecker.isConditional(httprequest) && suitabilityChecker.allConditionalsMatch(httprequest, httpcacheentry, new Date());
    }

    private boolean staleIfErrorAppliesTo(int i)
    {
        return i == 500 || i == 502 || i == 503 || i == 504;
    }

    private boolean staleResponseNotAllowed(HttpRequest httprequest, HttpCacheEntry httpcacheentry, Date date)
    {
        return validityPolicy.mustRevalidate(httpcacheentry) || isSharedCache() && validityPolicy.proxyRevalidate(httpcacheentry) || explicitFreshnessRequest(httprequest, httpcacheentry, date);
    }

    private void tryToUpdateVariantMap(HttpHost httphost, HttpRequest httprequest, Variant variant)
    {
        try
        {
            responseCache.reuseVariantEntryFor(httphost, httprequest, variant);
            return;
        }
        catch (IOException ioexception)
        {
            log.warn("Could not update cache entry to reuse variant", ioexception);
        }
    }

    private HttpResponse unvalidatedCacheHit(HttpContext httpcontext, HttpCacheEntry httpcacheentry)
    {
        HttpResponse httpresponse = responseGenerator.generateResponse(httpcacheentry);
        setResponseStatus(httpcontext, CacheResponseStatus.CACHE_HIT);
        httpresponse.addHeader("Warning", "111 localhost \"Revalidation failed\"");
        return httpresponse;
    }

    HttpResponse callBackend(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
    {
        Date date = getCurrentDate();
        log.trace("Calling the backend");
        HttpResponse httpresponse = backend.execute(httphost, httprequest, httpcontext);
        httpresponse.addHeader("Via", generateViaHeader(httpresponse));
        return handleBackendResponse(httphost, httprequest, date, getCurrentDate(), httpresponse);
    }

    boolean clientRequestsOurOptions(HttpRequest httprequest)
    {
        for (RequestLine requestline = httprequest.getRequestLine(); !"OPTIONS".equals(requestline.getMethod()) || !"*".equals(requestline.getUri()) || !"0".equals(httprequest.getFirstHeader("Max-Forwards").getValue());)
        {
            return false;
        }

        return true;
    }

    public HttpResponse execute(HttpHost httphost, HttpRequest httprequest)
    {
        return execute(httphost, httprequest, ((HttpContext) (null)));
    }

    public HttpResponse execute(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext)
    {
        setResponseStatus(httpcontext, CacheResponseStatus.CACHE_MISS);
        String s = generateViaHeader(httprequest);
        Object obj;
        if (clientRequestsOurOptions(httprequest))
        {
            setResponseStatus(httpcontext, CacheResponseStatus.CACHE_MODULE_RESPONSE);
            obj = new OptionsHttp11Response();
        } else
        {
            obj = getFatallyNoncompliantResponse(httprequest, httpcontext);
            if (obj == null)
            {
                HttpRequest httprequest1 = requestCompliance.makeRequestCompliant(httprequest);
                httprequest1.addHeader("Via", s);
                flushEntriesInvalidatedByRequest(httphost, httprequest1);
                if (!cacheableRequestPolicy.isServableFromCache(httprequest1))
                {
                    return callBackend(httphost, httprequest1, httpcontext);
                }
                HttpCacheEntry httpcacheentry = satisfyFromCache(httphost, httprequest1);
                if (httpcacheentry == null)
                {
                    return handleCacheMiss(httphost, httprequest1, httpcontext);
                } else
                {
                    return handleCacheHit(httphost, httprequest1, httpcontext, httpcacheentry);
                }
            }
        }
        return ((HttpResponse) (obj));
    }

    public HttpResponse execute(HttpUriRequest httpurirequest)
    {
        return execute(httpurirequest, ((HttpContext) (null)));
    }

    public HttpResponse execute(HttpUriRequest httpurirequest, HttpContext httpcontext)
    {
        URI uri = httpurirequest.getURI();
        return execute(new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme()), ((HttpRequest) (httpurirequest)), httpcontext);
    }

    public Object execute(HttpHost httphost, HttpRequest httprequest, ResponseHandler responsehandler)
    {
        return execute(httphost, httprequest, responsehandler, null);
    }

    public Object execute(HttpHost httphost, HttpRequest httprequest, ResponseHandler responsehandler, HttpContext httpcontext)
    {
        return responsehandler.handleResponse(execute(httphost, httprequest, httpcontext));
    }

    public Object execute(HttpUriRequest httpurirequest, ResponseHandler responsehandler)
    {
        return execute(httpurirequest, responsehandler, ((HttpContext) (null)));
    }

    public Object execute(HttpUriRequest httpurirequest, ResponseHandler responsehandler, HttpContext httpcontext)
    {
        return responsehandler.handleResponse(execute(httpurirequest, httpcontext));
    }

    public long getCacheHits()
    {
        return cacheHits.get();
    }

    public long getCacheMisses()
    {
        return cacheMisses.get();
    }

    public long getCacheUpdates()
    {
        return cacheUpdates.get();
    }

    public ClientConnectionManager getConnectionManager()
    {
        return backend.getConnectionManager();
    }

    Date getCurrentDate()
    {
        return new Date();
    }

    public HttpParams getParams()
    {
        return backend.getParams();
    }

    HttpResponse handleBackendResponse(HttpHost httphost, HttpRequest httprequest, Date date, Date date1, HttpResponse httpresponse)
    {
        boolean flag;
        log.trace("Handling Backend response");
        responseCompliance.ensureProtocolCompliance(httprequest, httpresponse);
        flag = responseCachingPolicy.isResponseCacheable(httprequest, httpresponse);
        responseCache.flushInvalidatedCacheEntriesFor(httphost, httprequest, httpresponse);
        if (!flag || alreadyHaveNewerCacheEntry(httphost, httprequest, httpresponse)) goto _L2; else goto _L1
_L1:
        HttpResponse httpresponse1 = responseCache.cacheAndReturnResponse(httphost, httprequest, httpresponse, date, date1);
        httpresponse = httpresponse1;
_L4:
        return httpresponse;
        IOException ioexception1;
        ioexception1;
        log.warn("Unable to store entries in cache", ioexception1);
_L2:
        if (!flag)
        {
            try
            {
                responseCache.flushCacheEntriesFor(httphost, httprequest);
            }
            catch (IOException ioexception)
            {
                log.warn("Unable to flush invalid cache entries", ioexception);
                return httpresponse;
            }
            return httpresponse;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean isSharedCache()
    {
        return sharedCache;
    }

    HttpResponse negotiateResponseFromVariants(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext, Map map)
    {
        HttpRequest httprequest1 = conditionalRequestBuilder.buildConditionalRequestFromVariants(httprequest, map);
        Date date = getCurrentDate();
        HttpResponse httpresponse = backend.execute(httphost, httprequest1, httpcontext);
        Date date1 = getCurrentDate();
        httpresponse.addHeader("Via", generateViaHeader(httpresponse));
        HttpResponse httpresponse1;
        if (httpresponse.getStatusLine().getStatusCode() != 304)
        {
            httpresponse1 = handleBackendResponse(httphost, httprequest, date, date1, httpresponse);
        } else
        {
            Header header = httpresponse.getFirstHeader("ETag");
            if (header == null)
            {
                log.warn("304 response did not contain ETag");
                return callBackend(httphost, httprequest, httpcontext);
            }
            Variant variant = (Variant)map.get(header.getValue());
            if (variant == null)
            {
                log.debug("304 response did not contain ETag matching one sent in If-None-Match");
                return callBackend(httphost, httprequest, httpcontext);
            }
            HttpCacheEntry httpcacheentry = variant.getEntry();
            if (revalidationResponseIsTooOld(httpresponse, httpcacheentry))
            {
                return retryRequestUnconditionally(httphost, httprequest, httpcontext, httpcacheentry);
            }
            recordCacheUpdate(httpcontext);
            HttpCacheEntry httpcacheentry1 = getUpdatedVariantEntry(httphost, httprequest1, date, date1, httpresponse, variant, httpcacheentry);
            httpresponse1 = responseGenerator.generateResponse(httpcacheentry1);
            tryToUpdateVariantMap(httphost, httprequest, variant);
            if (shouldSendNotModifiedResponse(httprequest, httpcacheentry1))
            {
                return responseGenerator.generateNotModifiedResponse(httpcacheentry1);
            }
        }
        return httpresponse1;
    }

    HttpResponse revalidateCacheEntry(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext, HttpCacheEntry httpcacheentry)
    {
        HttpRequest httprequest1 = conditionalRequestBuilder.buildConditionalRequest(httprequest, httpcacheentry);
        Date date = getCurrentDate();
        HttpResponse httpresponse = backend.execute(httphost, httprequest1, httpcontext);
        Date date1 = getCurrentDate();
        if (revalidationResponseIsTooOld(httpresponse, httpcacheentry))
        {
            HttpRequest httprequest2 = conditionalRequestBuilder.buildUnconditionalRequest(httprequest, httpcacheentry);
            date = getCurrentDate();
            httpresponse = backend.execute(httphost, httprequest2, httpcontext);
            date1 = getCurrentDate();
        }
        httpresponse.addHeader("Via", generateViaHeader(httpresponse));
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i == 304 || i == 200)
        {
            recordCacheUpdate(httpcontext);
        }
        if (i == 304)
        {
            HttpCacheEntry httpcacheentry1 = responseCache.updateCacheEntry(httphost, httprequest, httpcacheentry, httpresponse, date, date1);
            if (suitabilityChecker.isConditional(httprequest) && suitabilityChecker.allConditionalsMatch(httprequest, httpcacheentry1, new Date()))
            {
                return responseGenerator.generateNotModifiedResponse(httpcacheentry1);
            } else
            {
                return responseGenerator.generateResponse(httpcacheentry1);
            }
        }
        if (staleIfErrorAppliesTo(i) && !staleResponseNotAllowed(httprequest, httpcacheentry, getCurrentDate()) && validityPolicy.mayReturnStaleIfError(httprequest, httpcacheentry, date1))
        {
            HttpResponse httpresponse1 = responseGenerator.generateResponse(httpcacheentry);
            httpresponse1.addHeader("Warning", "110 localhost \"Response is stale\"");
            return httpresponse1;
        } else
        {
            return handleBackendResponse(httphost, httprequest1, date, date1, httpresponse);
        }
    }

    public boolean supportsRangeAndContentRangeHeaders()
    {
        return false;
    }
}
