// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList, HttpContext

public final class ImmutableHttpProcessor
    implements HttpProcessor
{

    private final HttpRequestInterceptor requestInterceptors[];
    private final HttpResponseInterceptor responseInterceptors[];

    public ImmutableHttpProcessor(HttpRequestInterceptorList httprequestinterceptorlist, HttpResponseInterceptorList httpresponseinterceptorlist)
    {
        int i = 0;
        super();
        if (httprequestinterceptorlist != null)
        {
            int k = httprequestinterceptorlist.getRequestInterceptorCount();
            requestInterceptors = new HttpRequestInterceptor[k];
            for (int l = 0; l < k; l++)
            {
                requestInterceptors[l] = httprequestinterceptorlist.getRequestInterceptor(l);
            }

        } else
        {
            requestInterceptors = new HttpRequestInterceptor[0];
        }
        if (httpresponseinterceptorlist != null)
        {
            int j = httpresponseinterceptorlist.getResponseInterceptorCount();
            responseInterceptors = new HttpResponseInterceptor[j];
            for (; i < j; i++)
            {
                responseInterceptors[i] = httpresponseinterceptorlist.getResponseInterceptor(i);
            }

        } else
        {
            responseInterceptors = new HttpResponseInterceptor[0];
        }
    }

    public ImmutableHttpProcessor(HttpRequestInterceptor ahttprequestinterceptor[])
    {
        this(ahttprequestinterceptor, ((HttpResponseInterceptor []) (null)));
    }

    public ImmutableHttpProcessor(HttpRequestInterceptor ahttprequestinterceptor[], HttpResponseInterceptor ahttpresponseinterceptor[])
    {
        int i = 0;
        super();
        if (ahttprequestinterceptor != null)
        {
            int k = ahttprequestinterceptor.length;
            requestInterceptors = new HttpRequestInterceptor[k];
            for (int l = 0; l < k; l++)
            {
                requestInterceptors[l] = ahttprequestinterceptor[l];
            }

        } else
        {
            requestInterceptors = new HttpRequestInterceptor[0];
        }
        if (ahttpresponseinterceptor != null)
        {
            int j = ahttpresponseinterceptor.length;
            responseInterceptors = new HttpResponseInterceptor[j];
            for (; i < j; i++)
            {
                responseInterceptors[i] = ahttpresponseinterceptor[i];
            }

        } else
        {
            responseInterceptors = new HttpResponseInterceptor[0];
        }
    }

    public ImmutableHttpProcessor(HttpResponseInterceptor ahttpresponseinterceptor[])
    {
        this(((HttpRequestInterceptor []) (null)), ahttpresponseinterceptor);
    }

    public final void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        for (int i = 0; i < requestInterceptors.length; i++)
        {
            requestInterceptors[i].process(httprequest, httpcontext);
        }

    }

    public final void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        for (int i = 0; i < responseInterceptors.length; i++)
        {
            responseInterceptors[i].process(httpresponse, httpcontext);
        }

    }
}
