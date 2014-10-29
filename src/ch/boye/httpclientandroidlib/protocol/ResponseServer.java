// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.protocol;

import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import ch.boye.httpclientandroidlib.params.HttpParams;

// Referenced classes of package ch.boye.httpclientandroidlib.protocol:
//            HttpContext

public class ResponseServer
    implements HttpResponseInterceptor
{

    public ResponseServer()
    {
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (!httpresponse.containsHeader("Server"))
        {
            String s = (String)httpresponse.getParams().getParameter("http.origin-server");
            if (s != null)
            {
                httpresponse.addHeader("Server", s);
            }
        }
    }
}
