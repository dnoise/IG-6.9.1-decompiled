// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.protocol;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.CookieStore;
import ch.boye.httpclientandroidlib.client.methods.HttpUriRequest;
import ch.boye.httpclientandroidlib.client.params.HttpClientParams;
import ch.boye.httpclientandroidlib.conn.HttpRoutedConnection;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.CookieSpec;
import ch.boye.httpclientandroidlib.cookie.CookieSpecRegistry;
import ch.boye.httpclientandroidlib.cookie.SetCookie2;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class RequestAddCookies
    implements HttpRequestInterceptor
{

    public HttpClientAndroidLog log;

    public RequestAddCookies()
    {
        log = new HttpClientAndroidLog(getClass());
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        if (httprequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT"))
        {
            return;
        }
        CookieStore cookiestore = (CookieStore)httpcontext.getAttribute("http.cookie-store");
        if (cookiestore == null)
        {
            log.debug("Cookie store not specified in HTTP context");
            return;
        }
        CookieSpecRegistry cookiespecregistry = (CookieSpecRegistry)httpcontext.getAttribute("http.cookiespec-registry");
        if (cookiespecregistry == null)
        {
            log.debug("CookieSpec registry not specified in HTTP context");
            return;
        }
        HttpHost httphost = (HttpHost)httpcontext.getAttribute("http.target_host");
        if (httphost == null)
        {
            log.debug("Target host not set in the context");
            return;
        }
        HttpRoutedConnection httproutedconnection = (HttpRoutedConnection)httpcontext.getAttribute("http.connection");
        if (httproutedconnection == null)
        {
            log.debug("HTTP connection not set in the context");
            return;
        }
        String s = HttpClientParams.getCookiePolicy(httprequest.getParams());
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("CookieSpec selected: ")).append(s).toString());
        }
        URI uri;
        String s1;
        int i;
        int j;
        CookieOrigin cookieorigin;
        CookieSpec cookiespec;
        ArrayList arraylist;
        ArrayList arraylist1;
        Date date;
        Iterator iterator;
        if (httprequest instanceof HttpUriRequest)
        {
            uri = ((HttpUriRequest)httprequest).getURI();
        } else
        {
            try
            {
                uri = new URI(httprequest.getRequestLine().getUri());
            }
            catch (URISyntaxException urisyntaxexception)
            {
                throw new ProtocolException((new StringBuilder("Invalid request URI: ")).append(httprequest.getRequestLine().getUri()).toString(), urisyntaxexception);
            }
        }
        s1 = httphost.getHostName();
        i = httphost.getPort();
        int k;
        if (i < 0)
        {
            if (httproutedconnection.getRoute().getHopCount() == 1)
            {
                j = httproutedconnection.getRemotePort();
            } else
            {
                String s2 = httphost.getSchemeName();
                if (s2.equalsIgnoreCase("http"))
                {
                    j = 80;
                } else
                if (s2.equalsIgnoreCase("https"))
                {
                    j = 443;
                } else
                {
                    j = 0;
                }
            }
        } else
        {
            j = i;
        }
        cookieorigin = new CookieOrigin(s1, j, uri.getPath(), httproutedconnection.isSecure());
        cookiespec = cookiespecregistry.getCookieSpec(s, httprequest.getParams());
        arraylist = new ArrayList(cookiestore.getCookies());
        arraylist1 = new ArrayList();
        date = new Date();
        iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Cookie cookie1 = (Cookie)iterator.next();
            if (!cookie1.isExpired(date))
            {
                if (cookiespec.match(cookie1, cookieorigin))
                {
                    if (log.isDebugEnabled())
                    {
                        log.debug((new StringBuilder("Cookie ")).append(cookie1).append(" match ").append(cookieorigin).toString());
                    }
                    arraylist1.add(cookie1);
                }
            } else
            if (log.isDebugEnabled())
            {
                log.debug((new StringBuilder("Cookie ")).append(cookie1).append(" expired").toString());
            }
        } while (true);
        if (!arraylist1.isEmpty())
        {
            for (Iterator iterator2 = cookiespec.formatCookies(arraylist1).iterator(); iterator2.hasNext(); httprequest.addHeader((Header)iterator2.next())) { }
        }
        k = cookiespec.getVersion();
        if (k > 0)
        {
            Iterator iterator1 = arraylist1.iterator();
            boolean flag = false;
            while (iterator1.hasNext()) 
            {
                Cookie cookie = (Cookie)iterator1.next();
                Header header;
                boolean flag1;
                if (k != cookie.getVersion() || !(cookie instanceof SetCookie2))
                {
                    flag1 = true;
                } else
                {
                    flag1 = flag;
                }
                flag = flag1;
            }
            if (flag)
            {
                header = cookiespec.getVersionHeader();
                if (header != null)
                {
                    httprequest.addHeader(header);
                }
            }
        }
        httpcontext.setAttribute("http.cookie-spec", cookiespec);
        httpcontext.setAttribute("http.cookie-origin", cookieorigin);
    }
}
