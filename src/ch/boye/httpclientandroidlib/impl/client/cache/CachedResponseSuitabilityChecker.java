// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.impl.cookie.DateParseException;
import ch.boye.httpclientandroidlib.impl.cookie.DateUtils;
import java.util.Date;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            CacheValidityPolicy, CacheConfig

class CachedResponseSuitabilityChecker
{

    private final float heuristicCoefficient;
    private final long heuristicDefaultLifetime;
    public HttpClientAndroidLog log;
    private final boolean sharedCache;
    private final boolean useHeuristicCaching;
    private final CacheValidityPolicy validityStrategy;

    CachedResponseSuitabilityChecker(CacheConfig cacheconfig)
    {
        this(new CacheValidityPolicy(), cacheconfig);
    }

    CachedResponseSuitabilityChecker(CacheValidityPolicy cachevaliditypolicy, CacheConfig cacheconfig)
    {
        log = new HttpClientAndroidLog(getClass());
        validityStrategy = cachevaliditypolicy;
        sharedCache = cacheconfig.isSharedCache();
        useHeuristicCaching = cacheconfig.isHeuristicCachingEnabled();
        heuristicCoefficient = cacheconfig.getHeuristicCoefficient();
        heuristicDefaultLifetime = cacheconfig.getHeuristicDefaultLifetime();
    }

    private boolean etagValidatorMatches(HttpRequest httprequest, HttpCacheEntry httpcacheentry)
    {
        Header header = httpcacheentry.getFirstHeader("ETag");
        String s;
        Header aheader[];
        if (header != null)
        {
            s = header.getValue();
        } else
        {
            s = null;
        }
        aheader = httprequest.getHeaders("If-None-Match");
        if (aheader != null)
        {
            int i = aheader.length;
            for (int j = 0; j < i; j++)
            {
                HeaderElement aheaderelement[] = aheader[j].getElements();
                int k = aheaderelement.length;
                for (int l = 0; l < k; l++)
                {
                    String s1 = aheaderelement[l].toString();
                    if ("*".equals(s1) && s != null || s1.equals(s))
                    {
                        return true;
                    }
                }

            }

        }
        return false;
    }

    private long getMaxStale(HttpRequest httprequest)
    {
        long l;
        Header aheader[];
        int i;
        int j;
        l = -1L;
        aheader = httprequest.getHeaders("Cache-Control");
        i = aheader.length;
        j = 0;
_L5:
        HeaderElement aheaderelement[];
        int k;
        int i1;
        long l1;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        aheaderelement = aheader[j].getElements();
        k = aheaderelement.length;
        i1 = 0;
        l1 = l;
_L2:
        HeaderElement headerelement;
        if (i1 >= k)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        headerelement = aheaderelement[i1];
        if ("max-stale".equals(headerelement.getName()))
        {
            if (headerelement.getValue() != null && !"".equals(headerelement.getValue().trim()) || l1 != -1L)
            {
                break; /* Loop/switch isn't completed */
            }
            l1 = 0x7fffffffffffffffL;
        }
_L3:
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        long l2 = Long.parseLong(headerelement.getValue());
        long l3 = l2;
        if (l3 < 0L)
        {
            l3 = 0L;
        }
        if (l1 == -1L || l3 < l1)
        {
            l1 = l3;
        }
          goto _L3
        NumberFormatException numberformatexception;
        numberformatexception;
        l1 = 0L;
          goto _L3
        j++;
        l = l1;
        if (true) goto _L5; else goto _L4
_L4:
        return l;
    }

    private boolean hasSupportedEtagValidator(HttpRequest httprequest)
    {
        return httprequest.containsHeader("If-None-Match");
    }

    private boolean hasSupportedLastModifiedValidator(HttpRequest httprequest)
    {
        return hasValidDateField(httprequest, "If-Modified-Since");
    }

    private boolean hasUnsupportedConditionalHeaders(HttpRequest httprequest)
    {
        return httprequest.getFirstHeader("If-Range") != null || httprequest.getFirstHeader("If-Match") != null || hasValidDateField(httprequest, "If-Unmodified-Since");
    }

    private boolean hasValidDateField(HttpRequest httprequest, String s)
    {
        Header aheader[];
        int i;
        int j;
        aheader = httprequest.getHeaders(s);
        i = aheader.length;
        j = 0;
_L2:
        boolean flag;
        Header header;
        flag = false;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        header = aheader[j];
        DateUtils.parseDate(header.getValue());
        flag = true;
        return flag;
        DateParseException dateparseexception;
        dateparseexception;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean isFreshEnough(HttpCacheEntry httpcacheentry, HttpRequest httprequest, Date date)
    {
        if (validityStrategy.isResponseFresh(httpcacheentry, date))
        {
            return true;
        }
        if (useHeuristicCaching && validityStrategy.isResponseHeuristicallyFresh(httpcacheentry, date, heuristicCoefficient, heuristicDefaultLifetime))
        {
            return true;
        }
        if (originInsistsOnFreshness(httpcacheentry))
        {
            return false;
        }
        long l = getMaxStale(httprequest);
        if (l == -1L)
        {
            return false;
        }
        return l > validityStrategy.getStalenessSecs(httpcacheentry, date);
    }

    private boolean lastModifiedValidatorMatches(HttpRequest httprequest, HttpCacheEntry httpcacheentry, Date date)
    {
        Header header;
        Date date1;
        header = httpcacheentry.getFirstHeader("Last-Modified");
        date1 = null;
        if (header == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        Date date4 = DateUtils.parseDate(header.getValue());
        date1 = date4;
        Date date2 = date1;
_L2:
        if (date2 == null)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
        DateParseException dateparseexception1;
        dateparseexception1;
        date2 = null;
        if (true) goto _L2; else goto _L1
_L1:
        Header aheader[];
        int i;
        int j;
        aheader = httprequest.getHeaders("If-Modified-Since");
        i = aheader.length;
        j = 0;
_L5:
        if (j >= i) goto _L4; else goto _L3
_L3:
        Header header1 = aheader[j];
        boolean flag;
        Date date3 = DateUtils.parseDate(header1.getValue());
        if (date3.after(date))
        {
            break MISSING_BLOCK_LABEL_118;
        }
        flag = date2.after(date3);
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        return false;
        DateParseException dateparseexception;
        dateparseexception;
        j++;
          goto _L5
_L4:
        return true;
    }

    private boolean originInsistsOnFreshness(HttpCacheEntry httpcacheentry)
    {
        if (!validityStrategy.mustRevalidate(httpcacheentry))
        {
            if (!sharedCache)
            {
                return false;
            }
            if (!validityStrategy.proxyRevalidate(httpcacheentry) && !validityStrategy.hasCacheControlDirective(httpcacheentry, "s-maxage"))
            {
                return false;
            }
        }
        return true;
    }

    public boolean allConditionalsMatch(HttpRequest httprequest, HttpCacheEntry httpcacheentry, Date date)
    {
        boolean flag = hasSupportedEtagValidator(httprequest);
        boolean flag1 = hasSupportedLastModifiedValidator(httprequest);
        boolean flag2;
        boolean flag3;
        if (flag)
        {
            flag2 = etagValidatorMatches(httprequest, httpcacheentry);
        } else
        {
            flag2 = false;
        }
        if (flag1)
        {
            flag3 = lastModifiedValidatorMatches(httprequest, httpcacheentry, date);
        } else
        {
            flag3 = false;
        }
        while (flag && flag1 && (!flag2 || !flag3) || flag && !flag2 || flag1 && !flag3) 
        {
            return false;
        }
        return true;
    }

    public boolean canCachedResponseBeUsed(HttpHost httphost, HttpRequest httprequest, HttpCacheEntry httpcacheentry, Date date)
    {
        Header aheader[];
        int i;
        int j;
        if (!isFreshEnough(httpcacheentry, httprequest, date))
        {
            log.trace("Cache entry was not fresh enough");
            return false;
        }
        if (!validityStrategy.contentLengthHeaderMatchesActualLength(httpcacheentry))
        {
            log.debug("Cache entry Content-Length and header information do not match");
            return false;
        }
        if (hasUnsupportedConditionalHeaders(httprequest))
        {
            log.debug("Request contained conditional headers we don't handle");
            return false;
        }
        if (isConditional(httprequest) && !allConditionalsMatch(httprequest, httpcacheentry, date))
        {
            return false;
        }
        aheader = httprequest.getHeaders("Cache-Control");
        i = aheader.length;
        j = 0;
_L5:
        HeaderElement aheaderelement[];
        int k;
        int l;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        aheaderelement = aheader[j].getElements();
        k = aheaderelement.length;
        l = 0;
_L3:
        if (l >= k) goto _L2; else goto _L1
_L1:
        HeaderElement headerelement;
label0:
        {
            headerelement = aheaderelement[l];
            if ("no-cache".equals(headerelement.getName()))
            {
                log.trace("Response contained NO CACHE directive, cache was not suitable");
                return false;
            }
            if ("no-store".equals(headerelement.getName()))
            {
                log.trace("Response contained NO STORE directive, cache was not suitable");
                return false;
            }
            if (!"max-age".equals(headerelement.getName()))
            {
                break label0;
            }
            try
            {
                int j1 = Integer.parseInt(headerelement.getValue());
                if (validityStrategy.getCurrentAgeSecs(httpcacheentry, date) <= (long)j1)
                {
                    break label0;
                }
                log.trace("Response from cache was NOT suitable due to max age");
            }
            catch (NumberFormatException numberformatexception2)
            {
                log.debug((new StringBuilder("Response from cache was malformed")).append(numberformatexception2.getMessage()).toString());
                return false;
            }
            return false;
        }
label1:
        {
            if (!"max-stale".equals(headerelement.getName()))
            {
                break label1;
            }
            try
            {
                int i1 = Integer.parseInt(headerelement.getValue());
                if (validityStrategy.getFreshnessLifetimeSecs(httpcacheentry) <= (long)i1)
                {
                    break label1;
                }
                log.trace("Response from cache was not suitable due to Max stale freshness");
            }
            catch (NumberFormatException numberformatexception1)
            {
                log.debug((new StringBuilder("Response from cache was malformed: ")).append(numberformatexception1.getMessage()).toString());
                return false;
            }
            return false;
        }
        if (!"min-fresh".equals(headerelement.getName()))
        {
            continue; /* Loop/switch isn't completed */
        }
        long l1;
        long l2;
        try
        {
            l1 = Long.parseLong(headerelement.getValue());
        }
        catch (NumberFormatException numberformatexception)
        {
            log.debug((new StringBuilder("Response from cache was malformed: ")).append(numberformatexception.getMessage()).toString());
            return false;
        }
        if (l1 < 0L)
        {
            return false;
        }
        l2 = validityStrategy.getCurrentAgeSecs(httpcacheentry, date);
        if (validityStrategy.getFreshnessLifetimeSecs(httpcacheentry) - l2 >= l1)
        {
            continue; /* Loop/switch isn't completed */
        }
        log.trace("Response from cache was not suitable due to min fresh freshness requirement");
        return false;
        l++;
          goto _L3
_L2:
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        log.trace("Response from cache was suitable");
        return true;
    }

    public boolean isConditional(HttpRequest httprequest)
    {
        return hasSupportedEtagValidator(httprequest) || hasSupportedLastModifiedValidator(httprequest);
    }
}
