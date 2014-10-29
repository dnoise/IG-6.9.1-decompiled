// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.impl.cookie.DateParseException;
import ch.boye.httpclientandroidlib.impl.cookie.DateUtils;
import java.util.Date;

class ResponseCachingPolicy
{

    public HttpClientAndroidLog log;
    private final int maxObjectSizeBytes;
    private final boolean sharedCache;

    public ResponseCachingPolicy(int i, boolean flag)
    {
        log = new HttpClientAndroidLog(getClass());
        maxObjectSizeBytes = i;
        sharedCache = flag;
    }

    private boolean expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(HttpResponse httpresponse)
    {
        if (httpresponse.getFirstHeader("Cache-Control") == null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        Header header;
        Header header1;
        header = httpresponse.getFirstHeader("Expires");
        header1 = httpresponse.getFirstHeader("Date");
        if (header == null || header1 == null) goto _L1; else goto _L3
_L3:
        boolean flag;
        try
        {
            Date date = DateUtils.parseDate(header.getValue());
            Date date1 = DateUtils.parseDate(header1.getValue());
            if (date.equals(date1))
            {
                break; /* Loop/switch isn't completed */
            }
            flag = date.before(date1);
        }
        catch (DateParseException dateparseexception)
        {
            return false;
        }
        if (!flag) goto _L1; else goto _L4
_L4:
        return true;
    }

    private boolean from1_0Origin(HttpResponse httpresponse)
    {
        Header header = httpresponse.getFirstHeader("Via");
        if (header != null)
        {
            HeaderElement aheaderelement[] = header.getElements();
            if (aheaderelement.length > 0)
            {
                String s = aheaderelement[0].toString().split("\\s")[0];
                if (s.contains("/"))
                {
                    return s.equals("HTTP/1.0");
                } else
                {
                    return s.equals("1.0");
                }
            }
        }
        return HttpVersion.HTTP_1_0.equals(httpresponse.getProtocolVersion());
    }

    private boolean requestProtocolGreaterThanAccepted(HttpRequest httprequest)
    {
        return httprequest.getProtocolVersion().compareToVersion(HttpVersion.HTTP_1_1) > 0;
    }

    protected boolean hasCacheControlParameterFrom(HttpMessage httpmessage, String as[])
    {
        Header aheader[];
        int i;
        int j;
        aheader = httpmessage.getHeaders("Cache-Control");
        i = aheader.length;
        j = 0;
_L11:
        boolean flag = false;
        if (j >= i) goto _L2; else goto _L1
_L1:
        HeaderElement aheaderelement[];
        int k;
        int l;
        aheaderelement = aheader[j].getElements();
        k = aheaderelement.length;
        l = 0;
_L9:
        if (l >= k) goto _L4; else goto _L3
_L3:
        HeaderElement headerelement;
        int i1;
        int j1;
        headerelement = aheaderelement[l];
        i1 = as.length;
        j1 = 0;
_L8:
        if (j1 >= i1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!as[j1].equalsIgnoreCase(headerelement.getName())) goto _L6; else goto _L5
_L5:
        flag = true;
_L2:
        return flag;
_L6:
        j1++;
        if (true) goto _L8; else goto _L7
_L7:
        l++;
          goto _L9
_L4:
        j++;
        if (true) goto _L11; else goto _L10
_L10:
    }

    protected boolean isExplicitlyCacheable(HttpResponse httpresponse)
    {
        if (httpresponse.getFirstHeader("Expires") != null)
        {
            return true;
        } else
        {
            return hasCacheControlParameterFrom(httpresponse, new String[] {
                "max-age", "s-maxage", "must-revalidate", "proxy-revalidate", "public"
            });
        }
    }

    protected boolean isExplicitlyNonCacheable(HttpResponse httpresponse)
    {
        Header aheader[];
        int i;
        int j;
        aheader = httpresponse.getHeaders("Cache-Control");
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
        HeaderElement headerelement;
        if (l >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        headerelement = aheaderelement[l];
        if (!"no-store".equals(headerelement.getName()) && !"no-cache".equals(headerelement.getName()) && (!sharedCache || !"private".equals(headerelement.getName()))) goto _L4; else goto _L3
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

    public boolean isResponseCacheable(HttpRequest httprequest, HttpResponse httpresponse)
    {
        if (requestProtocolGreaterThanAccepted(httprequest))
        {
            log.debug("Response was not cacheable.");
        } else
        if (!hasCacheControlParameterFrom(httprequest, new String[] {
    "no-store"
}))
        {
            if (httprequest.getRequestLine().getUri().contains("?") && (!isExplicitlyCacheable(httpresponse) || from1_0Origin(httpresponse)))
            {
                log.debug("Response was not cacheable.");
                return false;
            }
            if (!expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(httpresponse))
            {
                if (sharedCache)
                {
                    Header aheader[] = httprequest.getHeaders("Authorization");
                    if (aheader != null && aheader.length > 0)
                    {
                        return hasCacheControlParameterFrom(httpresponse, new String[] {
                            "s-maxage", "must-revalidate", "public"
                        });
                    }
                }
                return isResponseCacheable(httprequest.getRequestLine().getMethod(), httpresponse);
            }
        }
        return false;
    }

    public boolean isResponseCacheable(String s, HttpResponse httpresponse)
    {
        if ("GET".equals(s)) goto _L2; else goto _L1
_L1:
        log.debug("Response was not cacheable.");
_L7:
        return false;
_L2:
        httpresponse.getStatusLine().getStatusCode();
        JVM INSTR lookupswitch 6: default 88
    //                   200: 99
    //                   203: 99
    //                   206: 269
    //                   300: 99
    //                   301: 99
    //                   410: 99;
           goto _L3 _L4 _L4 _L5 _L4 _L4 _L4
_L3:
        log.debug("Response was not cacheable (Unknown Status code)");
        return false;
_L4:
        Header header;
        log.debug("Response was cacheable");
        header = httpresponse.getFirstHeader("Content-Length");
        if (header != null && Integer.parseInt(header.getValue()) > maxObjectSizeBytes || httpresponse.getHeaders("Age").length > 1 || httpresponse.getHeaders("Expires").length > 1) goto _L7; else goto _L6
_L6:
        Header aheader[] = httpresponse.getHeaders("Date");
        if (aheader.length != 1) goto _L7; else goto _L8
_L8:
        Header aheader1[];
        int i;
        int j;
        HeaderElement aheaderelement[];
        int k;
        int l;
        try
        {
            DateUtils.parseDate(aheader[0].getValue());
        }
        catch (DateParseException dateparseexception)
        {
            return false;
        }
        aheader1 = httpresponse.getHeaders("Vary");
        i = aheader1.length;
        j = 0;
_L13:
        if (j >= i)
        {
            continue; /* Loop/switch isn't completed */
        }
        aheaderelement = aheader1[j].getElements();
        k = aheaderelement.length;
        l = 0;
_L12:
        if (l >= k) goto _L10; else goto _L9
_L9:
        if ("*".equals(aheaderelement[l].getName())) goto _L7; else goto _L11
_L11:
        l++;
          goto _L12
_L5:
        log.debug("Response was not cacheable (Partial Content)");
        return false;
_L10:
        j++;
          goto _L13
        if (isExplicitlyNonCacheable(httpresponse)) goto _L7; else goto _L14
_L14:
        return true;
    }
}
