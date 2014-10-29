// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpEntityEnclosingRequest;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.client.ClientProtocolException;
import ch.boye.httpclientandroidlib.impl.client.RequestWrapper;
import ch.boye.httpclientandroidlib.impl.cookie.DateParseException;
import ch.boye.httpclientandroidlib.impl.cookie.DateUtils;
import ch.boye.httpclientandroidlib.message.BasicHeader;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            WarningValue

class ResponseProtocolCompliance
{

    private static final String UNEXPECTED_100_CONTINUE = "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue.";
    private static final String UNEXPECTED_PARTIAL_CONTENT = "partial content was returned for a request that did not ask for it";

    ResponseProtocolCompliance()
    {
    }

    private boolean backendResponseMustNotHaveBody(HttpRequest httprequest, HttpResponse httpresponse)
    {
        return "HEAD".equals(httprequest.getRequestLine().getMethod()) || httpresponse.getStatusLine().getStatusCode() == 204 || httpresponse.getStatusLine().getStatusCode() == 205 || httpresponse.getStatusLine().getStatusCode() == 304;
    }

    private void consumeBody(HttpResponse httpresponse)
    {
        ch.boye.httpclientandroidlib.HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity != null)
        {
            EntityUtils.consume(httpentity);
        }
    }

    private void ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(HttpRequest httprequest, HttpResponse httpresponse)
    {
        while (!httprequest.getRequestLine().getMethod().equalsIgnoreCase("OPTIONS") || httpresponse.getStatusLine().getStatusCode() != 200 || httpresponse.getFirstHeader("Content-Length") != null) 
        {
            return;
        }
        httpresponse.addHeader("Content-Length", "0");
    }

    private void ensure206ContainsDateHeader(HttpResponse httpresponse)
    {
        if (httpresponse.getFirstHeader("Date") == null)
        {
            httpresponse.addHeader("Date", DateUtils.formatDate(new Date()));
        }
    }

    private void ensure304DoesNotContainExtraEntityHeaders(HttpResponse httpresponse)
    {
        String as[] = {
            "Allow", "Content-Encoding", "Content-Language", "Content-Length", "Content-MD5", "Content-Range", "Content-Type", "Last-Modified"
        };
        int i = httpresponse.getStatusLine().getStatusCode();
        int j = 0;
        if (i == 304)
        {
            for (; j < 8; j++)
            {
                httpresponse.removeHeaders(as[j]);
            }

        }
    }

    private void ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(HttpRequest httprequest, HttpResponse httpresponse)
    {
        if (httprequest.getFirstHeader("Range") != null || httpresponse.getStatusLine().getStatusCode() != 206)
        {
            return;
        } else
        {
            consumeBody(httpresponse);
            throw new ClientProtocolException("partial content was returned for a request that did not ask for it");
        }
    }

    private ProtocolVersion getOriginalRequestProtocol(RequestWrapper requestwrapper)
    {
        return requestwrapper.getOriginal().getProtocolVersion();
    }

    private void identityIsNotUsedInContentEncoding(HttpResponse httpresponse)
    {
        Header aheader[] = httpresponse.getHeaders("Content-Encoding");
        if (aheader != null && aheader.length != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ArrayList arraylist = new ArrayList();
        boolean flag = false;
        int i = aheader.length;
        for (int j = 0; j < i;)
        {
            Header header = aheader[j];
            StringBuilder stringbuilder = new StringBuilder();
            HeaderElement aheaderelement[] = header.getElements();
            int k = aheaderelement.length;
            boolean flag1 = true;
            boolean flag2 = flag;
            int l = 0;
            while (l < k) 
            {
                HeaderElement headerelement = aheaderelement[l];
                if ("identity".equalsIgnoreCase(headerelement.getName()))
                {
                    flag2 = true;
                } else
                {
                    if (!flag1)
                    {
                        stringbuilder.append(",");
                    }
                    stringbuilder.append(headerelement.toString());
                    flag1 = false;
                }
                l++;
            }
            String s = stringbuilder.toString();
            if (!"".equals(s))
            {
                arraylist.add(new BasicHeader("Content-Encoding", s));
            }
            j++;
            flag = flag2;
        }

        if (flag)
        {
            httpresponse.removeHeaders("Content-Encoding");
            Iterator iterator = arraylist.iterator();
            while (iterator.hasNext()) 
            {
                httpresponse.addHeader((Header)iterator.next());
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void removeResponseTransferEncoding(HttpResponse httpresponse)
    {
        httpresponse.removeHeaders("TE");
        httpresponse.removeHeaders("Transfer-Encoding");
    }

    private void requestDidNotExpect100ContinueButResponseIsOne(HttpRequest httprequest, HttpResponse httpresponse)
    {
        if (httpresponse.getStatusLine().getStatusCode() == 100)
        {
            HttpRequest httprequest1;
            if (requestWasWrapped(httprequest))
            {
                httprequest1 = ((RequestWrapper)httprequest).getOriginal();
            } else
            {
                httprequest1 = httprequest;
            }
            if (!(httprequest1 instanceof HttpEntityEnclosingRequest) || !((HttpEntityEnclosingRequest)httprequest1).expectContinue())
            {
                consumeBody(httpresponse);
                throw new ClientProtocolException("The incoming request did not contain a 100-continue header, but the response was a Status 100, continue.");
            }
        }
    }

    private boolean requestWasWrapped(HttpRequest httprequest)
    {
        return httprequest instanceof RequestWrapper;
    }

    private void transferEncodingIsNotReturnedTo1_0Client(HttpRequest httprequest, HttpResponse httpresponse)
    {
        while (!requestWasWrapped(httprequest) || getOriginalRequestProtocol((RequestWrapper)httprequest).compareToVersion(HttpVersion.HTTP_1_1) >= 0) 
        {
            return;
        }
        removeResponseTransferEncoding(httpresponse);
    }

    private void warningsWithNonMatchingWarnDatesAreRemoved(HttpResponse httpresponse)
    {
        Date date2 = DateUtils.parseDate(httpresponse.getFirstHeader("Date").getValue());
        Date date = date2;
_L1:
        DateParseException dateparseexception;
        Header aheader[];
        if (date != null)
        {
            if ((aheader = httpresponse.getHeaders("Warning")) != null && aheader.length != 0)
            {
                ArrayList arraylist = new ArrayList();
                int i = aheader.length;
                int j = 0;
                boolean flag = false;
                for (; j < i; j++)
                {
                    WarningValue awarningvalue[] = WarningValue.getWarningValues(aheader[j]);
                    int k = awarningvalue.length;
                    int l = 0;
                    while (l < k) 
                    {
                        WarningValue warningvalue = awarningvalue[l];
                        Date date1 = warningvalue.getWarnDate();
                        if (date1 == null || date1.equals(date))
                        {
                            arraylist.add(new BasicHeader("Warning", warningvalue.toString()));
                        } else
                        {
                            flag = true;
                        }
                        l++;
                    }
                }

                if (flag)
                {
                    httpresponse.removeHeaders("Warning");
                    Iterator iterator = arraylist.iterator();
                    while (iterator.hasNext()) 
                    {
                        httpresponse.addHeader((Header)iterator.next());
                    }
                }
            }
        }
        return;
        dateparseexception;
        date = null;
          goto _L1
    }

    public void ensureProtocolCompliance(HttpRequest httprequest, HttpResponse httpresponse)
    {
        if (backendResponseMustNotHaveBody(httprequest, httpresponse))
        {
            consumeBody(httpresponse);
            httpresponse.setEntity(null);
        }
        requestDidNotExpect100ContinueButResponseIsOne(httprequest, httpresponse);
        transferEncodingIsNotReturnedTo1_0Client(httprequest, httpresponse);
        ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(httprequest, httpresponse);
        ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(httprequest, httpresponse);
        ensure206ContainsDateHeader(httpresponse);
        ensure304DoesNotContainExtraEntityHeaders(httpresponse);
        identityIsNotUsedInContentEncoding(httpresponse);
        warningsWithNonMatchingWarnDatesAreRemoved(httpresponse);
    }
}
