// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.client.cache.Resource;
import ch.boye.httpclientandroidlib.impl.cookie.DateParseException;
import ch.boye.httpclientandroidlib.impl.cookie.DateUtils;
import java.util.Date;

class CacheValidityPolicy
{

    public static final long MAX_AGE = 0x80000000L;

    CacheValidityPolicy()
    {
    }

    private boolean mayReturnStaleIfError(Header aheader[], long l)
    {
        int i;
        int j;
        boolean flag;
        i = aheader.length;
        j = 0;
        flag = false;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        HeaderElement aheaderelement[];
        int k;
        int i1;
        aheaderelement = aheader[j].getElements();
        k = aheaderelement.length;
        i1 = 0;
_L3:
        HeaderElement headerelement;
        if (i1 >= k)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        headerelement = aheaderelement[i1];
        if (!"stale-if-error".equals(headerelement.getName()))
        {
            break MISSING_BLOCK_LABEL_96;
        }
        int j1 = Integer.parseInt(headerelement.getValue());
        if (l > (long)j1)
        {
            break MISSING_BLOCK_LABEL_96;
        }
        flag = true;
        j++;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        i1++;
        if (true) goto _L3; else goto _L2
_L2:
        return flag;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected boolean contentLengthHeaderMatchesActualLength(HttpCacheEntry httpcacheentry)
    {
        return !hasContentLengthHeader(httpcacheentry) || getContentLengthValue(httpcacheentry) == httpcacheentry.getResource().length();
    }

    protected long getAgeValue(HttpCacheEntry httpcacheentry)
    {
        Header aheader[];
        int i;
        int j;
        long l;
        aheader = httpcacheentry.getHeaders("Age");
        i = aheader.length;
        j = 0;
        l = 0L;
_L2:
        Header header;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        header = aheader[j];
        long l2 = Long.parseLong(header.getValue());
        long l1;
        l1 = l2;
        if (l1 < 0L)
        {
            l1 = 0x80000000L;
        }
_L3:
        NumberFormatException numberformatexception;
        if (l1 <= l)
        {
            l1 = l;
        }
        j++;
        l = l1;
        if (true) goto _L2; else goto _L1
        numberformatexception;
        l1 = 0x80000000L;
          goto _L3
_L1:
        return l;
    }

    protected long getApparentAgeSecs(HttpCacheEntry httpcacheentry)
    {
        long l = 0L;
        Date date = getDateValue(httpcacheentry);
        if (date == null)
        {
            l = 0x80000000L;
        } else
        {
            long l1 = httpcacheentry.getResponseDate().getTime() - date.getTime();
            if (l1 >= l)
            {
                return l1 / 1000L;
            }
        }
        return l;
    }

    protected long getContentLengthValue(HttpCacheEntry httpcacheentry)
    {
        Header header = httpcacheentry.getFirstHeader("Content-Length");
        if (header == null)
        {
            return -1L;
        }
        long l;
        try
        {
            l = Long.parseLong(header.getValue());
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1L;
        }
        return l;
    }

    protected long getCorrectedInitialAgeSecs(HttpCacheEntry httpcacheentry)
    {
        return getCorrectedReceivedAgeSecs(httpcacheentry) + getResponseDelaySecs(httpcacheentry);
    }

    protected long getCorrectedReceivedAgeSecs(HttpCacheEntry httpcacheentry)
    {
        long l = getApparentAgeSecs(httpcacheentry);
        long l1 = getAgeValue(httpcacheentry);
        if (l > l1)
        {
            return l;
        } else
        {
            return l1;
        }
    }

    public long getCurrentAgeSecs(HttpCacheEntry httpcacheentry, Date date)
    {
        return getCorrectedInitialAgeSecs(httpcacheentry) + getResidentTimeSecs(httpcacheentry, date);
    }

    protected Date getCurrentDate()
    {
        return new Date();
    }

    protected Date getDateValue(HttpCacheEntry httpcacheentry)
    {
        Header header = httpcacheentry.getFirstHeader("Date");
        if (header == null)
        {
            return null;
        }
        Date date;
        try
        {
            date = DateUtils.parseDate(header.getValue());
        }
        catch (DateParseException dateparseexception)
        {
            return null;
        }
        return date;
    }

    protected Date getExpirationDate(HttpCacheEntry httpcacheentry)
    {
        Header header = httpcacheentry.getFirstHeader("Expires");
        if (header == null)
        {
            return null;
        }
        Date date;
        try
        {
            date = DateUtils.parseDate(header.getValue());
        }
        catch (DateParseException dateparseexception)
        {
            return null;
        }
        return date;
    }

    public long getFreshnessLifetimeSecs(HttpCacheEntry httpcacheentry)
    {
        long l = getMaxAge(httpcacheentry);
        if (l > -1L)
        {
            return l;
        }
        Date date = getDateValue(httpcacheentry);
        if (date == null)
        {
            return 0L;
        }
        Date date1 = getExpirationDate(httpcacheentry);
        if (date1 == null)
        {
            return 0L;
        } else
        {
            return (date1.getTime() - date.getTime()) / 1000L;
        }
    }

    public long getHeuristicFreshnessLifetimeSecs(HttpCacheEntry httpcacheentry, float f, long l)
    {
        long l1;
label0:
        {
            Date date = getDateValue(httpcacheentry);
            Date date1 = getLastModifiedValue(httpcacheentry);
            if (date != null && date1 != null)
            {
                l1 = date.getTime() - date1.getTime();
                if (l1 >= 0L)
                {
                    break label0;
                }
                l = 0L;
            }
            return l;
        }
        return (long)(f * (float)(l1 / 1000L));
    }

    protected Date getLastModifiedValue(HttpCacheEntry httpcacheentry)
    {
        Header header = httpcacheentry.getFirstHeader("Last-Modified");
        if (header == null)
        {
            return null;
        }
        Date date;
        try
        {
            date = DateUtils.parseDate(header.getValue());
        }
        catch (DateParseException dateparseexception)
        {
            return null;
        }
        return date;
    }

    protected long getMaxAge(HttpCacheEntry httpcacheentry)
    {
        Header aheader[];
        int i;
        int j;
        long l;
        aheader = httpcacheentry.getHeaders("Cache-Control");
        i = aheader.length;
        j = 0;
        l = -1L;
_L6:
        if (j >= i) goto _L2; else goto _L1
_L1:
        HeaderElement aheaderelement[];
        int k;
        int i1;
        aheaderelement = aheader[j].getElements();
        k = aheaderelement.length;
        i1 = 0;
_L4:
        HeaderElement headerelement;
        if (i1 >= k)
        {
            continue; /* Loop/switch isn't completed */
        }
        headerelement = aheaderelement[i1];
        if (!"max-age".equals(headerelement.getName()) && !"s-maxage".equals(headerelement.getName()))
        {
            break MISSING_BLOCK_LABEL_120;
        }
        long l1 = Long.parseLong(headerelement.getValue());
        if (l == -1L || l1 < l)
        {
            l = l1;
        }
_L5:
        i1++;
        if (true) goto _L4; else goto _L3
_L3:
        NumberFormatException numberformatexception;
        continue; /* Loop/switch isn't completed */
        numberformatexception;
        l = 0L;
          goto _L5
        j++;
          goto _L6
_L2:
        return l;
    }

    protected long getResidentTimeSecs(HttpCacheEntry httpcacheentry, Date date)
    {
        return (date.getTime() - httpcacheentry.getResponseDate().getTime()) / 1000L;
    }

    protected long getResponseDelaySecs(HttpCacheEntry httpcacheentry)
    {
        return (httpcacheentry.getResponseDate().getTime() - httpcacheentry.getRequestDate().getTime()) / 1000L;
    }

    public long getStalenessSecs(HttpCacheEntry httpcacheentry, Date date)
    {
        long l = getCurrentAgeSecs(httpcacheentry, date);
        long l1 = getFreshnessLifetimeSecs(httpcacheentry);
        if (l <= l1)
        {
            return 0L;
        } else
        {
            return l - l1;
        }
    }

    public boolean hasCacheControlDirective(HttpCacheEntry httpcacheentry, String s)
    {
        Header aheader[];
        int i;
        int j;
        aheader = httpcacheentry.getHeaders("Cache-Control");
        i = aheader.length;
        j = 0;
_L8:
        boolean flag = false;
        if (j >= i) goto _L2; else goto _L1
_L1:
        HeaderElement aheaderelement[];
        int k;
        int l;
        aheaderelement = aheader[j].getElements();
        k = aheaderelement.length;
        l = 0;
_L6:
        if (l >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!s.equalsIgnoreCase(aheaderelement[l].getName())) goto _L4; else goto _L3
_L3:
        flag = true;
_L2:
        return flag;
_L4:
        l++;
        if (true) goto _L6; else goto _L5
_L5:
        j++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected boolean hasContentLengthHeader(HttpCacheEntry httpcacheentry)
    {
        return httpcacheentry.getFirstHeader("Content-Length") != null;
    }

    public boolean isResponseFresh(HttpCacheEntry httpcacheentry, Date date)
    {
        return getCurrentAgeSecs(httpcacheentry, date) < getFreshnessLifetimeSecs(httpcacheentry);
    }

    public boolean isResponseHeuristicallyFresh(HttpCacheEntry httpcacheentry, Date date, float f, long l)
    {
        return getCurrentAgeSecs(httpcacheentry, date) < getHeuristicFreshnessLifetimeSecs(httpcacheentry, f, l);
    }

    public boolean isRevalidatable(HttpCacheEntry httpcacheentry)
    {
        return httpcacheentry.getFirstHeader("ETag") != null || httpcacheentry.getFirstHeader("Last-Modified") != null;
    }

    public boolean mayReturnStaleIfError(HttpRequest httprequest, HttpCacheEntry httpcacheentry, Date date)
    {
        long l = getStalenessSecs(httpcacheentry, date);
        return mayReturnStaleIfError(httprequest.getHeaders("Cache-Control"), l) || mayReturnStaleIfError(httpcacheentry.getHeaders("Cache-Control"), l);
    }

    public boolean mayReturnStaleWhileRevalidating(HttpCacheEntry httpcacheentry, Date date)
    {
        Header aheader[];
        int i;
        int j;
        aheader = httpcacheentry.getHeaders("Cache-Control");
        i = aheader.length;
        j = 0;
_L7:
        boolean flag = false;
        if (j >= i) goto _L2; else goto _L1
_L1:
        HeaderElement aheaderelement[];
        int k;
        int l;
        aheaderelement = aheader[j].getElements();
        k = aheaderelement.length;
        l = 0;
_L5:
        if (l >= k) goto _L4; else goto _L3
_L3:
        HeaderElement headerelement;
        headerelement = aheaderelement[l];
        if (!"stale-while-revalidate".equalsIgnoreCase(headerelement.getName()))
        {
            continue; /* Loop/switch isn't completed */
        }
        int i1;
        long l1;
        i1 = Integer.parseInt(headerelement.getValue());
        l1 = getStalenessSecs(httpcacheentry, date);
        if (l1 > (long)i1)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = true;
_L2:
        return flag;
        NumberFormatException numberformatexception;
        numberformatexception;
        l++;
          goto _L5
_L4:
        j++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean mustRevalidate(HttpCacheEntry httpcacheentry)
    {
        return hasCacheControlDirective(httpcacheentry, "must-revalidate");
    }

    public boolean proxyRevalidate(HttpCacheEntry httpcacheentry)
    {
        return hasCacheControlDirective(httpcacheentry, "proxy-revalidate");
    }
}
