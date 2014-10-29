// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.impl.client.RequestWrapper;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class ConditionalRequestBuilder
{

    private static final HttpClientAndroidLog log = new HttpClientAndroidLog(ch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder);

    ConditionalRequestBuilder()
    {
    }

    public HttpRequest buildConditionalRequest(HttpRequest httprequest, HttpCacheEntry httpcacheentry)
    {
        RequestWrapper requestwrapper = new RequestWrapper(httprequest);
        requestwrapper.resetHeaders();
        Header header = httpcacheentry.getFirstHeader("ETag");
        if (header != null)
        {
            requestwrapper.setHeader("If-None-Match", header.getValue());
        }
        Header header1 = httpcacheentry.getFirstHeader("Last-Modified");
        if (header1 != null)
        {
            requestwrapper.setHeader("If-Modified-Since", header1.getValue());
        }
        Header aheader[] = httpcacheentry.getHeaders("Cache-Control");
        int i = aheader.length;
        int j = 0;
        boolean flag = false;
label0:
        do
        {
            if (j < i)
            {
                HeaderElement aheaderelement[] = aheader[j].getElements();
                int k = aheaderelement.length;
                int l = 0;
                do
                {
label1:
                    {
                        if (l < k)
                        {
                            HeaderElement headerelement = aheaderelement[l];
                            if (!"must-revalidate".equalsIgnoreCase(headerelement.getName()) && !"proxy-revalidate".equalsIgnoreCase(headerelement.getName()))
                            {
                                break label1;
                            }
                            flag = true;
                        }
                        j++;
                        continue label0;
                    }
                    l++;
                } while (true);
            }
            if (flag)
            {
                requestwrapper.addHeader("Cache-Control", "max-age=0");
            }
            return requestwrapper;
        } while (true);
    }

    public HttpRequest buildConditionalRequestFromVariants(HttpRequest httprequest, Map map)
    {
        RequestWrapper requestwrapper;
        StringBuilder stringbuilder;
        Iterator iterator;
        try
        {
            requestwrapper = new RequestWrapper(httprequest);
        }
        catch (ProtocolException protocolexception)
        {
            log.warn("unable to build conditional request", protocolexception);
            return httprequest;
        }
        requestwrapper.resetHeaders();
        stringbuilder = new StringBuilder();
        iterator = map.keySet().iterator();
        for (boolean flag = true; iterator.hasNext(); flag = false)
        {
            String s = (String)iterator.next();
            if (!flag)
            {
                stringbuilder.append(",");
            }
            stringbuilder.append(s);
        }

        requestwrapper.setHeader("If-None-Match", stringbuilder.toString());
        return requestwrapper;
    }

    public HttpRequest buildUnconditionalRequest(HttpRequest httprequest, HttpCacheEntry httpcacheentry)
    {
        RequestWrapper requestwrapper;
        try
        {
            requestwrapper = new RequestWrapper(httprequest);
        }
        catch (ProtocolException protocolexception)
        {
            log.warn("unable to build proper unconditional request", protocolexception);
            return httprequest;
        }
        requestwrapper.resetHeaders();
        requestwrapper.addHeader("Cache-Control", "no-cache");
        requestwrapper.addHeader("Pragma", "no-cache");
        requestwrapper.removeHeaders("If-Range");
        requestwrapper.removeHeaders("If-Match");
        requestwrapper.removeHeaders("If-None-Match");
        requestwrapper.removeHeaders("If-Unmodified-Since");
        requestwrapper.removeHeaders("If-Modified-Since");
        return requestwrapper;
    }

}
