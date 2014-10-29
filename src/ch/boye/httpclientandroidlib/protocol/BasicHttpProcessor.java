// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList, HttpContext

public final class BasicHttpProcessor
    implements HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList, Cloneable
{

    protected final List requestInterceptors = new ArrayList();
    protected final List responseInterceptors = new ArrayList();

    public BasicHttpProcessor()
    {
    }

    public final void addInterceptor(HttpRequestInterceptor httprequestinterceptor)
    {
        addRequestInterceptor(httprequestinterceptor);
    }

    public final void addInterceptor(HttpRequestInterceptor httprequestinterceptor, int i)
    {
        addRequestInterceptor(httprequestinterceptor, i);
    }

    public final void addInterceptor(HttpResponseInterceptor httpresponseinterceptor)
    {
        addResponseInterceptor(httpresponseinterceptor);
    }

    public final void addInterceptor(HttpResponseInterceptor httpresponseinterceptor, int i)
    {
        addResponseInterceptor(httpresponseinterceptor, i);
    }

    public final void addRequestInterceptor(HttpRequestInterceptor httprequestinterceptor)
    {
        if (httprequestinterceptor == null)
        {
            return;
        } else
        {
            requestInterceptors.add(httprequestinterceptor);
            return;
        }
    }

    public final void addRequestInterceptor(HttpRequestInterceptor httprequestinterceptor, int i)
    {
        if (httprequestinterceptor == null)
        {
            return;
        } else
        {
            requestInterceptors.add(i, httprequestinterceptor);
            return;
        }
    }

    public final void addResponseInterceptor(HttpResponseInterceptor httpresponseinterceptor)
    {
        if (httpresponseinterceptor == null)
        {
            return;
        } else
        {
            responseInterceptors.add(httpresponseinterceptor);
            return;
        }
    }

    public final void addResponseInterceptor(HttpResponseInterceptor httpresponseinterceptor, int i)
    {
        if (httpresponseinterceptor == null)
        {
            return;
        } else
        {
            responseInterceptors.add(i, httpresponseinterceptor);
            return;
        }
    }

    public final void clearInterceptors()
    {
        clearRequestInterceptors();
        clearResponseInterceptors();
    }

    public final void clearRequestInterceptors()
    {
        requestInterceptors.clear();
    }

    public final void clearResponseInterceptors()
    {
        responseInterceptors.clear();
    }

    public final Object clone()
    {
        BasicHttpProcessor basichttpprocessor = (BasicHttpProcessor)super.clone();
        copyInterceptors(basichttpprocessor);
        return basichttpprocessor;
    }

    public final BasicHttpProcessor copy()
    {
        BasicHttpProcessor basichttpprocessor = new BasicHttpProcessor();
        copyInterceptors(basichttpprocessor);
        return basichttpprocessor;
    }

    protected final void copyInterceptors(BasicHttpProcessor basichttpprocessor)
    {
        basichttpprocessor.requestInterceptors.clear();
        basichttpprocessor.requestInterceptors.addAll(requestInterceptors);
        basichttpprocessor.responseInterceptors.clear();
        basichttpprocessor.responseInterceptors.addAll(responseInterceptors);
    }

    public final HttpRequestInterceptor getRequestInterceptor(int i)
    {
        if (i < 0 || i >= requestInterceptors.size())
        {
            return null;
        } else
        {
            return (HttpRequestInterceptor)requestInterceptors.get(i);
        }
    }

    public final int getRequestInterceptorCount()
    {
        return requestInterceptors.size();
    }

    public final HttpResponseInterceptor getResponseInterceptor(int i)
    {
        if (i < 0 || i >= responseInterceptors.size())
        {
            return null;
        } else
        {
            return (HttpResponseInterceptor)responseInterceptors.get(i);
        }
    }

    public final int getResponseInterceptorCount()
    {
        return responseInterceptors.size();
    }

    public final void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        for (int i = 0; i < requestInterceptors.size(); i++)
        {
            ((HttpRequestInterceptor)requestInterceptors.get(i)).process(httprequest, httpcontext);
        }

    }

    public final void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        for (int i = 0; i < responseInterceptors.size(); i++)
        {
            ((HttpResponseInterceptor)responseInterceptors.get(i)).process(httpresponse, httpcontext);
        }

    }

    public final void removeRequestInterceptorByClass(Class class1)
    {
        Iterator iterator = requestInterceptors.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (iterator.next().getClass().equals(class1))
            {
                iterator.remove();
            }
        } while (true);
    }

    public final void removeResponseInterceptorByClass(Class class1)
    {
        Iterator iterator = responseInterceptors.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (iterator.next().getClass().equals(class1))
            {
                iterator.remove();
            }
        } while (true);
    }

    public final void setInterceptors(List list)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("List must not be null.");
        }
        requestInterceptors.clear();
        responseInterceptors.clear();
        for (int i = 0; i < list.size(); i++)
        {
            Object obj = list.get(i);
            if (obj instanceof HttpRequestInterceptor)
            {
                addInterceptor((HttpRequestInterceptor)obj);
            }
            if (obj instanceof HttpResponseInterceptor)
            {
                addInterceptor((HttpResponseInterceptor)obj);
            }
        }

    }
}
