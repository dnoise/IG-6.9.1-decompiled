// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.client.ClientProtocolException;
import ch.boye.httpclientandroidlib.entity.AbstractHttpEntity;
import ch.boye.httpclientandroidlib.impl.client.RequestWrapper;
import ch.boye.httpclientandroidlib.message.BasicHeader;
import ch.boye.httpclientandroidlib.message.BasicHttpResponse;
import ch.boye.httpclientandroidlib.message.BasicStatusLine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            RequestProtocolError

class RequestProtocolCompliance
{

    private static final List disallowedWithNoCache = Arrays.asList(new String[] {
        "min-fresh", "max-stale", "max-age"
    });

    RequestProtocolCompliance()
    {
    }

    private void add100ContinueHeaderIfMissing(HttpRequest httprequest)
    {
        Header aheader[] = httprequest.getHeaders("Expect");
        int i = aheader.length;
        int j = 0;
        boolean flag = false;
        for (; j < i; j++)
        {
            HeaderElement aheaderelement[] = aheader[j].getElements();
            int k = aheaderelement.length;
            for (int l = 0; l < k; l++)
            {
                if ("100-continue".equalsIgnoreCase(aheaderelement[l].getName()))
                {
                    flag = true;
                }
            }

        }

        if (!flag)
        {
            httprequest.addHeader("Expect", "100-continue");
        }
    }

    private void addContentTypeHeaderIfMissing(HttpEntityEnclosingRequest httpentityenclosingrequest)
    {
        if (httpentityenclosingrequest.getEntity().getContentType() == null)
        {
            ((AbstractHttpEntity)httpentityenclosingrequest.getEntity()).setContentType("application/octet-stream");
        }
    }

    private String buildHeaderFromElements(List list)
    {
        StringBuilder stringbuilder = new StringBuilder("");
        Iterator iterator = list.iterator();
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            HeaderElement headerelement = (HeaderElement)iterator.next();
            if (!flag)
            {
                stringbuilder.append(",");
            } else
            {
                flag = false;
            }
            stringbuilder.append(headerelement.toString());
        }
        return stringbuilder.toString();
    }

    private void decrementOPTIONSMaxForwardsIfGreaterThen0(HttpRequest httprequest)
    {
        Header header;
        if ("OPTIONS".equals(httprequest.getRequestLine().getMethod()))
        {
            if ((header = httprequest.getFirstHeader("Max-Forwards")) != null)
            {
                httprequest.removeHeaders("Max-Forwards");
                httprequest.setHeader("Max-Forwards", Integer.toString(-1 + Integer.parseInt(header.getValue())));
                return;
            }
        }
    }

    private HttpRequest downgradeRequestTo(HttpRequest httprequest, ProtocolVersion protocolversion)
    {
        RequestWrapper requestwrapper;
        try
        {
            requestwrapper = new RequestWrapper(httprequest);
        }
        catch (ProtocolException protocolexception)
        {
            throw new ClientProtocolException(protocolexception);
        }
        requestwrapper.setProtocolVersion(protocolversion);
        return requestwrapper;
    }

    private void remove100ContinueHeaderIfExists(HttpRequest httprequest)
    {
        Header aheader[] = httprequest.getHeaders("Expect");
        ArrayList arraylist = new ArrayList();
        int i = aheader.length;
        int j = 0;
        ArrayList arraylist1 = arraylist;
        boolean flag = false;
        do
        {
            if (j >= i)
            {
                break;
            }
            Header header = aheader[j];
            HeaderElement aheaderelement[] = header.getElements();
            int k = aheaderelement.length;
            int l = 0;
            while (l < k) 
            {
                HeaderElement headerelement = aheaderelement[l];
                if (!"100-continue".equalsIgnoreCase(headerelement.getName()))
                {
                    arraylist1.add(headerelement);
                } else
                {
                    flag = true;
                }
                l++;
            }
            if (flag)
            {
                httprequest.removeHeader(header);
                for (Iterator iterator = arraylist1.iterator(); iterator.hasNext(); httprequest.addHeader(new BasicHeader("Expect", ((HeaderElement)iterator.next()).getName()))) { }
                break;
            }
            arraylist1 = new ArrayList();
            j++;
        } while (true);
    }

    private RequestProtocolError requestContainsNoCacheDirectiveWithFieldName(HttpRequest httprequest)
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
                if ("no-cache".equalsIgnoreCase(headerelement.getName()) && headerelement.getValue() != null)
                {
                    return RequestProtocolError.NO_CACHE_DIRECTIVE_WITH_FIELD_NAME;
                }
            }

        }

        return null;
    }

    private RequestProtocolError requestHasWeakETagAndRange(HttpRequest httprequest)
    {
        if ("GET".equals(httprequest.getRequestLine().getMethod()) && httprequest.getFirstHeader("Range") != null)
        {
            Header header = httprequest.getFirstHeader("If-Range");
            if (header != null && header.getValue().startsWith("W/"))
            {
                return RequestProtocolError.WEAK_ETAG_AND_RANGE_ERROR;
            }
        }
        return null;
    }

    private RequestProtocolError requestHasWeekETagForPUTOrDELETEIfMatch(HttpRequest httprequest)
    {
        String s = httprequest.getRequestLine().getMethod();
        if ("PUT".equals(s) || "DELETE".equals(s)) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        Header header = httprequest.getFirstHeader("If-Match");
        if (header == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (header.getValue().startsWith("W/"))
        {
            return RequestProtocolError.WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR;
        }
        if (true) goto _L1; else goto _L3
_L3:
        Header header1 = httprequest.getFirstHeader("If-None-Match");
        if (header1 != null && header1.getValue().startsWith("W/"))
        {
            return RequestProtocolError.WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private boolean requestMustNotHaveEntity(HttpRequest httprequest)
    {
        return "TRACE".equals(httprequest.getRequestLine().getMethod()) && (httprequest instanceof HttpEntityEnclosingRequest);
    }

    private void stripOtherFreshnessDirectivesWithNoCache(HttpRequest httprequest)
    {
        ArrayList arraylist = new ArrayList();
        Header aheader[] = httprequest.getHeaders("Cache-Control");
        int i = aheader.length;
        int j = 0;
        boolean flag = false;
        for (; j < i; j++)
        {
            HeaderElement aheaderelement[] = aheader[j].getElements();
            int k = aheaderelement.length;
            for (int l = 0; l < k; l++)
            {
                HeaderElement headerelement = aheaderelement[l];
                if (!disallowedWithNoCache.contains(headerelement.getName()))
                {
                    arraylist.add(headerelement);
                }
                if ("no-cache".equals(headerelement.getName()))
                {
                    flag = true;
                }
            }

        }

        if (!flag)
        {
            return;
        } else
        {
            httprequest.removeHeaders("Cache-Control");
            httprequest.setHeader("Cache-Control", buildHeaderFromElements(arraylist));
            return;
        }
    }

    private HttpRequest upgradeRequestTo(HttpRequest httprequest, ProtocolVersion protocolversion)
    {
        RequestWrapper requestwrapper;
        try
        {
            requestwrapper = new RequestWrapper(httprequest);
        }
        catch (ProtocolException protocolexception)
        {
            throw new ClientProtocolException(protocolexception);
        }
        requestwrapper.setProtocolVersion(protocolversion);
        return requestwrapper;
    }

    private void verifyOPTIONSRequestWithBodyHasContentType(HttpRequest httprequest)
    {
        while (!"OPTIONS".equals(httprequest.getRequestLine().getMethod()) || !(httprequest instanceof HttpEntityEnclosingRequest)) 
        {
            return;
        }
        addContentTypeHeaderIfMissing((HttpEntityEnclosingRequest)httprequest);
    }

    private void verifyRequestWithExpectContinueFlagHas100continueHeader(HttpRequest httprequest)
    {
        if (httprequest instanceof HttpEntityEnclosingRequest)
        {
            if (((HttpEntityEnclosingRequest)httprequest).expectContinue() && ((HttpEntityEnclosingRequest)httprequest).getEntity() != null)
            {
                add100ContinueHeaderIfMissing(httprequest);
                return;
            } else
            {
                remove100ContinueHeaderIfExists(httprequest);
                return;
            }
        } else
        {
            remove100ContinueHeaderIfExists(httprequest);
            return;
        }
    }

    public HttpResponse getErrorForRequest(RequestProtocolError requestprotocolerror)
    {
        switch (_cls1..SwitchMap.ch.boye.httpclientandroidlib.impl.client.cache.RequestProtocolError[requestprotocolerror.ordinal()])
        {
        default:
            throw new IllegalStateException("The request was compliant, therefore no error can be generated for it.");

        case 1: // '\001'
            return new BasicHttpResponse(new BasicStatusLine(HttpVersion.HTTP_1_1, 411, ""));

        case 2: // '\002'
            return new BasicHttpResponse(new BasicStatusLine(HttpVersion.HTTP_1_1, 400, "Weak eTag not compatible with byte range"));

        case 3: // '\003'
            return new BasicHttpResponse(new BasicStatusLine(HttpVersion.HTTP_1_1, 400, "Weak eTag not compatible with PUT or DELETE requests"));

        case 4: // '\004'
            return new BasicHttpResponse(new BasicStatusLine(HttpVersion.HTTP_1_1, 400, "No-Cache directive MUST NOT include a field name"));
        }
    }

    public HttpRequest makeRequestCompliant(HttpRequest httprequest)
    {
        if (requestMustNotHaveEntity(httprequest))
        {
            ((HttpEntityEnclosingRequest)httprequest).setEntity(null);
        }
        verifyRequestWithExpectContinueFlagHas100continueHeader(httprequest);
        verifyOPTIONSRequestWithBodyHasContentType(httprequest);
        decrementOPTIONSMaxForwardsIfGreaterThen0(httprequest);
        stripOtherFreshnessDirectivesWithNoCache(httprequest);
        if (requestVersionIsTooLow(httprequest))
        {
            httprequest = upgradeRequestTo(httprequest, HttpVersion.HTTP_1_1);
        } else
        if (requestMinorVersionIsTooHighMajorVersionsMatch(httprequest))
        {
            return downgradeRequestTo(httprequest, HttpVersion.HTTP_1_1);
        }
        return httprequest;
    }

    public List requestIsFatallyNonCompliant(HttpRequest httprequest)
    {
        ArrayList arraylist = new ArrayList();
        RequestProtocolError requestprotocolerror = requestHasWeakETagAndRange(httprequest);
        if (requestprotocolerror != null)
        {
            arraylist.add(requestprotocolerror);
        }
        RequestProtocolError requestprotocolerror1 = requestHasWeekETagForPUTOrDELETEIfMatch(httprequest);
        if (requestprotocolerror1 != null)
        {
            arraylist.add(requestprotocolerror1);
        }
        RequestProtocolError requestprotocolerror2 = requestContainsNoCacheDirectiveWithFieldName(httprequest);
        if (requestprotocolerror2 != null)
        {
            arraylist.add(requestprotocolerror2);
        }
        return arraylist;
    }

    protected boolean requestMinorVersionIsTooHighMajorVersionsMatch(HttpRequest httprequest)
    {
        for (ProtocolVersion protocolversion = httprequest.getProtocolVersion(); protocolversion.getMajor() != HttpVersion.HTTP_1_1.getMajor() || protocolversion.getMinor() <= HttpVersion.HTTP_1_1.getMinor();)
        {
            return false;
        }

        return true;
    }

    protected boolean requestVersionIsTooLow(HttpRequest httprequest)
    {
        return httprequest.getProtocolVersion().compareToVersion(HttpVersion.HTTP_1_1) < 0;
    }


    private class _cls1
    {

        static final int $SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError[];

        static 
        {
            $SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError = new int[RequestProtocolError.values().length];
            try
            {
                $SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError[RequestProtocolError.BODY_BUT_NO_LENGTH_ERROR.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError[RequestProtocolError.WEAK_ETAG_AND_RANGE_ERROR.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError[RequestProtocolError.WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError[RequestProtocolError.NO_CACHE_DIRECTIVE_WITH_FIELD_NAME.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3)
            {
                return;
            }
        }
    }

}
