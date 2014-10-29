// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.CircularRedirectException;
import ch.boye.httpclientandroidlib.client.RedirectStrategy;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.client.methods.HttpHead;
import ch.boye.httpclientandroidlib.client.methods.HttpUriRequest;
import ch.boye.httpclientandroidlib.client.utils.URIUtils;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.net.URI;
import java.net.URISyntaxException;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client:
//            RedirectLocations

public class DefaultRedirectStrategy
    implements RedirectStrategy
{

    public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    public HttpClientAndroidLog log;

    public DefaultRedirectStrategy()
    {
        log = new HttpClientAndroidLog(getClass());
    }

    protected URI createLocationURI(String s)
    {
        URI uri;
        try
        {
            uri = new URI(s);
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new ProtocolException((new StringBuilder("Invalid redirect URI: ")).append(s).toString(), urisyntaxexception);
        }
        return uri;
    }

    public URI getLocationURI(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        Header header = httpresponse.getFirstHeader("location");
        if (header == null)
        {
            throw new ProtocolException((new StringBuilder("Received redirect response ")).append(httpresponse.getStatusLine()).append(" but no location header").toString());
        }
        String s = header.getValue();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Redirect requested to location '")).append(s).append("'").toString());
        }
        URI uri = createLocationURI(s);
        HttpParams httpparams = httpresponse.getParams();
        if (!uri.isAbsolute())
        {
            if (httpparams.isParameterTrue("http.protocol.reject-relative-redirect"))
            {
                throw new ProtocolException((new StringBuilder("Relative redirect location '")).append(uri).append("' not allowed").toString());
            }
            HttpHost httphost = (HttpHost)httpcontext.getAttribute("http.target_host");
            if (httphost == null)
            {
                throw new IllegalStateException("Target host not available in the HTTP context");
            }
            URI uri2;
            URI uri3;
            try
            {
                uri3 = URIUtils.resolve(URIUtils.rewriteURI(new URI(httprequest.getRequestLine().getUri()), httphost, true), uri);
            }
            catch (URISyntaxException urisyntaxexception1)
            {
                throw new ProtocolException(urisyntaxexception1.getMessage(), urisyntaxexception1);
            }
            uri = uri3;
        }
        if (httpparams.isParameterFalse("http.protocol.allow-circular-redirects"))
        {
            RedirectLocations redirectlocations = (RedirectLocations)httpcontext.getAttribute("http.protocol.redirect-locations");
            if (redirectlocations == null)
            {
                redirectlocations = new RedirectLocations();
                httpcontext.setAttribute("http.protocol.redirect-locations", redirectlocations);
            }
            URI uri1;
            if (uri.getFragment() != null)
            {
                try
                {
                    uri2 = URIUtils.rewriteURI(uri, new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme()), true);
                }
                catch (URISyntaxException urisyntaxexception)
                {
                    throw new ProtocolException(urisyntaxexception.getMessage(), urisyntaxexception);
                }
                uri1 = uri2;
            } else
            {
                uri1 = uri;
            }
            if (redirectlocations.contains(uri1))
            {
                throw new CircularRedirectException((new StringBuilder("Circular redirect to '")).append(uri1).append("'").toString());
            }
            redirectlocations.add(uri1);
        }
        return uri;
    }

    public HttpUriRequest getRedirect(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
    {
        URI uri = getLocationURI(httprequest, httpresponse, httpcontext);
        if (httprequest.getRequestLine().getMethod().equalsIgnoreCase("HEAD"))
        {
            return new HttpHead(uri);
        } else
        {
            return new HttpGet(uri);
        }
    }

    public boolean isRedirected(HttpRequest httprequest, HttpResponse httpresponse, HttpContext httpcontext)
    {
        int i;
        String s;
        Header header;
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        i = httpresponse.getStatusLine().getStatusCode();
        s = httprequest.getRequestLine().getMethod();
        header = httpresponse.getFirstHeader("location");
        i;
        JVM INSTR tableswitch 301 307: default 96
    //                   301 125
    //                   302 98
    //                   303 147
    //                   304 96
    //                   305 96
    //                   306 96
    //                   307 125;
           goto _L1 _L2 _L3 _L4 _L1 _L1 _L1 _L2
_L1:
        return false;
_L3:
        if ((s.equalsIgnoreCase("GET") || s.equalsIgnoreCase("HEAD")) && header != null)
        {
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (s.equalsIgnoreCase("GET") || s.equalsIgnoreCase("HEAD"))
        {
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
        return true;
    }
}
